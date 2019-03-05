<%-- 
    Document   : login
    Created on : Jan 9, 2019, 9:16:51 AM
    Author     : Java
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please log in here</h1>
        <form action="authenticate.jsp">
            Username : <input type="text" name="username"/>
            Password : <input type="password" name="password"/>
            <input type="submit" value="Login"/>
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}"/>
        </c:if>

        </font>

    </body>
</html>
