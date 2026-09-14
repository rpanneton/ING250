#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Convertit les notes de cours HTML de Windows-1252 vers UTF-8.

Le programme parcourt un répertoire et tous ses sous-répertoires, puis, pour
chaque fichier « .htm » et « .html » :

  1. il remplace la déclaration « charset=windows-1252 » (ou tout autre jeu de
     caractères déclaré : iso-8859-1, cp1252, etc.) par « charset=utf-8 » dans
     les balises <meta> de l'en-tête;
  2. il réenregistre le fichier en UTF-8 (sans BOM), à la même place et sous le
     même nom, afin de ne pas modifier la structure du répertoire.

Le répertoire de départ se choisit dans une fenêtre de sélection (tkinter). On
peut aussi le passer directement en argument sur la ligne de commande.

Exemples :
    python3 convertir_html_utf8.py                      # fenêtre de sélection
    python3 convertir_html_utf8.py ~/Documents/ING250   # répertoire imposé
    python3 convertir_html_utf8.py ING250 --simulation  # essai sans écriture
    python3 convertir_html_utf8.py ING250 --sauvegarde  # copies .bak
"""

from __future__ import annotations

import argparse
import codecs
import os
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path

EXTENSIONS = {".htm", ".html"}

# Répertoires à ne jamais parcourir (dépôts, caches, environnements virtuels).
REPERTOIRES_IGNORES = {
    ".git", ".svn", ".hg", ".idea", ".vscode",
    "__pycache__", "node_modules", ".venv", "venv",
}

# Marques d'ordre des octets (BOM) reconnues : préfixe -> codec.
NOMENCLATURES = (
    (codecs.BOM_UTF8, "utf-8-sig"),
    (codecs.BOM_UTF32_LE, "utf-32"),
    (codecs.BOM_UTF32_BE, "utf-32"),
    (codecs.BOM_UTF16_LE, "utf-16"),
    (codecs.BOM_UTF16_BE, "utf-16"),
)

# <meta charset="windows-1252"> ou <meta http-equiv=... content="...; charset=windows-1252">
MOTIF_CHARSET = re.compile(
    r"(?is)(<meta\b[^>]*?charset\s*=\s*[\"']?)([A-Za-z0-9_.:+-]+)"
)
# Prologue XHTML : <?xml version="1.0" encoding="windows-1252"?>
MOTIF_XML = re.compile(
    r"(?is)(<\?xml\b[^>]*?encoding\s*=\s*[\"'])([A-Za-z0-9_.:+-]+)"
)
MOTIF_HEAD = re.compile(r"(?is)<head\b[^>]*>")
MOTIF_HTML = re.compile(r"(?is)<html\b[^>]*>")

ALIAS_UTF8 = {"utf-8", "utf8", "utf_8", "unicode-1-1-utf-8"}


def _repli_latin1(erreur: UnicodeDecodeError):
    """Octets non définis en cp1252 (0x81, 0x8D, 0x8F, 0x90, 0x9D) : repli latin-1.

    Le repli est appliqué octet par octet, ce qui évite de relire tout le
    fichier en latin-1 et de fausser les caractères de la plage 0x80-0x9F
    (apostrophes typographiques, points de suspension, tirets longs...).
    """
    octets = bytes(erreur.object[erreur.start:erreur.end])
    return octets.decode("latin-1"), erreur.end


codecs.register_error("repli_latin1", _repli_latin1)


@dataclass
class Bilan:
    """Compteurs et journaux de l'exécution."""
    convertis: list = field(default_factory=list)      # réencodés en UTF-8
    declarations: list = field(default_factory=list)   # déclaration corrigée seulement
    metas_ajoutes: list = field(default_factory=list)  # <meta charset> inséré
    inchanges: int = 0
    sans_declaration: list = field(default_factory=list)  # ni <head> ni <html>
    ignores: list = field(default_factory=list)
    erreurs: list = field(default_factory=list)

    @property
    def modifies(self) -> int:
        return len(
            set(self.convertis) | set(self.declarations) | set(self.metas_ajoutes)
        )


def decoder(donnees: bytes) -> tuple[str, str, bool]:
    """Retourne (texte, encodage d'origine, présence d'un BOM UTF-8).

    Un fichier déjà en UTF-8 avec BOM garde son BOM à la réécriture : il
    s'affiche correctement tel quel, inutile de le modifier.
    """
    if donnees.startswith(codecs.BOM_UTF8):
        return donnees.decode("utf-8-sig"), "utf-8", True
    for bom, codec in NOMENCLATURES[1:]:
        if donnees.startswith(bom):
            return donnees.decode(codec), codec, False
    try:
        # L'UTF-8 valide est très peu susceptible d'être autre chose que de
        # l'UTF-8 : on le prend tel quel.
        return donnees.decode("utf-8"), "utf-8", False
    except UnicodeDecodeError:
        pass
    return donnees.decode("cp1252", errors="repli_latin1"), "windows-1252", False


