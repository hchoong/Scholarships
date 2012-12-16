<%-- 
    Document   : usercreate
    Created on : Dec 15, 2012, 6:30:59 PM
    Author     : Howie
--%>
<%@include file="include.jsp" %>
<%@include file="layout_top.jsp" %>
<head>
    <title>Create User</title>
</head>
<body>
    <h1>Create User</h1>
    <form action="CreateUser" name="user-create" method="post" class="form-signin">
        <label for="name">Username: </label>
        <input type="text" name="name" required placeholder="Username"/>
        <label for="name">Password </label>
        <input type="password" name="password" required placeholder="Password"/>
        <label for="name">Confirm Password: </label>
        <input type="password" name="conpassword" required placeholder="Confirm Password"/>
        <label for="name">Email: </label>
        <input type="email" name="email" required placeholder="Email"/>
        <label for="name">User Type: </label>
        <select name="usertype" disabled>
            <option value="1">Admin</option>
            <option value="2">Reviewer</option>
            <option value="3">Creator</option>
            <option value="4" selected>Student</option>
        </select> 
        <br/>
        <div class="button-group">
            <input class="btn btn-primary" type="submit" value="Create"/>
            <input class="btn btn-primary" type="reset" value="Reset"/>
        </div>
    </form>
</body>

