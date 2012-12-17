<%-- 
    Document   : userapplicationinfo
    Created on : Dec 16, 2012, 7:33:13 AM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Application Info</title>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="css/all.css" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
         
    </head>
    <body>
        <div name="top">
            <div class="heading"><h5>Student Application Info</h5></div>
            <table>
                <tr>
                    <td>
                        <label>Scholarship Name:</label>
                    </td>
                    <td>
                        <div></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Applicant Name:</label>
                    </td>
                    <td>
                        <div></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Major(s):</label>
                    </td>
                    <td>
                        <div></div>
                    </td>
                    <td>
                        <label>GPA:</label>
                    </td>
                    <td>
                        <div></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Ethnicity:</label>
                    </td>
                    <td>
                        <div></div>
                    </td>
                    <td>
                        <label>Undergraduate Standing:</label>
                    </td>
                    <td>
                        <div></div>
                    </td>
                </tr>
            </table>
            
        </div>
        <div>
        <ul class="nav nav-tabs"data-tabs="tabs">
            <li class="active"><a href="#statement" data-toggle="tab">Personal Statement</a></li>
            <li><a href="#recommendation" data-toggle="tab">Recommendation</a></li>
        </ul>

        <div id="my-tab-content" class="tab-content">
            <div class="tab-pane active" id="statement">
            </div>
            <div class="tab-pane" id="recommendation"> 
            </div>
        </div>
    </body>
</html>
