<%-- 
    Document   : logout
    Created on : Jan 3, 2019, 9:29:48 AM
    Author     : Java
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log out</title>
    </head>
    <body>
        <%
        session.removeAttribute("loginUser");
        %>
        <a href="index.jsp">Home</a>
    </body>
</html>
