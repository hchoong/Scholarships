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
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <style>
            .form-width
            {
                width: 70%;
            }
            .review
            {
                
            }
            .offer
            {
                
            }
        </style>
        <script type="text/javascript">
             $(document).ready(function() {
                 if(${sessionScope.user.type}!=1){
                    $('.offer').hide();
                    $('#qty').hide();
                } if(${sessionScope.user.type}!=2){
                    $('.review').hide();
                }
            } );
            function award(id,id2)
            {
                document.getElementById(id).innerHTML = "Offered";
                document.getElementById(id2).disabled = 'true';
            }
        </script>

    </head>
    <body onload="hideElements()">
        <h3>Applications for ""</h3>
        <br/>
        <div class="form-width">
            <div id="qty" align="right"><label class="label label-info">Quantity:</label></div>

            <div class="heading"><h5>Applications</h5></div>
            <table class="table" id="applicationtable">
                <thead>
                    <tr>
                        <th>Applicant Name</th>
                        <th>GPA</th>
                        <th>Class</th>
                        <th>Points</th>
                        <th>Status</th>
                        <th class="offer">Offer Scholarship</th>
                        <th class="review">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Wolfie Seawolf</td>
                        <td>3.99</td>
                        <td>U4</td>
                        <td>1</td>
                        <td><label id="lbl1">Pending</label></td>
                        <td class="offer"><button id="offer1" class="btn btn-danger" onclick="award('lbl1','offer1')">Award</button></td>
                        <td class="review"><button class="btn btn-danger">Review</td>
                    </tr>
                    <tr>
                        <td>ABC</td>
                        <td>3.0</td>
                        <td>U2</td>
                        <td>2</td>
                        <td>Not Offered</td>
                        <td class="offer"><button class="btn btn-danger" disabled="true">Award</button></td>
                        <td class="review"><button class="btn btn-danger">Review</td>
                    </tr>
                </tbody>
            </table>
        </div>

    </body>
</html>
