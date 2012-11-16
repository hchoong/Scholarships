<%-- 
    Document   : login
    Created on : Nov 16, 2012, 1:58:54 AM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #FFFFFF;
      }
      .form-heading-text
      {
          text-align:center;
      }
      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color:#f5f5f5;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    </head>
    <body>
        <div class="container">
            <h2 class="form-signin-heading form-heading-text"><img src = "img/sbulogo.png" /> Scholarship System Sign-in</h2>
      <form class="form-signin">
        
        <input type="text" class="input-block-level" placeholder="NetID">
        <input type="password" class="input-block-level" placeholder="Password">
        <button class="btn btn-large btn-danger" type="submit">Sign in</button>
        <button class="btn btn-primary" type="submit">Click</button>
      </form>

    </div>
    </body>
</html>
