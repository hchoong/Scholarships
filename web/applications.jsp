<%-- 
    Document   : applications
    Created on : Dec 16, 2012, 7:16:06 PM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Applications</title>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="css/all.css"/>
        <style>
            .form-width
            {
                width: 70%;
            }
        </style>
        
    </head>
    <body>
        <h3>Applications for ""</h3>
        <br/>
        <div class="form-width">
            <div align="right"><label class="label label-info">Quantity: 2</label></div>

            <div class="heading"><h5>Applications</h5></div>
            <table class="table" id="applicationtable">
                <thead>
                    <tr>
                        <th>Applicant Name</th>
                        <th>GPA</th>
                        <th>Class</th>
                        <th>Rank</th>
                        <th>Status</th>
                        <th>Offer Scholarship</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Wolfie Seawolf</td>
                        <td>3.99</td>
                        <td>U4</td>
                        <td>1</td>
                        <td>Pending</td>
                        <td><button class="btn btn-danger">Award</button></td>
                    </tr>
                    <tr>
                        <td>ABC</td>
                        <td>3.0</td>
                        <td>U2</td>
                        <td>2</td>
                        <td>Not Offered</td>
                        <td><button class="btn btn-danger" disabled="true">Award</button></td>
                    </tr>
                </tbody>
            </table>
        </div>

    </body>
</html>
