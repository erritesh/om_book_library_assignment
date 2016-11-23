<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Om Book Library</title>
    <script src="mainpageassets/js/jquery-1.10.2.js"></script>
    <link rel="stylesheet" href="style/jquery-ui.css">
    <link href="mainpageassets/css/bootstrap.css" rel="stylesheet">
    <!-- Fontawesome core CSS -->
    <link href="mainpageassets/css/font-awesome.min.css" rel="stylesheet" />
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!--Slide Show Css -->
    <link href="mainpageassets/ItemSlider/css/main-style.css" rel="stylesheet" />
    <!-- custom CSS here -->
    <link href="mainpageassets/css/style.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><strong>OM BOOK</strong> Library </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
                   
                    <li><a href="#">Signup</a></li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                           
                            <li><a href="userSignIn.jsp"><strong>User </strong></a></li>
                            <li class="divider"></li>
                            <li><a href="index.jsp"><strong>Admin </strong>
                                
                            </a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" placeholder="Enter Keyword Here ..." class="form-control">
                    </div>
                    &nbsp; 
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                
                <div class="main box-border">
                    <div id="mi-slider" class="mi-slider">
                          <form role="form" action="AddUserController" method="post">
                      <div class="col-lg-6">
                         
                             <div class="form-group">
                                            <label>First Name :</label>
                                            <input type="text" class="form-control" name="firstName" placeholder=" First Name">
                                        </div>
                             
                               <div class="form-group">
                                            <label>Username :</label>
                                            <input class="form-control" type="text" name="userName" placeholder=" Username">
                                        </div>  
                              
                                <div class="form-group">
                                            <label>Password :</label>
                                            <input class="form-control" type="password" name="password" placeholder="Password">
                                        </div>          
                                         
                                  
                                         <div class="form-group">
                                              <label>Address :</label>
                                            <textarea class="form-control" rows="3" type="text" name="address" placeholder="Address"></textarea>
                                        </div>       
                                         <button type="submit" class="btn btn-primary">Register </button>
                                        <button type="reset" class="btn btn-success">Reset </button> 
                                </div>
                                 <div class="col-lg-6">
                                
                                        <div class="form-group">
                                            <label>Last Name :</label>
                                            <input class="form-control" type="text" name="lastName"  placeholder="Last Name">
                                        </div> 
                                         <div class="form-group">
                                            <label>Email ID :</label>
                                            <input class="form-control" type="text" name="emailId" placeholder="Email ID">
                                        </div> 
                                         <div class="form-group">
                                            <label>DOB :</label>
                                            <input class="form-control" type="text" name="dob" id="datepicker" placeholder="Date Of Birth">
                                        </div>
                                        <div class="form-group">
                                            <label>Membership Type :</label>
                                            <select class="form-control" name="membershipType" >
                                                <option>Normal</option>
                                                <option>Platinum</option>
                                               
                                            </select>
                                        </div>
                                        
                                        
                                 </div>
                                 </form>
                    </div>
                </div>
                <br />
            </div>

            
            
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
    <div class="col-md-12 download-app-box text-center">
        <span class="glyphicon glyphicon-download-alt"></span>Download Our Android App and Get 10% additional Off on all Products . <a href="#" class="btn btn-danger btn-lg">DOWNLOAD  NOW</a>
    </div>
    <!--Footer -->
    <div class="col-md-12 footer-box">
    <!-- /.col -->
    <div class="col-md-12 end-box ">
        &copy; 2016 | &nbsp; All Rights Reserved | &nbsp; www.ombook.com | &nbsp; Email us: group@ombook.com
    </div>
    <!-- /.col -->
    <!--Footer end -->
    <!--Core JavaScript file  -->
    <script src="script/jquery-ui.js"></script>
   
    <!--bootstrap JavaScript file  -->
    <script src="mainpageassets/js/bootstrap.js"></script>
    <!--Slider JavaScript file  -->
    <script src="mainpageassets/ItemSlider/js/modernizr.custom.63321.js"></script>
    <script src="mainpageassets/ItemSlider/js/jquery.catslider.js"></script>
    <script>
        $(function () {

            $('#mi-slider').catslider();

        });
		</script>
		<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</body>
</html>
