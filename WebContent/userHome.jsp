<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Om Book Library</title>
<!--Core JavaScript file  -->
    <script src="mainpageassets/js/jquery-1.10.2.js"></script>
    <!--bootstrap JavaScript file  -->
    <script src="mainpageassets/js/bootstrap.js"></script>
     <script src="script/jquery.dataTables.min.js"></script>
	 <script src="script/main.js"></script>
	 <link href="style/jquery.dataTables.min.css" rel="stylesheet">
   
    
    <!-- Bootstrap core CSS -->
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
<script>
$(document).ready(function(){
	  $('#myModal').modal(); 
	       
	   
	});
</script>
<!--For model popup  -->
<div class="container">
  
  
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Make Payment</h4>
        </div>
        <div class="modal-body">
          
          <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                    <div class="alert alert-info">
                        <i class="fa fa-folder-open"></i><b>&nbsp;Hello ! </b>Welcome Back 
 <i class="fa  fa-pencil"></i> Payment is Pending do ASAP
                    </div>
                </div>
                <!--end  Welcome -->
            </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default" data-dismiss="modal" onClick="window.location='userMembershipFee.jsp';" > Payment</buton> 
        </div>
      </div>
    </div>
  </div>
</div>
<!--End For model popup  -->

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
                   
                    <li><a href="userAvailableBook.jsp">Available Book</a></li>
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Book <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="userBookIssue.jsp"><strong>Issue </strong></a></li>
                            <li class="divider"></li>
                            <li><a href="userBookReturn.jsp"><strong>Return </strong> </a>
                           </li>
                            <li class="divider"></li>
                           <li><a href="userBookRequest.jsp"><strong>Request </strong> </a>
                           </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Payment <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="userMembershipFee.jsp"><strong>Membership fee </strong></a></li>
                            <li class="divider"></li>
                            <li><a href="userLateFee.jsp"><strong>Late fine </strong> </a>
                           </li>
                        </ul>
                    </li>
                      <li><a href="#">Track</a></li>
                       <li><a href="userReport.jsp">Report</a></li>
                        <li><a href="userUpdate.jsp">Update</a></li>
	                  <li><a href="home.jsp">Logout</a></li>
                </ul>
               
            </div>
            <!-- /.navbar-collapse -->
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="well well-lg offer-box text-center">
                   Today's Offer : &nbsp; <span class="glyphicon glyphicon-cog"></span>&nbsp;On membership get a money back using cradit /debit card               
                </div>
                <div class="main box-border">
                    <div id="mi-slider" class="mi-slider">
                        <ul>

                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/romance1.jpg" alt="img01"><h4>Entwined </h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/romance2.jpg" alt="img02"><h4>Bared to you</h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/romance3.jpg" alt="img03"><h4> 50 Shades </h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/romance4.jpg" alt="img04"><h4> To be Dirty</h4>
                            </a></li>
                        </ul>
                        <ul>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/mystery1.jpg" alt="img01"><h4>  Shadows</h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/mystery2.jpg" alt="img02"><h4> Dark Corners</h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/mystery3.jpg" alt="img03"><h4>  Catch Me</h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/mystery4.jpg" alt="img04"><h4>Killing Floor</h4>
                            </a></li>
                        </ul>
                        <ul>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/inspirational2.jpg" alt="img01"><h4>Born to run</h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/inspirational3.jpg" alt="img02"><h4>Into the earth </h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/inspirational4.jpg" alt="img03"><h4>It was me </h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/inspirational5.jpg" alt="img04"><h4>Alchemist</h4>
                            </a></li>
                        </ul>
                        <ul>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/fantasy1.jpg" alt="img01"><h4>Game of thrones</h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/fantasy2.jpg" alt="img02"><h4>Lord of the rings</h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/fantasy3.jpg" alt="img03"><h4>The book of deaccan </h4>
                            </a></li>
                            <li><a href="#">
                                <img src="mainpageassets/ItemSlider/image/fantasy6.jpg" alt="img04"><h4>Night angels : Brent weeks</h4>
                            </a></li>
                        </ul>
                        <nav>
                            <a href="#">Romance</a>
                            <a href="#">Mystery</a>
                            <a href="#">Inspirational</a>
                            <a href="#">Fantasy</a>
                        </nav>
                    </div>
                    
                </div>
                <br />
            </div>
            <!-- /.col -->
            
            <div class="col-md-3 text-center">
                <div class=" col-md-12 col-sm-6 col-xs-6" >
                    <div class="offer-text">
                        Available
                    </div>
                    <div class="thumbnail product-box">
                        <img src="mainpageassets/ItemSlider/image/fantasy3.jpg" alt="" />
                        <div class="caption">
                            <h3><a href="#">The book of deacon </a></h3>
                            <p><a href="#">Author : Brent weeks</a></p>
                        </div>
                    </div>
                </div>
                
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-md-3">
                <div>
                    <a href="#" class="list-group-item active">Most read book
                    </a>
                    <ul class="list-group">

                        <li class="list-group-item">Fifty shades of gray
      <span class="label label-primary pull-right">234</span>
                        </li>
                        <li class="list-group-item">Die trying
                      <span class="label label-success pull-right">34</span>
                        </li>
                        <li class="list-group-item">The alchemist
                         <span class="label label-danger pull-right">479</span>
                        </li>
                        <li class="list-group-item">Born to run
                             <span class="label label-info pull-right">434</span>
                        </li>
                        <li class="list-group-item">Night angel
                             <span class="label label-success pull-right">34</span>
                        </li>
                    </ul>
                </div>
                <!-- /.div -->
                <div>
                    <a href="#" class="list-group-item active list-group-item-success">Available book
                    </a>
                    <ul class="list-group">

                        <li class="list-group-item">Die trying
                             <span class="label label-danger pull-right">300</span>
                        </li>
                        <li class="list-group-item">Born to run
                             <span class="label label-success pull-right">340</span>
                        </li>
                        <li class="list-group-item">Night angel
                             <span class="label label-info pull-right">735</span>
                        </li>

                    </ul>
                </div>
                <!-- /.div -->
                <div>
                    <a href="#" class="list-group-item active">Most searched author
                    </a>
                    <ul class="list-group">
                        <li class="list-group-item">Brent weeks
                             <span class="label label-warning pull-right">456</span>
                        </li>
                        <li class="list-group-item">E L James
                             <span class="label label-success pull-right">156</span>
                        </li>
                        <li class="list-group-item">Savanna Fox
                             <span class="label label-info pull-right">400</span>
                        </li>
                        <li class="list-group-item">Sylvia Day
                             <span class="label label-primary pull-right">89</span>
                        </li>
                        <li class="list-group-item">Lisa Gardner
                             <span class="label label-danger pull-right">90</span>
                        </li>
                        <li class="list-group-item">Michael J. sullivan
                             <span class="label label-warning pull-right">567</span>
                        </li>
                    </ul>
                </div>
                <!-- /.div -->
                
                <!-- /.div -->
                <div class="well well-lg offer-box offer-colors">


                    <span class="glyphicon glyphicon-star-empty"></span>25 % off  , GRAB IT                 
              
                   <br />
                    <br />
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
                            style="width: 70%">
                            <span class="sr-only">70% Complete (success)</span>
                            2hr 35 mins left
                        </div>
                    </div>
                    <a href="#">click here to know more </a>
                </div>
                <!-- /.div -->
            </div>
            <!-- /.col -->
            <div class="col-md-9">
                <div>
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li class="active">Book</li>
                    </ol>
                </div>
                <!-- /.div -->
                <div class="row">
                    <div class="btn-group alg-right-pad">
                        <button type="button" class="btn btn-default"><strong>6  </strong>Books</button>
                        
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="mainpageassets/ItemSlider/image/romance8.jpg" alt="" />
                            <div class="caption">
                                <h3><a href="#">Bared to you </a></h3>
                                <p>Read : <strong> 45,900</strong>  </p>
                                
                                <p><a href="#" class="btn btn-success" role="button">Read</a> <a href="#" class="btn btn-primary" role="button">See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="mainpageassets/ItemSlider/image/mystery10.jpg" alt="" />
                            <div class="caption">
                                <h3><a href="#">Stuart woods </a></h3>
                                <p>Read : <strong>3,45,900</strong>  </p>
                               
                                
                                <p><a href="#" class="btn btn-success" role="button">Read</a> <a href="#" class="btn btn-primary" role="button">See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="mainpageassets/ItemSlider/image/mystery12.jpg" alt="" />
                            <div class="caption">
                                <h3><a href="#">The dead man</a></h3>
                                <p>Read : <strong>1,45,900</strong>  </p>
                                <p><a href="#">Related Book</a></p>
                               
                                <p><a href="#" class="btn btn-success" role="button">Read</a> <a href="#" class="btn btn-primary" role="button">See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
                
                <!-- /.row -->
               
               
                <div class="row">
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="mainpageassets/ItemSlider/image/romance4.jpg" alt="" />
                            <div class="caption">
                                <h3><a href="#">Bound to be dirty </a></h3>
                                <p>Read : <strong>450,980</strong>  </p>
                               
                                <p>
                                    <a href="#" class="btn btn-success" role="button">Read</a>
                                    <a href="#" class="btn btn-primary" role="button">See Details</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="mainpageassets/ItemSlider/image/mystery2.jpg" alt="" />
                            <div class="caption">
                                <h3><a href="#">Dark corner </a></h3>
                                <p>Read : <strong>89,900</strong>  </p>
                                
                                <p><a href="#" class="btn btn-success" role="button">Read</a> <a href="#" class="btn btn-primary" role="button">See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">
                            <img src="mainpageassets/ItemSlider/image/mystery1.jpg" alt="" />
                            <div class="caption">
                                <h3><a href="#">Fatal shadows </a></h3>
                                <p>Read : <strong>5,900</strong>  </p>
                                
                                <p><a href="#" class="btn btn-success" role="button">Read</a> <a href="#" class="btn btn-primary" role="button">See Details</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
                
            </div>
            <!-- /.col -->
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
    
    
    <!--Slider JavaScript file  -->
    <script src="mainpageassets/ItemSlider/js/modernizr.custom.63321.js"></script>
    <script src="mainpageassets/ItemSlider/js/jquery.catslider.js"></script>
    <script>
        $(function () {

            $('#mi-slider').catslider();

        });
		</script>
</body>
</html>
