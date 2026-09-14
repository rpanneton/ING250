function add_toolbox_link(action, name, id)
{
  var tools = document.getElementById('column-one');
  
  if (tools)
    tools = tools.getElementsByTagName('div')[0].getElementsByTagName('ul')[0];
  if (!tools)
    return;
  
  var na = document.createElement('a').appendChild(document.createTextNode(name)).parentNode;
  
  if (typeof action == "string")
    na.setAttribute('href', action);
  else if (typeof action == "function")
    na.onclick = action;
  else
    return;
  
  var li = document.createElement('li').appendChild(na).parentNode;
  
  if (typeof id == "string") li.id = id;
  
  tools.appendChild(li);
}

function add_all_user_tools()
{
  if (wgNamespaceNumber != 2 && wgNamespaceNumber != 3) return;
  
  var username = encodeURIComponent(wgTitle.split("/")[0]);
  var project = wgServer.replace("http://", "");
  var baseurl = 'http://tools.wikimedia.de/~daniel/WikiSense/';
  var delimg = 'Images_with_unknown_copyright_status';
  
  add_toolbox_link(baseurl + 'UntaggedImages.php?wiki=' + project + '&img_user_text=' + username , 'untagged', 'ca-untagged');
  add_toolbox_link(baseurl + 'MediaSearch.php?wiki=' + project + '&category=' + delimg + '&depth=10&max=100&uploader=' + username, 'unlicensed', 'ca-unlicensed');
}

if(typeof gadget_removeimagetools == 'undefined') gadget_removeimagetools = 0;
if(gadget_removeimagetools != 1) addOnloadHook(add_all_user_tools);