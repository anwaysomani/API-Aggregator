<%-- 
    Document   : response
    Created on : 6 Nov, 2018, 12:00:48 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="org.myppackage.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <h1>Hello <jsp:getProperty name="mybean" property="name" /> !</h1>
    </body>
</html>
