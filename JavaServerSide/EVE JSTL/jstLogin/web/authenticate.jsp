<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty param.uname or empty param.pass}">
            <c:redirect url="login.jsp">
                <c:param name="errMsg" value="Enter valid username and pass"/>
            </c:redirect>
        </c:if>
        
        
        <c:if test="${not empty param.uname and not empty param.pass}">
            <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/jstllogin" user="root" password="1234"/>
            <s:query dataSource="${ds}" var="selectQ">
                select count(*) as kk from users where username='${param.uname}' and password = '${param.pass}'
            </s:query>
            <c:forEach items="${selectQ.rows}" var="r">
                <c:choose>
                    <c:when test="${r.kk gt 0}">
                        <c:set scope="session" var="loginUser" value="${param.uname}"/>
                        <c:redirect url="index.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="login.jsp">
                            <c:param name="errMsg" value="autehntication error"/>
                        </c:redirect>
                    </c:otherwise>
                </c:choose>
            </c:forEach>


        </c:if>
    </body>
</html>
