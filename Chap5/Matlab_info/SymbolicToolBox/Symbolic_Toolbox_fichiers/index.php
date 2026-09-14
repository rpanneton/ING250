/* generated javascript */
var skin = 'monobook';
var stylepath = '/skins-1.5';

/* MediaWiki:Common.js */
//<nowiki> Common javascript code which effects everyone
 
 // hasClass()
 // Description: Uses regular expressions and caching for better performance.
 // Maintainers: User:Mike Dillon, User:R. Koot, User:SG
 
 var hasClass = (function () {
    var reCache = {};
    return function (element, className) {
      return (reCache[className] ? reCache[className] : (reCache[className] = new RegExp("(?:\\s|^)" + className + "(?:\\s|$)"))).test(element.className);
    };
 })();
 
 // for backwards compatibility
 var addLoadEvent = addOnloadHook;
 var import_script = importScript;
 var import_style = importStylesheet;
 
 // book name
 var wgBookName = wgPageName.split("/", 1)[0] || wgPageName;
 wgBookName = wgBookName.split(':', 2).join(":");
 
 // Provides an easy way to disable load dependent features
 function delLoadEvent(func) {
   for (var i = 0; i < onloadFuncts.length; i++) {
     if (onloadFuncts[i] == func)
       onloadFuncts.splice(i, 1);
   }
 }
 
 function get_query_value(query, name)
 {
   if (typeof query != "string" || typeof name != "string")
     return "";
   var value = query.match('[&?]' + name + '=([^&]*)');
   if (value)
     return decodeURIComponent(value[1]);
   else
     return "";
 }
 
 // cross-browser event attachment (John Resig)
 // http://www.quirksmode.org/blog/archives/2005/10/_and_the_winner_1.html
 function addEvent(obj, type, fn)
 {
   if (obj.addEventListener)
     obj.addEventListener( type, fn, false );
   else if (obj.attachEvent)
   {
     obj["e"+type+fn] = fn;
     obj[type+fn] = function() { obj["e"+type+fn]( window.event ); }
     obj.attachEvent( "on"+type, obj[type+fn] );
   }
 }
 
 // cross-browser XMLHtttpRequest compatibility
 if (typeof XMLHttpRequest == "undefined")
  XMLHttpRequest = function()
  {
    try { return new ActiveXObject("Msxml2.XMLHTTP.6.0"); } catch(e) {};
    try { return new ActiveXObject("Msxml2.XMLHTTP.3.0"); } catch(e) {};
    try { return new ActiveXObject("Msxml2.XMLHTTP");     } catch(e) {};
    try { return new ActiveXObject("Microsoft.XMLHTTP");  } catch(e) {};
    throw new Error("This browser does not support XMLHttpRequest or XMLHTTP.");
  };

//Adds a dismissable message to the watchlist
if (wgCanonicalSpecialPageName == "Watchlist") importScript('MediaWiki:Common.js/WatchlistNotice.js');
 
 // Removes the default no-license option for image uploads. 
 // All new image uploads must be tagged with a license or nld
 function remove_no_license() {
   if (wgPageName != "Special:Upload")
     return;
   var license = document.getElementById("wpLicense");
   if (!license)
     return;
   var options = license.getElementsByTagName("option");
   if (!options)
     return;
   license.removeChild(options[0]);
 }
 
 addOnloadHook(remove_no_license);

 // import additional scripts //
 import_script('MediaWiki:Common.js/ExtraTools.js');
 import_script('MediaWiki:Common.js/Navigation.js');
 import_script('MediaWiki:Common.js/NavigationTabs.js');
 import_script('MediaWiki:Common.js/Displaytitle.js');
 import_script('MediaWiki:Common.js/RandomBook.js');
 import_script('MediaWiki:Common.js/Edittools.js');
 
 // adds buttons to the edit toolbar
 if (mwCustomEditButtons) import_script('MediaWiki:Common.js/EditToolbar.js');
 
 //Search within a book using Google//
 // 0 - Main / 102 - Cookbook / 110 - Wikijunior
 if ( wgNamespaceNumber == 0 || wgNamespaceNumber == 102 || wgNamespaceNumber == 110) importScript('MediaWiki:Common.js/BookSearch.js');
 
 //</nowiki> End of Common.js

/* MediaWiki:Monobook.js */
/*
See also: [[MediaWiki:Common.js]]

<pre>
*/

/* Functions for adding links to the personal links section and the toolbox*/
function AddPersonalLink(link, text, tag, ibefore)
{
  var li = document.createElement( 'li' );
  li.id = tag;
  var a = document.createElement( 'a' );
  a.appendChild( document.createTextNode( text ) ); 
  a.href = link;
  li.appendChild( a );
  if ( ! ibefore ) // append to end (right) of list
  {
     document.getElementById( 'pt-logout' ).parentNode.appendChild( li );
  }
  else
  {
      var before = document.getElementById( ibefore );
      before.appendChild( li, before );
  }
}

function AddToolboxLink(text, href, onclick, linkid) {
  var tb = document.getElementById('p-tb').getElementsByTagName('ul')[0];
  
  var link = document.createElement('a');
  link.onclick = onclick;
  link.href = href;
  link.appendChild(document.createTextNode(text));

  var li = document.createElement('li');
  li.id = linkid;
  li.appendChild(link);

  tb.insertBefore(li, tb.firstChild);
  return;
}
/*
</pre>
*/