<%-- 
    Document   : login
    Created on : Nov 16, 2012, 1:58:54 AM
    Author     : Eric Wang
--%>

<%@include file="include/include.jsp" %>
<html>
    <head>
        <title>Login Page</title>
        <link href="css/all.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <div class="loginbody">
            <div class="container">
                <h2 class="form-signin-heading form-heading-text"><img src = "img/sbulogo.png" /> Scholarship System Sign-in</h2>
                <form action="Login" name="user-login" method="post" class="form-signin">
                    <input type="text" class="input-block-level" name="username" placeholder="Username">
                    <input type="password" class="input-block-level" name="password" placeholder="Password">
                    <button class="btn btn-danger" type="submit">Sign in</button>
                    <br/><br/>
                    <a href="usercreate.jsp">Create an account</a>
                </form>
                <ul id="errorList">
                    <li id="incorrectUsernameError" ${ param.p eq 'e_iu' ? "" : "hidden"}>Login failed. Incorrect Username.</li>
                    <li id="serverError" ${ param.p eq 'e_se' ? "" : "hidden"}>Server error encountered.</li>
                    <li id="sessionTimeout" ${ param.p eq 'timeout' ? "" : "hidden"}>Session has time out. Login again.</li>
                    <li id="sessionTimeout" ${ param.p eq 'nosession' ? "" : "hidden"}>Session time out or not existed.</li>
                    <li id="sessionTimeout" ${ param.p eq 'logout' ? "" : "hidden"}>Logout successfully.</li>
                </ul>
            </div>
        </div>
    </body>
</html>
