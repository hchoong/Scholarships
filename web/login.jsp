<%-- 
    Document   : login
    Created on : Nov 16, 2012, 1:58:54 AM
    Author     : Eric Wang
--%>

<%@include file="include.jsp" %>
<html>
    <head>
        <title>Login Page</title>
        <link href="css/all.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <div class="container">
            <h2 class="form-signin-heading form-heading-text"><img src = "img/sbulogo.png" /> Scholarship System Sign-in</h2>
            <form class="form-signin">
                <input type="text" class="input-block-level" placeholder="Username">
                <input type="password" class="input-block-level" placeholder="Password">
                <button class="btn btn-danger" type="submit">Sign in</button>
                <br/><br/>
                <a href="usercreate.jsp">Create an account</a>
            </form>
        </div>
    </body>
</html>
