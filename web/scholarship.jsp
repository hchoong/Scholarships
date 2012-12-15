<%-- 
    Document   : scholarship
    Created on : Dec 15, 2012, 4:43:04 PM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scholarship</title>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript">
            function toggleCreateScholarship()
            {
                document.getElementById('create').style.display='hide';
            }
        </script>
        <style type="text/css">
            body
            {
                margin-right: auto;
                margin-left: auto;
            }
            .scholarshipcreate
            {
                text-align: right; 
            }
            .content
            {
                margin-right: auto;
                margin-left: auto;
            }
        </style>
    </head>
    <body onload="toggleCreateScholarship()">
        <div class="scholarshipcreate" id="create">
            <br />
            <a class="btn btn-danger" id="createscholarshipbtn" href="scholarshipcreate.jsp">Create a Scholarship</a>
        </div>
        <div class="content">
            <table id="schoarshiptable" class="table-condensed table-bordered">
                <thead>
                    <tr>
                        <th>Scholarship Name</th>
                        <th>Major</th>
                        <th>Academic Year</th>
                        <th>Deadline</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nasa</td>
                        <td>Physics</td>
                        <td>2012-2013</td>
                        <td>March-12-2013</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
