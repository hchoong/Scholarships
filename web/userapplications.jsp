<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="include/include.jsp" %>
<html>
    <head>
        <title>Applications</title>
        <link href="css/jquery.dataTables.css" rel="stylesheet" media="screen">
        <script src="js/jquery.dataTables.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {              
                $("#applicationtable").dataTable();
                if(${ param.alert eq 'success'}) {
                    alert("Congratulation! You have applied a scholarship.");
                }
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
                <c:forEach var="s" begin="0" items="${requestScope.applications}">
                    <tr>
                        <td><a href="userapplicationinfo.jsp">${s.scholarshipsId.name}</a></td>
                        <td>${s.dateApplied}</td>
                        <td>${s.studentsId.gpa}</td> 
                        <td>${s.status}</td>                        
                    </tr>                         
                </c:forEach>
                <tr>
                    <td><a href="userapplicationinfo.jsp">Citi</a></td>
                    <td>10/13/12</td>
                    <td>Citi Group</td>
                    <td>Not Accepted</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
