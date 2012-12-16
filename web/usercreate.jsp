<%-- 
    Document   : usercreate
    Created on : Dec 15, 2012, 6:30:59 PM
    Author     : Howie
--%>
<%@include file="include.jsp" %>
<%@include file="layout_top.jsp" %>
<head>
    <title>Create User</title>
    <script language="javascript">        
        function validate(form) {
            var e = form.elements;            
            /* Your validation code. */            
            if(e['password'].value != e['confirm'].value) {
                alert('Your passwords do not match. Please type more carefully.');
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h1>Create User</h1>
    <form action="CreateUser" name="user-create" method="post" class="form-signin" onsubmit="return validate(this);">
        <label for="name">Username: </label>
        <input type="text" name="name" required placeholder="Username" value=/>
        <label for="name">Password </label>
        <input type="password" name="password" required placeholder="Password"/>
        <label for="name">Confirm Password: </label>
        <input type="password" name="confirm" required placeholder="Confirm Password"/>
        <label for="name">Email: </label>
        <input type="email" name="email" required placeholder="Email"/>
        <div class="hiddenfield" style="display:none">
        <label for="name">User Type: </label>
        <select name="usertype" >
            <option value="1">Admin</option>
            <option value="2">Reviewer</option>
            <option value="3">Creator</option>
            <option value="4" selected>Student</option>
        </select> 
        </div>
        <br/>
        <div class="button-group">
            <input class="btn btn-primary" type="submit" value="Create"/>
            <input class="btn btn-primary" type="reset" value="Reset"/>
        </div>
    </form>
</body>

