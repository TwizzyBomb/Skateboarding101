<%@page import="utils.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Skate 101 - Skateboarding lessons in Fairfield County</title>
<style type="text/css">
html { 
	background: url(images/CheckerBackground2.jpg) no-repeat center center fixed; 
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
        /*background Opacity?*/
        -webkit-transition: opacity .5s linear;
        -o-transition: opacity .5s linear;
        -moz-transition: opacity .5s linear;
        transition: opacity .5s linear;
}
body {
background-color:transparent;
overflow-y:scroll;
}
img {
  max-width: 100%;}
iframe {
position:relative;
height:80%}

#homepnl {
height:80%;
}
#picturespnl {
height:80%;
}  
#videospnl {
height:80%;
}  
#banner {
		display:block;
		margin-left:130;
		margin-right:auto;}
		
@media screen and (max-width: 800px) {
  /* specific CSS */
}
@media screen and (max-width: 479px) {
  /* specific CSS */
}



</style>
        <style type="text/css">
/*for the footer */           
            * {
margin: 0;
}
html, body {
height: 100%;
}
.wrapper {
min-height: 100%;
height: auto !important;
height: 100%;
margin: 0 auto -4em;
}
.push {
height: 4em;
}
.footer {
    /*height: 4em;*/
    background-color:grey;
}
table {text-align:center;
margin-left: auto;
margin-right: auto;
}
        </style>
<script language="Javascript" src="oopTabbedUI1.js"></script>
<link rel="stylesheet" href="horiz1.css">


 </head>
<body>
<img id="banner" src="images/banner.png">
        <div class="wrapper">
<script language="Javascript">
var tabPanel1 = new tabPanel(new tab("home","Home",89,140,123,purpleTab.src),new panel("homepnl","panels/home.jsp"));
tabPanel1.writeTabPanel();
var tabPanel2 = new tabPanel(new tab("pictures","Pictures",87,262,123,blueTab.src),new panel("picturespnl","panels/pictures.html"));
tabPanel2.writeTabPanel();
var tabPanel3 = new tabPanel(new tab("videos","Qualifications",88,382,123,greenTab.src),new panel("videospnl","panels/videos1.html"));
tabPanel3.writeTabPanel();
var tabPanel4 = new tabPanel(new tab("games","Qualifications",88,502,123,yellowTab.src),new panel("gamespnl","panels/games.html"));
tabPanel4.writeTabPanel();
showPanel("games","gamespnl");
</script>
        <div class="push"></div>
    </div>
<div class="footer">
       <%= Utils.getFooter() %>
</div>
</body>


 </html>