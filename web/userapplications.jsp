

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="include/include.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Applications</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
        <script type="text/javascript">
            $(document).ready(function() {
                $('#applicationtable').dataTable();
                alert('sdf');
            } );
        </script>
        <style type="text/css">
            .heading
            {
                width: 100%;
                background-color: gainsboro;
                border-radius: 5px;
            }
        </style>
    </head>

    <body>
        <h3>Applications</h3>

        <div class="heading">
            <h5>&nbsp;My Applications</h5>
        </div>

        <table id="applicationtable">
            <thead>
                <tr>
                    <th>Scholarship Name</th>
                    <th>Submit Date</th>
                    <th>Organization Name</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" begin="0" items="${requestScope.scholarships}">
                    <tr>
                        <td>${s.name}</td> 
                        <td></td> 
                        <td>${s.academicYear}</td>
                        <td>${s.deadline}</td>
                    </tr>                         
                </c:forEach>
                    <!--
                <tr>
                    <td>JP Morgan Chase</td>
                    <td>12/12/12</td>
                    <td>JP Morgan Chase</td>
                    <td>Pending</td>
                </tr>
                <tr>
                    <td>Citi</td>
                    <td>10/13/12</td>
                    <td>Citi Group</td>
                    <td>Not Accepted</td>
                </tr>
                <tr>
                    <td>Omnicon</td>
                    <td>11/05/12</td>
                    <td>Omnicon</td>
                    <td>Offered</td>
                </tr>-->

            </tbody>

        </table>
    </body>
</html>