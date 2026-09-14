/* Random Book Finder, version [0.0.3a-r1]
Originally from: http://en.wikibooks.org/wiki/User:Splarka/randbook.js
Based roughly on http://en.wikibooks.org/w/index.php?title=MediaWiki:RandomBook.js&oldid=1209572 by Darklama.

Grabs 10 random pages from the API, checks if any are books. Repeats until it finds a book.

Notes:
* Don't grab more than 10 random pages. Logged in users can get more, but anon users cannot. 
** Since this uses callback, all users are limited to 10 anyway.
* Automatically re-queries until it finds a page in one of the 38 Category:Alphabetical\ categories.
** As 10.5% of pages are in this category, most queries should take only 1 or 2 iterations.
* Setting window.location.href eats history in some browsers.
** To show a link instead use: var randBookAsLink = true; (users can set this in their monobook individually too);
* Uses curid links, I usually trust these more than trying to generate /wiki links.
*/

var randBookAsLink = false;
var rbrqid = 0;
var rburl = wgServer + wgScriptPath + '/api.php?action=query&indexpageids=1&generator=random&grnnamespace=0|110&grnlimit=10&prop=categories&cllimit=100&format=json&callback=showRandBookCB&requestid=rb';

function showRandBook() {
  if (window.randBookAsLink) {
    injectSpinner(document.getElementById('n-randbook').firstChild,'randBookSpinner');
  } else {
    injectSpinner(document.getElementById('n-randbook'),'randBookSpinner');
  }
  importScriptURI(rburl + rbrqid);
  rbrqid++;
}

function showRandBookCB(obj) {
  if (!obj['query'] || !obj['query']['pages'] || !obj['query']['pageids']) {
    document.getElementById('n-randbook').appendChild(document.createTextNode(' error'));
    removeSpinner('randBookSpinner');
    return false;
  }
  var id = obj['query']['pageids'];
  var found;
  for (var i=0;i<id.length;i++) {
    var cats = obj['query']['pages'][id[i]]['categories'];
    if (!cats) continue;
    for (var j=0;j<cats.length;j++) {
      var ct = cats[j]['title'];
      if (ct.indexOf('Category:Alphabetical/') == 0) {
        found = obj['query']['pages'][id[i]];
        break;
      }
    }
    if (found) break;
  }
  if(!found) {
    // didn't find any, try again
    importScriptURI(rburl + rbrqid);
    rbrqid++;
  } else {
    removeSpinner('randBookSpinner');
    var link = wgServer + wgScript + '?curid=' + found['pageid'];

    if (window.randBookAsLink) {
      var a = document.createElement('a');
      a.setAttribute('href',link);
      a.style.display = 'block';
      a.appendChild(document.createTextNode(' \u2022\u00A0' + found['title']))
      document.getElementById('n-randbook').appendChild(a);
    } else if (window.location.assign) {
      window.location.assign(link);
    } else {
      window.location.href = link; 
    }
  }
  return true;
}

function showRandBookLink() {
  addPortletLink('p-navigation','javascript:showRandBook();','Random book','n-randbook','Show me a random book!','x');
}

addOnloadHook(showRandBookLink);