<%-- 
    Document   : personalinfo
    Created on : Dec 2, 2012, 9:34:48 PM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <title>Profile</title>
        <!--<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".tabs").tabs();});</script>  -->
    </head>
    <body>
        <h3>Profile</h3>
        <ul class="nav nav-tabs"data-tabs="tabs">
            <li class="active"><a href="#personal" data-toggle="tab">Personal Information</a></li>
            <li><a href="#demographic" data-toggle="tab">Demographic Information</a></li>
            <li><a href="#additional" data-toggle="tab">Additional Information</a></li>
        </ul>
        
        <div id="my-tab-content" class="tab-content">
            <div class="tab-pane active" id="personal">
                <h5>Personal</h5>
                <table class="table">
                    <tr>
                        <td>
                            First Name
                        </td>
                        <td>
                            Middle Name(Optional)
                        </td>
                        <td>
                            Last Name
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" id="firstname" />
                        </td>
                        <td>
                            <input type="text" id="middlename" />
                        </td>
                        <td>
                            <input type="text" id="lastname" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tab-pane" id="demographic">
                
            </div>
            <div class="tab-pane" id="additional">
                
            </div>
        </div>
    </body>
    
</html>
