<%-- 
    Document   : scholarship
    Created on : Dec 15, 2012, 4:43:04 PM
    Author     : Eric Wang
--%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Scholarship Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/all.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function() {
            $( "#datepicker" ).datepicker();
        });
    </script>
    <style type="text/css">
        .criteria
        {
            padding-left: 100px;
        }
    </style>
</head>
<body>
    <h4>Create a New Scholarship</h4>
    <form action="ScholarshipCreate" name="scholarship-create" method="post" class="form-horizontal">
        <div class="heading"><h5>General Information</h5></div>
        <div class="control-group">
            <label class="control-label" for="name">Name: </label>
            <div class="controls">
                <input type="text" name="name" value="" required placeholder="Scholarship Name"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="descriptions">Descriptions: </label>
            <div class="controls">
                <textarea name="descriptions" value="" rows="5" cols="10" required placeholder="Enter the descriptions."></textarea>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="qualifications">Qualifications: </label>
            <div class="controls">
                <textarea name="qualifications" value="" rows="5" cols="10" required placeholder="Enter the qualifications."></textarea>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="amount">Amount: </label>
            <div class="controls">
                <input type="text" name="amount" class="input-small" value=""/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="quantity">Quantity: </label>
            <div class="controls">
                <input type="text" name="quantity" class="input-smaller" value=""/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="deadline">Deadline: </label>
            <div class="controls">
                <input type="text" class="input-small" name="deadline" id="datepicker" value=""/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="academic_year">Academic Year: </label>
            <div class="controls">
                <input type="text" name="academic_year" value=""/>
            </div>
        </div>
        <div class="heading"><h5>Criteria</h5></div>
        <div class="control-group">
            <label class="control-label" for="gpa">Minimum GPA:</label>
            <div class="controls">
                <input type="text" name="gpa" value=""  class="input-smaller" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="major">Major:</label>
            <div class="controls">
                <input type="text" name="major" value="" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="ethnicity">Ethnicity:</label>
            <div class="controls">
                <input type="text" name="ehtnicity" class="input-small" value=""/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="statement">Statement Name:</label>
            <div class="controls">
                <input type="text" name="statement" value="" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="rec">Type of Recommendation:</label>
            <div class="controls">
                <input type="text" name="rec" value=""/>
            </div>
        </div>
    </div>
    <div align="right">
        
    <div class="button-group btn-group">
        <input class="btn btn-primary" type="submit" value="Submit"/>
        <input class="btn btn-primary" type="button" onclick="javascript:history.go(-1)" value="Cancel"/>
        <input class="btn btn-primary" type="reset" value="Reset"/>
    </div>
    </div>
</form>
</body>

