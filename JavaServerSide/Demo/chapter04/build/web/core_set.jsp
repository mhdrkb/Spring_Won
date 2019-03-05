<%-- 
    Document   : core_set
    Created on : Dec 12, 2018, 12:18:40 PM
    Author     : Java
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>core_set</title>
    </head>
    <body>
        <c:set var="browser" value="${header['User-Agent']}" scope="session"/>
        <h1>Your browser is: <c:out value="${browser}"/></h1>
    </body>
</html>
