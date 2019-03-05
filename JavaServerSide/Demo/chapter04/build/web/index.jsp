<%-- 
    Document   : index
    Created on : Dec 12, 2018, 12:02:33 PM
    Author     : Java
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:out value="Good Afernoon" /><br/>
        <c:set var="name" target="person" property="firstName" value="Mehedee Hasan"/>
        <c:out value="${name}"/><br/>
        <a href="core_set.jsp">Core_Set</a>
        <a href="core_remove.jsp">Core_Remove</a>
    </body>
</html>
