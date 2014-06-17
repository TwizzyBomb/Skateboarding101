<%-- 
    Document   : ImageRotatorTest
    Created on : Jan 10, 2014, 12:53:13 PM
    Author     : TwizzyBomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--/*<link rel="stylesheet" href="layout.css" type="text/css" />*-->
        <style type="text/css">
            
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
.footer, .push {
height: 4em;
}
        </style>
    </head>
    <body>
        <div class="wrapper">
            <script type="Javascript">
                for(i=0;i<20;i++){
                    document.write("<p>Your website content here.</p>");
                }
                
                </script>
            <div class="push"></div>
        </div>
        <div class="footer">
            <p>Whatever I want to type</p>
            <p>Copyright (c) 2008</p>
        </div>
    </body>
</html>