def corriger_declarations(texte: str) -> tuple[str, list[str]]:
    """Force « utf-8 » dans les <meta ... charset=...> et le prologue XML."""
    remplaces: list[str] = []

    def _remplacer(correspondance: re.Match) -> str:
        valeur = correspondance.group(2)
        if valeur.lower() in ALIAS_UTF8:
            return correspondance.group(0)
        remplaces.append(valeur)
        return correspondance.group(1) + "utf-8"

    texte = MOTIF_CHARSET.sub(_remplacer, texte)
    texte = MOTIF_XML.sub(_remplacer, texte)
    return texte, remplaces


def inserer_meta(texte: str) -> tuple[str, bool]:
    """Ajoute <meta charset="utf-8"> quand le fichier n'en déclare aucun.

    L'insertion n'a lieu que si le fichier possède une balise <head> ou
    <html> : certains fichiers portant l'extension .htm ne sont en réalité
    que des fragments (JavaScript, morceau de tableau...) qu'une balise
    <meta> viendrait corrompre.
    """
    if MOTIF_CHARSET.search(texte):
        return texte, False
    balise = '<meta charset="utf-8">'
    entete = MOTIF_HEAD.search(texte)
    if entete:
        position = entete.end()
        return texte[:position] + "\n" + balise + texte[position:], True
    html = MOTIF_HTML.search(texte)
    if html:
        position = html.end()
        return texte[:position] + "\n<head>\n" + balise + "\n</head>" + texte[position:], True
    return texte, False


def est_a_traiter(chemin: Path) -> bool:
    if chemin.suffix.lower() not in EXTENSIONS:
        return False
    if chemin.name.startswith("~$"):  # fichiers verrous de Word
        return False
    return True


def repertorier(racine: Path) -> list[Path]:
    """Liste les .htm et .html de la racine et de tous ses sous-répertoires."""
    trouves: list[Path] = []
    for dossier, sous_dossiers, fichiers in os.walk(racine):
        sous_dossiers[:] = sorted(
            d for d in sous_dossiers if d not in REPERTOIRES_IGNORES
        )
        for nom in sorted(fichiers):
            chemin = Path(dossier) / nom
            if est_a_traiter(chemin):
                trouves.append(chemin)
    return trouves


def traiter_fichier(chemin: Path, racine: Path, bilan: Bilan, options) -> None:
    relatif = chemin.relative_to(racine)
    try:
        origine = chemin.read_bytes()
    except OSError as erreur:
        bilan.erreurs.append(f"{relatif} : lecture impossible ({erreur})")
        return

    if b"\x00" in origine and not any(
        origine.startswith(bom) for bom, _ in NOMENCLATURES
    ):
        bilan.ignores.append(f"{relatif} : contenu binaire")
        return

    try:
        texte, encodage, bom = decoder(origine)
    except (UnicodeDecodeError, LookupError) as erreur:
        bilan.erreurs.append(f"{relatif} : décodage impossible ({erreur})")
        return

    texte, remplaces = corriger_declarations(texte)
    meta_ajoute = False
    if options.inserer_meta:
        texte, meta_ajoute = inserer_meta(texte)
        if not meta_ajoute and not MOTIF_CHARSET.search(texte):
            bilan.sans_declaration.append(str(relatif))

    resultat = (codecs.BOM_UTF8 if bom else b"") + texte.encode("utf-8")
    if resultat == origine:
        bilan.inchanges += 1
        return

    if remplaces:
        bilan.declarations.append(str(relatif))
    if encodage != "utf-8":
        bilan.convertis.append(str(relatif))
    if meta_ajoute:
        bilan.metas_ajoutes.append(str(relatif))

    detail = []
    if encodage != "utf-8":
        detail.append(f"encodage {encodage} -> utf-8")
    if remplaces:
        detail.append("déclaration " + ", ".join(sorted(set(remplaces))) + " -> utf-8")
    if meta_ajoute:
        detail.append("<meta charset> ajouté")
    print(f"  [{'simulation' if options.simulation else 'corrigé'}] {relatif}"
          f" ({'; '.join(detail) or 'normalisation'})")

    if options.simulation:
        return

    try:
        if options.sauvegarde:
            sauvegarde = chemin.with_suffix(chemin.suffix + ".bak")
            if not sauvegarde.exists():
                sauvegarde.write_bytes(origine)
        # Écriture au même endroit, sous le même nom : la structure des
        # répertoires reste intacte.
        chemin.write_bytes(resultat)
    except OSError as erreur:
        bilan.erreurs.append(f"{relatif} : écriture impossible ({erreur})")


