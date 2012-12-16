<%-- 
    Document   : accountsettings
    Created on : Dec 15, 2012, 7:12:05 PM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <title>Account Settings</title>
        <style type="text/css">
            .inputdiv
            {
               
                
                
            }
            .heading
            {
                width: 100%;
                background-color: gainsboro;
                border-radius: 5px;
                
            }
        </style>
    </head>
    <body>
        <h3>Settings</h3>
        <div class="inputdiv">
            <div class="heading">
                <h5>&nbsp;Reset Password</h5>
            </div>
        
        <table class="table-condensed">
            <tr>
                <td>Current Password</td>
                <td><input type="text" /></td>
            </tr>
            <tr>
                <td>New Password</td>
                <td><input type="text" /></td>
            </tr>
            <tr>
                <td> Confirm New Password</td>
                <td><input type="text" /></td>
            </tr>
        </table>
            <br />
            <button class="btn btn-danger">Change Password</button>
        </div>
    </body>
</html>
