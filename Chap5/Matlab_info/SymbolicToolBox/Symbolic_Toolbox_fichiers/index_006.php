function change_displaytitle()
{
  var dstitle = document.getElementById("displaytitle"), text = null;
  
  if ( dstitle ) {
    text = dstitle.getAttribute("title") || dstitle.title || null;
    if ( text ) {
      text = text.match("(?:tab:\\s*([^|]+)\\|?)?\\s*(?:title:\\s*(.+))?");
    }
  }
  if ( text == null ) {
    return;
  }
  
  if ( text[1] ) {
    var ntab = document.getElementById("p-cactions");
    if ( ntab )
      ntab = ntab.getElementsByTagName("a");
    if ( ntab && ntab[0] )
      ntab = ntab[0].firstChild;
    if ( ntab ) {
      if (ntab.nodeValue)
        ntab.nodeValue = text[1];
      else if (ntab.innerText)
        ntab.innerText = text[1];
      else if (ntab.innerHTML)
        ntab.innerHTML = text[1];
    }
  }
  if ( text[2] ) {
    var title = document.getElementsByTagName("h1");
    for (var i = 0; i < title.length; i++) {
      if ( !hasClass(title[i], 'firstHeading' ) && !hasClass(title[i], 'pagetitle' ) )
        continue;
      var titlename = title[i].firstChild;
      while (titlename != null) {
        if (titlename.nodeType == Node.TEXT_NODE) {
          if (titlename.nodeValue)
            titlename.nodeValue = text[2];
          else if (titlename.innerText)
            titlename.innerText = text[2];
          else if (titlename.innerHTML)
            titlename.innerHTML = text[2];
          return;
        }
        titlename = titlename.firstChild || titlename.nextSibling || (titlename.parentNode != title[i] ? titlename.parentNode.nextSilbing : null);
      }
      return;
    }
  }
}
 
addOnloadHook(change_displaytitle);