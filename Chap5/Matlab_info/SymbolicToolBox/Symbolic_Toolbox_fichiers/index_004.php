 // ==================================================
 // Book-wide search using Google
 // from pl.wikibooks, maintainer [[b:pl:User:Piotr]]
 // modified by [[User:darklama]]
 // ==================================================
 
 function insertGoogleSearch() {
   var google = "http://www.google.com/custom?sa=Google+Search&domains=en.wikibooks.org/wiki/PAGE&sitesearch=en.wikibooks.org/wiki/PAGE";
   var tb = document.getElementById('p-tb');
   
   if (tb) tb = tb.getElementsByTagName('ul')[0]; else return;
   
   var link = document.createElement('a');
   var li = document.createElement('li');
   
   link.href = google.replace(/PAGE/g, wgBookName);
   link.appendChild(document.createTextNode("Search this book"));
   
   li.id = "google-trick-search";
   li.appendChild(link);
   
   tb.insertBefore(li, tb.firstChild);
 }
 addOnloadHook(insertGoogleSearch);