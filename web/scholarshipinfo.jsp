<%-- 
    Document   : scholarshipinfo
    Created on : Dec 16, 2012, 7:47:17 PM
    Author     : Eric Wang
--%>

<%@include file="include/include.jsp" %>
<html>
    <head>
        <title>Scholarship Info</title>
        <script type="text/javascript">
            $(document).ready(function() {                
                if(${sessionScope.user.type}!=4){
                    $("#hide").hide();
                }
            } );
        </script>
    </head>
    <body>
        <h3>${requestScope.scholarship.name}</h3>
        <div align="right"><a id="hide" class="btn btn-danger" href="Apply?id=${sessionScope.scholarship.scholarshipsId}">APPLY</a></div>

        <div class="heading"><h5>Information</h5></div>
        <label>Award Quantity: ${sessionScope.scholarship.quantity}</label>
        <label>Amount: $${sessionScope.scholarship.amount}</label>
        <label>Academic Year: ${sessionScope.scholarship.academicYear}</label>
        <label>Deadline: ${sessionScope.scholarship.deadline}</label>

        <div>
            <div class="heading"><h5>Description</h5></div>
            <pre class="pre-scrollable textblock">${sessionScope.scholarship.descriptions}</pre>
        </div>

        <div>
            <div class="heading"><h5>Qualifications</h5></div>
            <!--        <pre class="pre-scrollable textblock">The criteria, e.g., gpa, major etc should also be loaded here.</pre>-->
            <pre class="pre-scrollable textblock">${sessionScope.scholarship.qualifications}</pre>
        </div>
        <div align="right">
            <input class="btn btn-danger" type="button" onclick="javascript:history.go(-1)" value="Back"/>
        </div>
    </body>
</html>
