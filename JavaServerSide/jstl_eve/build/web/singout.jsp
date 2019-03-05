<%-- 
    Document   : singout
    Created on : Dec 23, 2018, 1:07:29 PM
    Author     : Java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.removeAttribute("loginUser"); %>
        <a href="index.jsp">index.jsp</a>
    </body>
</html>
