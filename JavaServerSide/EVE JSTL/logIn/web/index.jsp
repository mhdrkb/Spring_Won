<%-- 
    Document   : index
    Created on : Jan 9, 2019, 9:14:57 AM
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
        <h1>Hello World!<br/>
            Welcome Home....</h1>
            <c:if test="${empty sessionScope['loggedIn']}">
                <c:redirect url="login.jsp"/>
            </c:if>
        <a href="login.jsp">LogOut
            <c:out value="${sessionScoped['loggedIn']}"/>
        </a>
    </body>
</html>
