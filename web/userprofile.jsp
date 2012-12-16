<%-- 
    Document   : personalinfo
    Created on : Dec 2, 2012, 9:34:48 PM
    Author     : Eric Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <title>Profile</title>

    </head>
    <style type="text/css">
            .inputdiv
            {
               
                
                
            }
            .heading
            {
                width: 100%;
                background-color: gainsboro;
                border-radius: 5px;
                
            }
        </style>
    <body>
        <h3>Profile</h3>
        <ul class="nav nav-tabs"data-tabs="tabs">
            <li class="active"><a href="#personal" data-toggle="tab">Personal Information</a></li>
            <li><a href="#demographic" data-toggle="tab">Demographic Information</a></li>
            <li><a href="#additional" data-toggle="tab">Additional Information</a></li>
        </ul>

        <div id="my-tab-content" class="tab-content">
            <div class="tab-pane active" id="personal">
                <div class="heading">
                <h5>&nbsp;Name</h5>
            </div>
                <table class="table">
                    <tr>
                        <td>
                            First Name
                        </td>
                        <td>
                            Middle Name( Optional)
                        </td>
                        <td>
                            Last Name
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" id="firstname" />
                        </td>
                        <td>
                            <input type="text" id="middlename" />
                        </td>
                        <td>
                            <input type="text" id="lastname" />
                        </td>
                    </tr>
                </table>
                <br/>
                <div class="heading">
                <h5>&nbsp;Address</h5>
            </div>
                
                <style>
                    #widthforlabel{
                        width: 20%;
                    }
                    #widthforboxes{
                        width: 50%
                    }
                </style>

                <div>
                    <table class="table">
                        <tr>
                            <td>
                                Address One:
                            </td>
                            <td>
                                <input type="text" name="address">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address Two:
                            </td>
                            <td>
                                <input type="text" name="address2">
                            </td>
                        </tr>
                        <tr>
                            <td>City:</td>
                            <td><input type="text" name="city">
                            </td>
                        </tr>
                        <tr>
                            <td>State:</td>
                            <td><select name="State"> 
                                    <option value="" selected="selected">Select a State</option> 
                                    <option value="AL">Alabama</option> 
                                    <option value="AK">Alaska</option> 
                                    <option value="AZ">Arizona</option> 
                                    <option value="AR">Arkansas</option> 
                                    <option value="CA">California</option> 
                                    <option value="CO">Colorado</option> 
                                    <option value="CT">Connecticut</option> 
                                    <option value="DE">Delaware</option> 
                                    <option value="DC">District Of Columbia</option> 
                                    <option value="FL">Florida</option> 
                                    <option value="GA">Georgia</option> 
                                    <option value="HI">Hawaii</option> 
                                    <option value="ID">Idaho</option> 
                                    <option value="IL">Illinois</option> 
                                    <option value="IN">Indiana</option> 
                                    <option value="IA">Iowa</option> 
                                    <option value="KS">Kansas</option> 
                                    <option value="KY">Kentucky</option> 
                                    <option value="LA">Louisiana</option> 
                                    <option value="ME">Maine</option> 
                                    <option value="MD">Maryland</option> 
                                    <option value="MA">Massachusetts</option> 
                                    <option value="MI">Michigan</option> 
                                    <option value="MN">Minnesota</option> 
                                    <option value="MS">Mississippi</option> 
                                    <option value="MO">Missouri</option> 
                                    <option value="MT">Montana</option> 
                                    <option value="NE">Nebraska</option> 
                                    <option value="NV">Nevada</option> 
                                    <option value="NH">New Hampshire</option> 
                                    <option value="NJ">New Jersey</option> 
                                    <option value="NM">New Mexico</option> 
                                    <option value="NY">New York</option> 
                                    <option value="NC">North Carolina</option> 
                                    <option value="ND">North Dakota</option> 
                                    <option value="OH">Ohio</option> 
                                    <option value="OK">Oklahoma</option> 
                                    <option value="OR">Oregon</option> 
                                    <option value="PA">Pennsylvania</option> 
                                    <option value="RI">Rhode Island</option> 
                                    <option value="SC">South Carolina</option> 
                                    <option value="SD">South Dakota</option> 
                                    <option value="TN">Tennessee</option> 
                                    <option value="TX">Texas</option> 
                                    <option value="UT">Utah</option> 
                                    <option value="VT">Vermont</option> 
                                    <option value="VA">Virginia</option> 
                                    <option value="WA">Washington</option> 
                                    <option value="WV">West Virginia</option> 
                                    <option value="WI">Wisconsin</option> 
                                    <option value="WY">Wyoming</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td>Zip Code:</td>
                            <td><input type="text" name="zipcode"></td>
                        </tr>
                        <tr>
                            <td>Country:</td>
                            <td><input type="text" name="country">
                            </td>
                        </tr>
                    </table>
                </div>

            </div>
            <div class="tab-pane" id="demographic">
                <div class="heading">
                <h5>&nbsp;Gender Information</h5>
            </div>
                <style>
                    #test { padding-left: 1px;
                    }

                </style>

                <form id ="test">
                    <label class="radio">
                        <input type="radio" name="sex" value="male"/>&nbsp;Male<br>
                        <input type="radio" name="sex" value="female"/>&nbsp;Female
                    </label>
                </form>
                <br/>
                <div class="heading">
                <h5>&nbsp;Ethnicity (Optional)</h5>
            </div>
                <form id ="test">
                    <label class="radio">
                        <input type="radio" name="ethnicity" value="asian"/>&nbsp;Asian<br>
                        <input type="radio" name="ethnicity" value="african american"/>&nbsp;African American<br/>
                        <input type="radio" name="ethnicity" value="caucasian"/>&nbsp;Caucasian<br/>
                        <input type="radio" name="ethnicity" value="hispanic"/>&nbsp;Hispanic<br/>
                        <input type="radio" name="ethnicity" value="multiracial"/>&nbsp;Multiracial<br/>
                        <input type="radio" name="ethnicity" value="native american"/>&nbsp;Native American<br/>
                        <input type="radio" name="ethnicity" value="pacific islander"/>&nbsp;Pacific Islander<br/>
                    </label>
                </form>
                <br/>
                <div class="heading">
                <h5>&nbsp;U.S. Veteran Status</h5>
            </div>
                <form id ="test">
                    <label class="radio">
                        <input type="radio" name="veteran" value="yes"/>&nbsp;U.S. Veteran<br>
                        <input type="radio" name="veteran" value="no"/>&nbsp;Not a U.S. Veteran<br/>
                    </label>
                </form>
                </form>
                <br/>
               <div class="heading">
                <h5>&nbsp;Disability Status</h5>
            </div>
                <form id ="test">
                    <label class="radio">
                        <input type="radio" name="disabled" value="yes"/>&nbsp;Yes<br>
                        <input type="radio" name="disabled" value="no"/>&nbsp;No<br/>
                    </label>
                </form>


            </div>
            <div class="tab-pane" id="additional">
                <div class="heading">
                <h5>&nbsp;Major</h5>
            </div>
                <select>
                      <option value="" selected="selected">Select a Major</option> 
                    <option value="art">Art</option>
                    <option value="aas">Asian American Studies</option>
                    <option value="cse">Computer Science</option>
                    <option value="his">History</option>
                    <option value="soc">Sociology</option>
                </select>
                <br/><br/>
              <div class="heading">
                <h5>&nbsp;Minor</h5>
            </div>
                <select>
                      <option value="" selected="selected">Select a Minor</option> 
                    <option value ="ams">Applied Math & Statistics</option>
                    <option value="bus">Business</option>
                    <option value="eco">Economics</option>
                    <option value="jpn">Japanese Studies</option>
                    <option value="mus">Music</option>
                </select>
                <br/><br/>
                <div class="heading">
                <h5>&nbsp;GPA</h5>
            </div>
                <h6>Major GPA</h6>
                <input type="text" class="input-small" id="majorgpa"/>
                <h6>Overall GPA</h6>
                <input type="text" class="input-small" id="overallgpa"/>
            </div>
        </div>
    </body>

</html>
