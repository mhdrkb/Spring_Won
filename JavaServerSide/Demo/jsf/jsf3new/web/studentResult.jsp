<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result page</title>
    </head>
    <f:view>
        <body>
            <h2>Provided Student Information is: </h2>
            <p>Student ID: <h:outputText value="#{studentCon.student.id}"/></p>
            <p>Student Name: <h:outputText value="#{studentCon.student.name}"/></p>
        </body>
    </f:view>
</html>
