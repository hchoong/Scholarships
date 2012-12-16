<%-- 
    Document   : admin_manage
    Created on : Dec 15, 2012, 11:42:07 AM
    Author     : Howie
Admin Manage Page -- all the link to view the DB
--%>
<%@include file="include/layout_top.jsp" %>
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
    <title>Admin Manage Page</title>
</head>
<div id="content">
    <h3>Admin Manage Page</h3>
    <div class="home">
        <span><a href="home.jsp">Home Content</a></span>
    </div>
    <br/>
    <div class="view">
        <span><a href="#">View Applicants</a></span>
        <span><a href="#">View Creators</a></span>
        <span><a href="#">View Reviewers</a></span>
        <span><a href="ScholarshipList">View Scholarships</a></span>
    </div>
    <br/>
    <div class="create">
        <span><a href="CreateUser">Create Reviewers</a></span>
    </div>
    <br/>
    <div class="approve">
        <span><a href="">Approve Creators</a></span>
        <span><a href="">Approve Scholarships</a></span>
    </div>
    <br/>
</div>
