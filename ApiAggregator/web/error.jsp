<%-- 
    Document   : error
    Created on : 25 Nov, 2018, 11:44:23 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error!</title>
        
        <!--Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">

        <style>
            body {
                background-color: red;
            }
            
            .error-message {
                font: 50px Bold;
                font-family: 'Black Han Sans', sans-serif;
            }
            
            .link-to-back {
                font: 100px Iitalic;
                font-family: 'Bree Serif', serif;
            }
        </style>
    </head>
    <body>
        <div class="error-message">
            YOU ENTERED WRONG LOGIN CREDENTIALS...
        </div>
        
        <hr>
        <br>
        
        <a href="login.jsp">
            <div class="link-to-back">
                TAKE ME TO LOGIN PAGE IMMEDIATELY!!
            </div>
        </a>
    </body>
</html>
