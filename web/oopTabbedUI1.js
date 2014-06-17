//typing reducing getElementById
function $(id){
return document.getElementById(id);
}
var httpRequest;
if (window.XMLHttpRequest){// Mozilla, Safari
	httpRequest = new XMLHttpRequest();
}
	else if (window.ActiveXObject) { // IE 8 and older
	httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
}
httpRequest.onreadystatechange = function(){
	// process the server response
};
if(httpRequest.readystate === 4){
	//everything is good, the response is recieved.
}
else {
	//still not ready
}
if(httpRequest.status === 200){
	//perfect
}
else {
    // there was a problem with the request,
    // for example the response may contain a 404 (Not Found)
    // or 500 (Internal Server Error) response code
}



httpRequest.open('GET', 'http://twizzybomb.brinkster.net/panels/videos.html', true);
httpRequest.send(null);


//document vars and methods
var currentPanel = '';
var currentTab = '';
//load Images
var redTab = new Image();
redTab.src = 'http://twizzybomb.brinkster.net/images/transparentRedTab.png';
var redPanel = new Image();
redPanel.src = 'http://twizzybomb.brinkster.net/images/transparentRedPanel1.png';
var blueTab = new Image();
blueTab.src = 'images/transparentBlueTabPictures.png';
var bluePanel = new Image();
bluePanel.src = 'images/transparentBluePanel.png';
var greenTab = new Image();
greenTab.src = 'images/transparentGreenTabVideos.png';
var greenPanel = new Image();
greenPanel.src = 'images/transparentGreenPanel.png';
var purpleTab = new Image();
purpleTab.src = 'images/transparentPurpleTabHome.png';
var purplePanel = new Image();
purplePanel.src = 'images/transparentPurplePanel1.png';
var yellowTab = new Image();
yellowTab.src = 'images/transparentYellowGamesTab.png';
var yellowPanel = new Image();
yellowPanel.src = 'images/transparentYellowPanel.png';



function showPanel(tab,panel){
	if (currentPanel!=''){hidePanel(currentPanel);}
	currentPanel = panel;
	$(panel).style.display = 'block';
	$(panel).style.visibility = 'visible';
        $(tab).style.z-index++;
	setState(tab);
	currentTab = tab;
}
function hidePanel(panel){	
		$(panel).style.visibility = 'hidden';
		$(panel).style.display = 'none';
}
function hideAll(panel){
document.getElementById(panel).style.visibility = 'hidden';
}
function hilite(tab){
	tab.style.backgroundColor = 'transparent';
}
function unHilite(tab){
	tab.style.backgroundColor = 'transparent';
}
function setState(tab){
	if(currentTab!='')
		document.getElementById(currentTab).style.color = 'navy';
	document.getElementById(tab).style.color = 'red';
}
//image constructor
function tabImg(src){
this.src = src
}


//tab constructor
function tab(id, text,top,left,width,imgSrc){
	this.id = id;
	this.text = text;
	this.top = top;
	this.left = left;
	this.width = width;
	this.src = imgSrc
	
}
//panel constructor
function panel(id, src, imgSrc){
	this.id = id;
	this.src = src;
	
}
//tabPanel constructor
function tabPanel(tab, panel){
	this.tab = tab;
	this.panel = panel;
	this.writeTabPanel = writeTabPanel;
}
//method that writes tabPanel implementation to page
function writeTabPanel(){
var tpText = '';
tpText += '<div id="';
tpText += this.tab.id;
tpText += '" class="tab" style="top:';
tpText += this.tab.top;
tpText += ';left:';
tpText += this.tab.left;
tpText += ';width:';
tpText += this.tab.width;
tpText += '" onClick="showPanel(\'';
tpText += this.tab.id + '\',\'' + this.panel.id;
tpText += '\')" onMouseOver="hilite(this)" onMouseOut="unHilite(this)">';
tpText += '<img src="' + this.tab.src + '" />'
tpText += '</div>';
tpText += '<iframe id="';
tpText += this.panel.id;
tpText += '" class="panel" src="';
tpText += this.panel.src;
tpText += '"></iframe>';

document.write(tpText);
}
