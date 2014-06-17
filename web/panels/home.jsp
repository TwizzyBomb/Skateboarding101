<%-- 
    Document   : home
    Created on : Jan 8, 2014, 5:39:33 PM
    Author     : Adrian Brocke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
   <head>
      <title>Pauls Fancy Rotator Test</title>
<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/jqFancyTransitions.js" type="text/javascript"></script>
<style>
body {background-image:url(../images/transparentPurplePanel.png);
        background-repeat:no-repeat;
        background-position: center center;
        background-attachment:fixed;
      	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
/*SPECIFY TOP AND LEFT OF BOX HERE AND IN DIV! SPENT HOURS*/
@keyframes myfirst
{
0%   {left:15px; top:30px;}
27%  {left:470px; top:30px;}
100% {left:470px; top:30px;} 
}

@-webkit-keyframes myfirst /* Safari and Chrome */
{
0%   {left:15px; top:30px;}
25%  {left:470px; top:30px;}
100% {left:470px; top:30px;}
}
#holder {
position: relative;
width:95%;
margin-left: 4%;
margin-right: auto;
}
#slideshowHolder {
top:10px;
left:10px;
position: absolute;
z-index:3;

-webkit-box-shadow: 7px 7px 4px 0px rgba(0,0,0,0.75);
-moz-box-shadow: 7px 7px 4px 0px rgba(0,0,0,0.75);
box-shadow: 7px 7px 4px 0px rgba(0,0,0,0.75);
}
#blackTextBox{
top:30px;
left:20px;
position:absolute;
height:300px;width:413px;
z-index:1;
background-color:WHITE;
font-size:20pt;

/*background-image: url(../images/BlackBox.png);
/background-repeat:no-repeat;*/
opacity:1;

-webkit-box-shadow: 7px 7px 4px 0px rgba(0,0,0,0.75);
-moz-box-shadow: 7px 7px 4px 0px rgba(0,0,0,0.75);
box-shadow: 7px 7px 4px 0px rgba(0,0,0,0.75);

animation: myfirst ease-out 6s infinite alternate;
-webkit-animation: myfirst linear 6s infinite alternate;
animation-delay:0s;
-webkit-animation-delay:0s;
}

</style>
<script>
$(document).ready( function(){
	$('#slideshowHolder').jqFancyTransitions({ width: 480, height: 360});
});
</script>
<style type="text/css">
img {-moz-background-size:100% 100%;
-webkit-background-size:100% 100%;
background-size:100% 100%;
	height:100%;
	width:100%}
</style>
   </head>
   <body>
        <div id='holder'>
            <div id='slideshowHolder'>
                <img src='../images/JoeDropin360.jpg' alt='Welcome to skateboarding 101! You&#39;v reached the home of the 
                safest, most flexible and affordable skateboarding lessons in the 
                Fairfield county area!' />
                 <a href ='http://workshop.rs'/></a>
                  <img src='../images/LillyNorwalkRamp360.jpg' alt='Skateboarding101 has had success teaching girls or boys, 
                begginners, intermediates and advanced.' />
                 <a href ='http://workshop.rs/projects/jqbargraph'></a>
                 <img src='../images/LoganPicture360.jpg' alt='
                Skateboarding101 is a patented coaching system, proven to work on 
                children ages 5 - 13 regardless of gender. One on One attetion 
                means your child will only recieve the best coaching available. ' />
                  <a href ='http://workshop.rs/projects/moobargraph'></a>
                  <img src='../images/RyanHouse360.jpg' alt='We can accomodate you at your home or nearby skatepark, making 
                skateboarding101 a unique service, tailored to make students and 
                moms feel comfortable and at-ease. ' />
                <a href ='http://workshop.rs/projects/moobargraph'></a>
            </div>
            <div id="blackTextBox" >
                <p style="margin-top:70px;margin-left:32px;color:BLACK;font-size:22px;font-family:VERDANA;text-align:center;">
                Welcome to skateboarding 101! </br>
                You'v reached the home of the </br>
                safest, most flexible and affordable </br>
                skateboarding lessons in the  </br>
                Fairfield county area!</p>
            </div>
            <a href="Form.jsp" alt="Form">Get Started!</a>
        </div>
   </body>
</html>