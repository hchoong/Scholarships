<%-- 
    Document   : userverify
    Created on : Dec 16, 2012, 1:17:31 PM
    Author     : Howie
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.user ne null}">
    <c:redirect url="home.jsp" />
</c:if>
