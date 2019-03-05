<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authentication page</title>
    </head>
    <body>
        <!--empty field check-->
        <c:if test="${empty param.username or empty param.password}">
            <c:redirect url="signup.jsp">
                <c:param name="errMsg" value="Please Enter Correct username and password"/>
            </c:redirect>
        </c:if>
        
        <c:if test="${not empty param.username or not empty param.password}">
<!--jdbc connection-->
            <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
                             url="jdbc:mysql://localhost:3306/jstlsignup" user="root" password="1234"/>
<!--sql query-->
            <s:query dataSource="${ds}" var="sqlQ">
                select count(*) as usercount from user where username = '${param.username}' 
                and password = '${param.password}'
            </s:query>
<!--username and password match check-->
            <c:forEach items="${sqlQ.rows}" var="row">
                <c:choose>
                    <c:when test="${row.usercount gt 0}">
                        <c:set scope="session" var="loginUser" value="${param.username}"/>

                        <c:redirect url="index.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="signup.jsp">
                            <c:param name="errMsg" value="username or password does not match"/>
                        </c:redirect>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </c:if>
    </body>
</html>
