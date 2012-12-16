<%-- 
    Document   : scholarship
    Created on : Dec 15, 2012, 4:43:04 PM
    Author     : Eric Wang
--%>
<%@include file="include/include.jsp" %>
<head>
    <title>Scholarship Page</title>
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
                <input type="number" name="quantity" value=""/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="deadline">Deadline: </label>
            <div class="controls">
                <input type="date" name="deadline" value=""/>
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

