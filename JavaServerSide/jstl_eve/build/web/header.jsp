<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session out page</title>
    </head>
    <body>
        <c:if test="${empty sessionScope['loginUser']}">
            <c:redirect url="signup.jsp"/>         
        </c:if>
        <a href="signout.jsp">Sign Out
            <c:out value="${sessionScope['loginUser']}"/>
        </a>
    </body>
</html>
