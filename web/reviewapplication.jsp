<%-- 
    Document   : reviewapplication
    Created on : Dec 16, 2012, 5:19:50 PM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review Application</title>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="css/all.css" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <style type="text/css">
            
            .text-font
            {
                font-size: 15px;
            }
            .num
            {
                padding-bottom: 2px;
            }
            body
            {
                
            }
            .content
            {
                position: absolute;
                margin-left: auto;
                margin-right: auto;
                left: 0;
                right: 0;
            }
        </style>
    </head>
    <body>
        <div class="content">
        <div name="top">
            <h3>Review Applicant</h3>
            <div class="form-box">
                <div class="heading"><h5>Criteria</h5></div>
                <div class="text-font">
                <label>GPA</label><input type="text" class="input-xsmall" />/10
                <label>Personal Statement</label>
                <input type="text" class="input-xsmall" />/10
                <label>Recommendation Letter</label>
                <input type="text" class="input-xsmall" />/10
                <label>Major</label>
                <input type="text" class="input-xsmall" />/10
                </div>
            </div>

            <div class="form-box">
                <div class="heading"><h5>Reviewer's Comments</h5></div>
                <textarea class="textarea-big" type="textarea" cols="0" rows="5"  ></textarea>
                <div align="right">
               <a class="btn btn-danger" name="submitreview" href="homecontent.jsp">SUBMIT REVIEW</a> 
            </div>
            </div>
            
            
                    
        </div>
        <div name="bottom" class="form-box">
            <%@include  file="userapplicationinfo.jsp" %>
        </div>
        </div>
    </body>
</html>
