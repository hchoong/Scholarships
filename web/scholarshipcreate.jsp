<%-- 
    Document   : scholarship
    Created on : Dec 15, 2012, 4:43:04 PM
    Author     : Eric Wang
--%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Scholarship Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
    $(function() {
        $( "#datepicker" ).datepicker();
    });
    </script>
</head>
<body>
    <h1>Scholarship</h1>
    <form action="" name="scholarship-create" method="post" class="form-horizontal">
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
                <input type="text" name="qualifications" value=""/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="quantity">Quantity: </label>
            <div class="controls">
                <input type="text" name="quantity" value=""/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="deadline">Deadline: </label>
            <div class="controls">
                <input type="text" name="deadline" id="datepicker" value=""/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="academic_year">Academic Year: </label>
            <div class="controls">
                <input type="text" name="academic_year" value=""/>
            </div>
        </div>
        <div class="button-group">
            <input class="btn btn-primary" type="submit" value="Submit"/>
            <input class="btn btn-primary" type="button" value="Cancel"/>
            <input class="btn btn-primary" type="reset" value="Reset"/>
        </div>
    </form>
</body>

