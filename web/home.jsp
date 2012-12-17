<%-- 
    Document   : home
    Created on : Nov 16, 2012, 6:01:22 PM
    Author     : Eric Wang
--%>
<%@include file="include/include.jsp"%>
<html>
    <head>
        <title>Stony Brook University Scholarship System</title>
        <script type="text/javascript">
            function loadHomeContent()
            {
                document.getElementById("main").src="homecontent.jsp";
            }
        </script>
    </head>
    <body class="content" onload="loadHomeContent()">
        <div id="topbanner" class="topbannerwidth">
            <img src="img/banner1.png"/>
        </div>
        <div class="container-fluid hundredpercentheight">
            <div class="row-fluid frameheight">
                <div class="span2 color_red navfont hundredpercentheight navpadding">
                    <a href="homecontent.jsp" target="main" class="hrefcolor">Home</a><br /><br />
                    <a href="userprofile.jsp" target="main" class="hrefcolor">Profile</a><br /><br />
                    <a href="ScholarshipList" target="main" class="hrefcolor">Scholarships</a><br /><br />
                    <a href="userapplications.jsp" target="main" class="hrefcolor">Applications</a><br /><br />
                    <a href="documents.jsp" target="main"class="hrefcolor">Documents</a><br /><br />
                    <a href="accountsettings.jsp" target="main" class="hrefcolor">Settings</a><br /><br />
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
