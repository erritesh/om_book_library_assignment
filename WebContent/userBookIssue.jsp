<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.om.book.util.DBUtil" %>
<%@ page import= "java.sql.*" %>
<%@ page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Om Book Library</title>
	<script src="script/jquery-1.11.0.min.js"></script>
	 <script src="script/jquery-ui.js"></script>
	 <link rel="stylesheet" href="style/jquery-ui.css">
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
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
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
                
                <div class="main box-border">
                    <div id="mi-slider" class="mi-slider">
                    
                    <!--  code here -->
						<%
	                     	 PreparedStatement pst = null;
	                         Connection con = null;
	                         ResultSet rst = null;
	                         String bookName = null;
	                         try {
								con = DBUtil.getConnection();
								String query = "select BOOK_NAME from BOOK";
								pst = con.prepareStatement(query);
								rst = pst.executeQuery();
						%>
						 <div class="col-lg-4">
						  <form role="form" action="#" method="post">
							<div class="form-group">
							<label>Select Book Name :</label>
							</div>
						 <select class="form-control" name="bookNames">
	                     <%
						while (rst.next()) {
							bookName = rst.getString(1); %>
							<option><%=bookName%></option>
							<%} %>
							</select>
						   <%
							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
							<div class="form-group">
								<label>Date Of Issue :</label> <input class="form-control"
									type="text" name="txtDOI" id="datepicker" />
							</div>
							<div class="form-group">
								<label for="disabledSelect">No. of copies :</label> <input
									class="form-control" id="noOfCopies" type="text" disabled> 
							</div>
							<button type="submit" class="btn btn-primary">Issue Book
								</button>
							<button type="reset" class="btn btn-success">Reset Book
								</button>
							</form>
						</div>

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
</body>
</html>