def choisir_repertoire() -> str | None:
    """Ouvre la fenêtre de sélection de répertoire (tkinter)."""
    try:
        import tkinter as tk
        from tkinter import filedialog
    except ImportError:
        return None
    try:
        fenetre = tk.Tk()
    except Exception:  # aucun affichage graphique disponible
        return None
    fenetre.withdraw()
    fenetre.update()
    choix = filedialog.askdirectory(
        title="Choisir le répertoire des notes de cours (.htm et .html)"
    )
    fenetre.destroy()
    return choix or None


def obtenir_racine(argument: str | None) -> Path | None:
    if argument:
        return Path(argument).expanduser().resolve()
    choix = choisir_repertoire()
    if choix:
        return Path(choix).expanduser().resolve()
    # Pas d'interface graphique : on demande le chemin au clavier.
    if sys.stdin is not None and sys.stdin.isatty():
        saisie = input("Chemin du répertoire des notes de cours : ").strip()
        if saisie:
            return Path(saisie).expanduser().resolve()
    return None


def analyser_arguments(argv: list[str] | None = None):
    analyseur = argparse.ArgumentParser(
        description="Convertit les fichiers .htm et .html de Windows-1252 vers UTF-8, "
                    "récursivement, en conservant l'emplacement des fichiers."
    )
    analyseur.add_argument(
        "repertoire", nargs="?",
        help="répertoire des notes de cours (fenêtre de sélection si absent)",
    )
    analyseur.add_argument(
        "-s", "--simulation", action="store_true",
        help="afficher ce qui serait fait, sans rien écrire",
    )
    analyseur.add_argument(
        "-b", "--sauvegarde", action="store_true",
        help="conserver une copie « fichier.htm.bak » avant modification",
    )
    analyseur.add_argument(
        "--ne-pas-inserer", dest="inserer_meta", action="store_false",
        help="ne pas ajouter de <meta charset=\"utf-8\"> aux fichiers qui n'en "
             "déclarent aucun",
    )
    return analyseur.parse_args(argv)


def main(argv: list[str] | None = None) -> int:
    options = analyser_arguments(argv)
    racine = obtenir_racine(options.repertoire)
    if racine is None:
        print("Aucun répertoire choisi : rien à faire.")
        return 1
    if not racine.is_dir():
        print(f"Erreur : « {racine} » n'est pas un répertoire.", file=sys.stderr)
        return 2

    print(f"Répertoire analysé : {racine}")
    if options.simulation:
        print("Mode simulation : aucun fichier ne sera modifié.")

    fichiers = repertorier(racine)
    print(f"{len(fichiers)} fichier(s) .htm/.html trouvé(s).\n")

    bilan = Bilan()
    for chemin in fichiers:
        traiter_fichier(chemin, racine, bilan, options)

    print("\n--- Bilan ---")
    print(f"Fichiers examinés          : {len(fichiers)}")
    print(f"Fichiers modifiés          : {bilan.modifies}")
    print(f"  dont réencodés en UTF-8  : {len(bilan.convertis)}")
    print(f"  dont déclaration ajustée : {len(bilan.declarations)}")
    if bilan.metas_ajoutes:
        print(f"  dont <meta charset> ajouté : {len(bilan.metas_ajoutes)}")
    print(f"Fichiers déjà conformes    : {bilan.inchanges}")
    if bilan.sans_declaration:
        print(f"Sans déclaration de jeu de caractères (ni <head> ni <html>, "
              f"laissés tels quels) : {len(bilan.sans_declaration)}")
        for ligne in bilan.sans_declaration:
            print(f"  - {ligne}")
    if bilan.ignores:
        print(f"Fichiers ignorés           : {len(bilan.ignores)}")
        for ligne in bilan.ignores:
            print(f"  - {ligne}")
    if bilan.erreurs:
        print(f"Erreurs                    : {len(bilan.erreurs)}")
        for ligne in bilan.erreurs:
            print(f"  - {ligne}")
    return 3 if bilan.erreurs else 0


if __name__ == "__main__":
    sys.exit(main())
