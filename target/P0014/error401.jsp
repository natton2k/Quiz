<%-- 
    Document   : error400
    Created on : Jan 14, 2021, 7:53:15 AM
    Author     : natton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.tientt.commons.Role" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>401</title>
    </head>
    
    <body>
        <header>
            <jsp:include page="header.jsp"/>
        </header>
        <h2>You are not allowed to access this page</h2>
        <c:if test="${sessionScope.USER.role.ID == Role.ADMIN}">
            <a href="ShowAdminPageAction">Return to main page</a>
        </c:if>
        <c:if test="${sessionScope.USER.role.ID == Role.STUDENT}">
            <a href="ShowStudentPageAction">Return to main page</a>
        </c:if>
    </body>
</html>
