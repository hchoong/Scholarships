<%-- 
    Document   : index
    Created on : Dec 9, 2012, 3:02:14 PM
    Author     : Howie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
    </head>
    <body>
        <h1 class="label label-success"><a href="TestServlet">TestServlet</a></h1>
    <c:forEach var="test" begin="0" items="${requestScope.testList}">
        <div>${test.id}</div>
        <div>${test.name}</div>
    </c:forEach>
        <div
    </body>
</html>
