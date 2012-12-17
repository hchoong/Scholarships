<%-- 
    Document   : apply
    Created on : Dec 16, 2012, 8:08:31 PM
    Author     : Eric Wang
--%>

<%@include file="include/include.jsp" %>
<html>
    <head>
        <title>Apply for a scholarship</title>
        <style type="text/css">
            .dropdown
            {
                width: 150px;
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function() {                
                $("#hide").hide();
            } );
        </script>
        <script type="text/javascript">            
            function toggleFile()
            {
                document.getElementById('selectstatement').style.display='none';
                document.getElementById('filestatement').style.display='none';
                document.getElementById('confirm1').style.display='none';
                document.getElementById('selectrec').style.display='none';
                document.getElementById('filerec').style.display='none';
                document.getElementById('confirm2').style.display='none';
                document.getElementById('selectresume').style.display='none';
                document.getElementById('fileresume').style.display='none';
                document.getElementById('confirm3').style.display='none';
                document.getElementById('cancel1').style.display='none';
            }
            function show(id)
            {
                document.getElementById(id).style.display='block';
            }
            function showSelect(id1,id2)
            {
                show(id1);show(id2);
            }
            function hide(confirmId,selectId,fileId)
            {
                document.getElementById(confirmId).style.display='none';
                document.getElementById(selectId).style.display='none';
                document.getElementById(fileId).style.display='none';
            }
            function confirm(textboxId,confirmId,selectId,fileId)
            {
                hide(confirmId,selectId,fileId,cancelId);
                var textbox = document.getElementById(textboxId);
                if(document.getElementById(fileId).value == '')
                {
                    var dropdown = document.getElementById(selectId);
                    textbox.value = dropdown.options[dropdown.selectedIndex].text;
                }
                else
                {
                    textbox.value = document.getElementById(fileId).value.replace(/^.*[\\\/]/, '');
                }
            }
        </script>
    </head>
    <body onload="toggleFile()">
        <h3>Apply</h3>
        <div name="top">
            <form>
                <table class="table-condensed">
                    <tr>
                        <td>Last Name:</td>
                        <td><input type="text" name="lastname" class="input-medium" value="${sessionScope.user.students.firstname}"/></td>
                        <td>First Name:</td>
                        <td><input type="text" name="firstname" class="input-medium" value="${sessionScope.user.students.lastname}"/></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="text" name="email" class="input-large" value="${sessionScope.user.email}"/></td>
                    </tr>
                    <tr>
                        <td>Major:</td>
                        <td><input type="text" name="major" class="input-small" value="${sessionScope.user.students.major}"/></td>
                    </tr>
                    <tr>
                        <td>GPA:</td>
                        <td><input type="text" name="gpa" class="input-smaller" value="${sessionScope.user.students.gpa}"/></td>
                    </tr>
                    <tr>
                        <td>Statement</td>
                        <td>
                            <input type="text" name="statement" id="textboxstatement" class="input" disabled="true"/>
                            <a href="#" id="choosestatement" onclick="showSelect('selectstatement','confirm1','cancel1')" >Choose</a> |
                            <a href="#" name="uploadstatement" id="uploadstatement" onclick="showSelect('filestatement','confirm1','cancel1')">Upload</a><br/>
                            <select name="selectstatement" id="selectstatement" class="dropdown">
                                <option>statement1</option>
                                <option>statement2</option>
                            </select>
                            <input type="file" name="filestatement" id="filestatement">
                            <button class="btn btn-primary" id="confirm1" onclick="confirm('textboxstatement','confirm1','selectstatement','filestatement')">Confirm</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Recommendation</td>
                        <td>
                            <input type="text" class="input" name="recommendation" id="textboxrec"disabled="true"/>
                            <a href="#" id="chooserec" onclick="showSelect('selectrec','confirm2')">Choose</a> |
                            <a href="#" name="uploadrec" id="uploadrec" onclick="showSelect('filerec','confirm2')">Upload</a><br/>
                            <select name="selectrec" id="selectrec" class="dropdown">
                                <option>recommendation 1</option>
                                <option>recommendation 2</option>
                            </select>
                            <input type="file" name="filerec" id="filerec" />
                            <button class="btn btn-primary" id="confirm2" onclick="confirm('textboxrec','confirm2','selectrec','filerec')">Confirm</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Resume</td>
                        <td>
                            <input type="text" class="input" name="resume" id="textboxresume" disabled="true"/>
                            <a href="#" id="chooseresume" onclick="showSelect('selectresume','confirm3')">Choose</a> |
                            <a href="#" name="uploadresume" id="uploadresume" onclick="showSelect('fileresume','confirm3')">Upload</a><br/>
                            <select name="selectresume" id="selectresume" class="dropdown">
                                <option>resume1</option>
                                <option>resume2</option>
                            </select>
                            <input type="file" name="fileresume" id="fileresume">
                            <button class="btn btn-primary" id="confirm3" onclick="confirm('textboxresume','confirm3','selectresume','fileresume')">Confirm</button>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td align="right">
                            <div class="btn-group">
                                <a class="btn btn-danger">Submit</a>
                                <a class="btn btn-danger" href="home.jsp">Cancel</a>
                            </div>
                        </td>
                    </tr>
                </table>
        </div>

        <div name="bottom">
            <br/>
            <%@include file="scholarshipinfo.jsp" %>
        </div>
    </form>
</body>
</html>
