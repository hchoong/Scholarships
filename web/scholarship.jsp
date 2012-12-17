<%-- 
    Document   : scholarship
    Created on : Dec 15, 2012, 4:43:04 PM
    Author     : Eric Wang
--%>

<%@include file="include/include.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
    <head>        
        <title>Scholarship</title>
        <link href="css/jquery.dataTables.css" rel="stylesheet" media="screen">
        <script src="js/jquery.dataTables.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('#scholarshiptable').dataTable();
                
                if(${sessionScope.user.type}!=1){
                    $("#create").hide();
                }
            } );
        </script>
        <style type="text/css">
         
            .scholarshipcreate
            {
                text-align: right; 
            }
            th {
                text-align: left;
            }
            

        </style>
    </head>
    <body>
        <h3>Scholarships</h3>
        <div class="scholarshipcreate" id="create">
            <a class="btn btn-danger" id="createscholarshipbtn" href="scholarshipcreate.jsp">Create a Scholarship</a>
        </div>
        <br/>
        <div class="content">
            <table id="scholarshiptable">
                <thead>
                    <tr>
                        <th>Scholarship Name</th>
                        <th>Major</th>
                        <th>Academic Year</th>
                        <th>Deadline</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="s" begin="0" items="${requestScope.scholarships}">
                    <tr>
                        <td><a href="${sessionScope.user.type eq 4?"Scholarship":"Applications"}?id=${s.scholarshipsId}">${s.name}</a></td> 
                        <td></td> 
                        <td>${s.academicYear}</td>
                        <td>${s.deadline}</td>
                    </tr>                         
                </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
