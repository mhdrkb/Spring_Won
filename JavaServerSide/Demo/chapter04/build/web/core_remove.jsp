<%-- 
    Document   : core_remove
    Created on : Dec 12, 2018, 12:46:38 PM
    Author     : Java
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${param.expert != null}">
    <c:remove var="level" scope="session"/>
</c:if>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>remove Page</title>
    </head>
    <body>
        <h1>Core_remove operation</h1>
        <h1>Your level is : <c:out value="${level}" default="Expert"/></h1>
        <c:choose>
            <c:when test="${level != null}">
                <p/>You are not expert. Here the things you need to do......
            </c:when>
            <c:otherwise>
                <p>you are expert</p>
            </c:otherwise>
        </c:choose>
    </body>
</html>
