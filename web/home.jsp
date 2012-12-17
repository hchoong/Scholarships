<%-- 
    Document   : home
    Created on : Nov 16, 2012, 6:01:22 PM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stony Brook University Scholarship System</title>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <style type="text/css">
            .red
            {
                background-color: red;
            }
            .nintypercentwidth
            {
                width: 85%;
            }
            .tenpercentwidth
            {
                width: 15%;
            }
            .hundredpercentwidth
            {
                width: 100%;
            }
            .eighthundredwidth
            {
                width: 800px;
            }
            .content
            {
                width: 1000px;
                margin-left: auto;
                margin-right: auto;
            }
            .hrefcolor
            {
                color: white;
            }
            .navfont
            {
                font-size: 15px;
                font-family: calibri;
                vertical-align:text-top;
            }
            .topbannerwidth
            {
                width: 960px;
                margin-left:auto;
                margin-right:auto;
            }
            .heightonehundred
            {
                height: 100%;
            }
            .frameheight
            {
                height: 800px;
            }
            .hundredpercentheight
            {
                height: 100%;
            }
            .nintysevenpercentwidth
            {
                width: 97%;
            }
            .black
            {
                background-color: black;
            }
            .textblock
            {
                text-align: left;
                vertical-align:text-top;
            }
            .navpadding
            {
                padding-left: 30px;
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function() {
                var type = sessionScope.user.type;
                if(type!=1){
                    $("#manage").hide();
                }
                if(type!=3)
                {
                    $("#profile").hide();
                    $("#applications").hide();
                    $("#documents").hide();
                }
            } );
            function loadHomeContent()
            {
                var type = sessionScope.user.type;
                document.getElementById("main").src="homecontent.jsp";
                if(type!=1)
                {
                    document.getElementById("manage").style.display='none';
                }
                if(type!=4)
                {
                    document.getElementById("manage").style.display='none';
                    document.getElementById("manage").style.display='none';
                    document.getElementById("m").style.display='none';
                }
            }
        </script>
    </head>
    <body class="content" onload="loadHomeContent()">
        <div id="topbanner" class="topbannerwidth">
            <img src="img/banner1.png"/>
        </div>
        <div class="container-fluid hundredpercentheight">
            <div class="row-fluid frameheight">
                <div class="span2 red navfont hundredpercentheight navpadding">
                    <a href="homecontent.jsp" target="main" class="hrefcolor">Home</a><br /><br />
                    <a id="profile" href="userprofile.jsp" target="main" class="hrefcolor">Profile<br /><br /></a>
                    <a href="ScholarshipList" target="main" class="hrefcolor">Scholarships</a><br /><br />
                    <a id="applications" href="userapplications.jsp" target="main" class="hrefcolor">Applications<br /><br /></a>
                    <a id="documents"href="documents.jsp" target="main"class="hrefcolor">Documents<br /><br /></a>
                    <a href="accountsettings.jsp" target="main" class="hrefcolor">Settings</a><br /><br />
                    <a id="manage" href="admin_manage.jsp" target="main" class="hrefcolor">Manage<br/><br/></a>
                    <a href="#" target="main" class="hrefcolor">Help</a><br /><br />
                    <a href="Logout" class="hrefcolor">Log out</a>
                </div>
                <div class="span10 hundredpercentheight">
                    <iframe id="main" class="nintysevenpercentwidth frameheight" seamless="seamless" >
                    </iframe>
                </div>
            </div>
        </div>
    </body>
</html>
