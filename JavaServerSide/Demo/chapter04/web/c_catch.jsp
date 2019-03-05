<%-- 
    Document   : C_catch
    Created on : Dec 13, 2018, 9:26:53 AM
    Author     : Java
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:catch var="exception">
    <fmt:parseDate var="dob" value="${param.birthDate}" pattern="yyyy-MM-dd"/>
</c:catch>
<c:if test="${exception != null}">
    <jsp:useBean id="dob" class="java.util.Date"/>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
