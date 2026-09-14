# Conversion des notes de cours en UTF-8

`convertir_html_utf8.py` corrige l'affichage des accents, apostrophes et autres
caractères français dans les notes de cours HTML publiées sur GitHub.

Pour chaque fichier `.htm` et `.html` du répertoire choisi **et de tous ses
sous-répertoires**, le programme :

1. remplace `charset=windows-1252` (ou `iso-8859-1`, etc.) par `charset=utf-8`
   dans les balises `<meta>` de l'en-tête et dans le prologue XML;
2. réenregistre le fichier en UTF-8, **au même endroit et sous le même nom** :
   l'arborescence des répertoires n'est pas modifiée.

## Utilisation

```
python3 convertir_html_utf8.py                      # fenêtre de sélection du répertoire
python3 convertir_html_utf8.py ~/Documents/ING250   # répertoire passé en argument
python3 convertir_html_utf8.py ING250 --simulation  # essai : affiche sans rien écrire
python3 convertir_html_utf8.py ING250 --sauvegarde  # copie « fichier.htm.bak » avant modification
```

Sans argument, une fenêtre de sélection de répertoire s'ouvre (module `tkinter`,
fourni avec Python; sous Linux : `sudo apt install python3-tk`). En l'absence
d'interface graphique, le chemin est demandé au clavier.

| Option | Effet |
| --- | --- |
| `-s`, `--simulation` | affiche ce qui serait fait, sans modifier aucun fichier |
| `-b`, `--sauvegarde` | conserve une copie `fichier.htm.bak` avant modification |
| `--ne-pas-inserer` | n'ajoute pas de `<meta charset="utf-8">` aux fichiers qui n'en déclarent aucun |

Aucune dépendance externe : Python 3.9 ou plus récent suffit.

## Précautions prises

- Les fichiers déjà en UTF-8 ne sont pas réencodés; ceux qui portent un BOM UTF-8
  le conservent. Le programme peut donc être relancé sans risque : un deuxième
  passage ne modifie plus rien.
- Les octets propres à Windows-1252 (apostrophe typographique `’`, points de
  suspension `…`, tirets longs) sont convertis correctement, y compris les
  quelques octets non définis de cette page de code (repli sur latin-1).
- Les fichiers UTF-16 sont reconnus par leur BOM et convertis eux aussi.
- Sont laissés de côté : les fichiers verrous de Word (`~$...`), les fichiers
  binaires, et les répertoires `.git`, `node_modules`, etc.
- La balise `<meta charset="utf-8">` n'est ajoutée qu'aux fichiers possédant une
  balise `<head>` ou `<html>`, afin de ne pas corrompre les fragments (morceaux
  de JavaScript, par exemple) qui portent parfois l'extension `.htm`.

## Résultat sur les notes de cours ING250

Essai effectué sur une copie du dépôt (441 fichiers `.htm` / `.html`) :

- 158 fichiers à corriger, dont 149 réellement réencodés depuis Windows-1252 et
  154 dont la déclaration `charset` était erronée;
- 282 fichiers déjà conformes;
- 1 fragment JavaScript (`Chap5/.../brand.htm`) laissé intact volontairement.
