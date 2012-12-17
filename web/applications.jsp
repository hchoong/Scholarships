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
        <script type="text/javascript">
             $(document).ready(function() {
                 if(${sessionScope.user.type}!=1){
                    $('.offer').hide();
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
        <h3>Applications for "Citi"</h3>
        <br/>
        <div class="form-width">
            

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
                        <td>Eric Wang</td>
                        <td>3.99</td>
                        <td>U4</td>
                        <td>1</td>
                        <td><label id="lbl1">Pending</label></td>
                        <td class="offer"><button id="offer1" class="btn btn-danger" onclick="award('lbl1','offer1')">Award</button></td>
                        <td class="review"><a class="btn btn-danger" href="reviewapplication.jsp">Review</a></td>
                    </tr>
                    <tr>
                        <td>Howard Choong</td>
                        <td>3.8</td>
                        <td>U4</td>
                        <td>9</td>
                        <td><label id="lbl1">Reviewed</label></td>
                        <td class="offer"><button id="offer1" class="btn btn-danger" onclick="award('lbl1','offer1')">Award</button></td>
                        <td class="review"><a class="btn btn-danger" href="reviewapplication.jsp" disabled="true">Review</a></td>
                    </tr>
                </tbody>
            </table>
        </div>

    </body>
</html>
