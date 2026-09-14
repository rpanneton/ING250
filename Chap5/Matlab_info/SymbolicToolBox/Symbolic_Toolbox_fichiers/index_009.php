 // Faster Collapsible Containers
 // Maintainer: [[User:Darklama]]
 
 // set up the words in your language
 var collapse_action_hide = '[hide ▲]';
 var collapse_action_show = '[show ▼]';
 
 var collapse_title_hide = 'click to collapse';
 var collapse_title_show = 'click to expand';
 
 function collapseTable(e)
 {
   e = e || window.event;
   var target = e.target || e.srcElement;
   var table = target, cells, Action, ActionLink;
   
   while ( table && !hasClass( table, 'collapsible' ) ) {
     table = table.parentNode;
   }
   
   if ( !table )
     return;
   
   cells = table.rows.item(0).cells;
   Action = cells.item(cells.length-1).firstChild;
   ActionLink = Action.getElementsByTagName( "a" )[0];
   
   if (ActionLink.firstChild.data == collapse_action_hide ) {
     for ( var i = 1; i < table.rows.length; i++ ) {
       table.rows.item(i).style.display = 'none';
     }
     ActionLink.firstChild.data = collapse_action_show;
     Action.parentNode.setAttribute('title', collapse_title_show);
   } else if (ActionLink.firstChild.data == collapse_action_show) {
     for ( var i = 1; i < table.rows.length; i++ ) {
       table.rows.item(i).style.display = table.rows.item(0).style.display;
     }
     ActionLink.firstChild.data = collapse_action_hide;
     Action.parentNode.setAttribute('title', collapse_title_hide);
   }
 }
 
 function createCollapsibleTable()
 {
   var tables = document.getElementsByTagName( "table" ), cell, Action, ActionLink, ActionText;
   
   for ( var i = 0; i < tables.length; i++ ) {
     if ( !hasClass( tables[i], "collapsible" ) )
       continue;
     
     cell = tables[i].rows.item(0).cells.item(tables[i].rows.item(0).cells.length-1);
     Action = document.createElement( "span" );
     ActionLink = document.createElement( "a" );
     ActionText = document.createTextNode(hasClass(tables[i], "selected") ? collapse_action_show : collapse_action_hide);
     
     Action.setAttribute("class", "action");
     ActionLink.appendChild( ActionText );
     Action.appendChild( ActionLink );
     cell.insertBefore( Action, cell.childNodes[0] );
     addHandler( cell, 'click', collapseTable );
     // cell.onclick = collapseTable;
     
     // only bother to emulate click if if toggle button was added
     if (document.createEvent) { // DOM 2 and DOM 3 compliant browsers
       var e = document.createEvent("MouseEvents");
       e.initMouseEvent("click", true,true, window, 0,0,0,0,0, false,false,false,false, 0, null);
       cell.dispatchEvent(e);
     } else if (cell.fireEvent) { // IE
       cell.fireEvent("onclick");
     }
   }
 }
 
 // shows and hides content and picture (if available) of collapsible boxes
 function collapsibleBox(e)
 {
   e = e || window.event;
   var target = e.target || e.srcElement;
   var collapse = target, Action, ActionLink;
   
   while (collapse && !hasClass(collapse, 'collapsible') && !hasClass(collapse, 'NavFrame')) {
     collapse = collapse.parentNode;
   }
   if ( !collapse ) {
     return;
   }
   
   Action = collapse;
   
   while ( Action != null ) {
     if ( hasClass( Action, 'action' ) ) {
       ActionLink = Action.getElementsByTagName( "a" )[0];
       break;
     }
     Action = Action.firstChild || Action.nextSibling || (Action.parentNode != collapse ? Action.parentNode.nextSibling : null);
   }
   if ( Action == null || ActionLink == null) {
     return;
   }
   if ( ActionLink.firstChild.data == collapse_action_hide ) {
     for ( var child=collapse.firstChild; child != null; child=child.nextSibling ) {
       if ( hasClass( child, 'NavContent' ) || hasClass( child, 'NavPic' ) )
         child.style.display = 'none';
     }
     ActionLink.firstChild.data = collapse_action_show;
     Action.parentNode.setAttribute('title', collapse_title_show );
   } else if (ActionLink.firstChild.data == collapse_action_show) {
     for ( var child=collapse.firstChild; child != null; child=child.nextSibling ) {
       if ( hasClass( child, 'NavContent' ) || hasClass( child, 'NavPic' ) )
         child.style.display = 'block';
     }
     ActionLink.firstChild.data = collapse_action_hide;
     Action.parentNode.setAttribute('title', collapse_title_hide);
   }
 }
 
 // adds show/hide-button to navigation bars
 function createCollapsibleBox()
 {
   // iterate over all div elements
   var divs = document.getElementsByTagName("div"), Action, ActionLink, ActionText;
   
   for (var i=0; i < divs.length; i++)
   {
     if ( !hasClass(divs[i], "NavFrame") && !hasClass(divs[i], "collapsible") )
       continue;
     
     Action = document.createElement( "span" );
     ActionLink = document.createElement( "a" );
     ActionText = document.createTextNode(hasClass(divs[i], "selected") ? collapse_action_show : collapse_action_hide);
     
     Action.setAttribute("class", "action");
     ActionLink.appendChild( ActionText );
     Action.appendChild( ActionLink );
     
     // add Action to title area element
     for (var j=0; j < divs[i].childNodes.length; j++) {
       var TitleArea = divs[i].childNodes[j];
       
       if (!hasClass(TitleArea, "NavHead") && !hasClass(TitleArea, "title"))
         continue;
       
       TitleArea.insertBefore( Action, TitleArea.childNodes[0] );
       addHandler( TitleArea, 'click', collapsibleBox );
       // TitleArea.onclick = collapsibleBox;
       
       // only emulate click if Action was added
       if (document.createEvent) { // DOM 2 and DOM 3 compliant browsers
         var e = document.createEvent("MouseEvents");
         e.initMouseEvent("click", true,true, window, 0,0,0,0,0, false,false,false,false, 0, null);
         TitleArea.dispatchEvent(e);
       } else if (TitleArea.fireEvent) { // IE
         TitleArea.fireEvent("onclick");
       }
       break;
     }
   }
 }

 addOnloadHook( createCollapsibleTable );
 addOnloadHook( createCollapsibleBox );