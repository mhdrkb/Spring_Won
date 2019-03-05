<%-- 
    Document   : index.jsp
    Created on : Jan 4, 2019, 9:02:23 AM
    Author     : Java
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="authenticatee.jsp">
            Username: <input type="text" name="uname" value=""/>
            Password: <input type="password" name="pass" value=""/>
            <input type="submit" value="Login"/>
        </form>
        <font color="red">
            <c:if test="${not empty param.errM}">
                <c:out value="${param.errM}"/>
            </c:if>
        </font>
    </body>
</html>
