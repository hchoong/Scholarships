<%-- 
    Document   : admin_manage
    Created on : Dec 15, 2012, 11:42:07 AM
    Author     : Howie
Admin Manage Page -- all the link to view the DB
--%>
<%@include file="include/include.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${sessionScope.user eq null}">
        <c:redirect url="login.jsp" />
    </c:when>
    <c:otherwise>
        <c:if test="${sessionScope.user.type ne 1}">
            <c:redirect url="login.jsp" />
        </c:if>
    </c:otherwise>
</c:choose>
<head>
    <title>Admin Management Page</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<div id="content">
<h3>Administrator Management</h3>
<div class="heading">View</div>
<ul>
    <li><a href="#">Reviewers</a></li>
    <li><a href="#">Students</a></li>
</ul>

<div class="heading">Create</div>
<ul>
    <li><a href="usercreate.jsp">Create User</a></li>
</ul>
 

</div>
