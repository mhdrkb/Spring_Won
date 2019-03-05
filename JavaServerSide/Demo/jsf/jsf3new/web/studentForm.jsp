<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Page</title>
    </head>
    <f:view>
        <body>
            <h:form>
                <table>
                    <tr>
                        <td colspan="2">Student Info</td>
                    </tr>
                    <tr>
                        <td>Student Id</td>
                        <td><h:inputText value="#{studentCon.student.id}"/></td>
                    </tr>
                    <tr>
                        <td>Student Name</td>
                        <td><h:inputText value="#{studentCon.student.name}"/></td>
                    </tr>
                </table>
                <p><h:commandButton value="Search" action="submit"/></p>
            </h:form>
        </body>
    </f:view>
</html>
