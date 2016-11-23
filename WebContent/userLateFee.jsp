<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Om Book Library</title>
    <!-- Bootstrap core CSS -->
     <link href="style/bootstrap.min.css" rel="stylesheet">
    <!-- Fontawesome core CSS -->
    <link href="mainpageassets/css/font-awesome.min.css" rel="stylesheet" />
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!--Slide Show Css -->
    <link href="mainpageassets/ItemSlider/css/main-style.css" rel="stylesheet" />
    <!-- custom CSS here -->
    <link href="mainpageassets/css/style.css" rel="stylesheet" />
     <link rel="stylesheet" href="style/bootstrap.vertical-tabs.css">  
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
                            <li><a href="#"><strong>Late fine </strong> </a>
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
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                
                <div class="main box-border">
                    <div class="row" style="min-height:300px;">
  <div  class="col-sm-6">
    <h3>Choose payment mode</h3>
    <hr/>
    <div class="col-xs-3"> <!-- required for floating -->
      <!-- Nav tabs -->
      <ul class="nav nav-tabs tabs-left">
        <li class="active"><a href="#craditCard" data-toggle="tab">Cradit Card</a></li>
        <li><a href="#debitCard" data-toggle="tab">Debit Card</a></li>
        <li><a href="#netBanking" data-toggle="tab">Net Banking</a></li>
        <li><a href="#cheque" data-toggle="tab">Cheque</a></li>
        <li><a href="#demandDraft" data-toggle="tab">Demand Draft</a></li>
      </ul>
    </div>

    <div class="col-xs-9">
      <!-- Tab panes -->
      <div class="tab-content">
        <div class="tab-pane active" id="craditCard">
										<div class="row">
											<div class="col-lg-12">
												<div class="form-group">
                                                <label>Amount :</label>
                                                <input class="form-control" name="lateFine" id="lateFine" type="text"  disabled>
                                           	    </div>
												<div class="form-group">
													<label>Cradit Card No :</label> <input class="form-control"
														name="cardNo" id="cardNo">
												</div>
												<button type="submit" class="btn btn-primary">Payment</button>
												<button type="reset" class="btn btn-success">Reset</button>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="debitCard">
										<div class="row">
											<div class="col-lg-12">
											<form action ="#" role="form" method="post" >
												<div class="form-group">
                                                <label>Amount :</label>
                                                <input class="form-control" name="lateFine" id="lateFine" type="text"  disabled>
                                           	    </div>
												<div class="form-group">
													<label>Debit Card No :</label> <input class="form-control"
														name="cardNo" id="cardNo">
												</div>
												<button type="submit" class="btn btn-primary">Payment</button>
												<button type="reset" class="btn btn-success">Reset</button>
												</form>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="netBanking">
										<div class="row">
											<div class="col-lg-12">
											<form action ="#" role="form" method="post" >
											    <div class="form-group">
                                                <label>Amount :</label>
                                                <input class="form-control" name="lateFine" id="lateFine" type="text"  disabled>
                                           	    </div>
												<div class="form-group">
													<label> Netbanking Customer ID :</label> <input
														class="form-control" name="customerID" id="customerID">
												</div>
												<div class="form-group">
													<label> Netbanking Password :</label> <input
														class="form-control" name="netBankingPasswors"
														id="netBankingPasswors">
												</div>
												<button type="submit" class="btn btn-primary">Payment</button>
												<button type="reset" class="btn btn-success">Reset</button>
												</form>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="cheque">
										<div class="row">
											<div class="col-lg-12">
											<form action ="#" role="form" method="post" >
											    <div class="form-group">
                                                <label>Amount :</label>
                                                <input class="form-control" name="lateFine" id="lateFine" type="text"  disabled>
                                           	    </div>
												<div class="form-group">
													<label>Cheque No :</label> <input class="form-control"
														name="chequeNo" id="chequeNo">
												</div>
												<button type="submit" class="btn btn-primary">Payment</button>
												<button type="reset" class="btn btn-success">Reset</button>
												</form>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="demandDraft">
										<div class="row">
											<div class="col-lg-12">
											<form action ="#" role="form" method="post" >
												<div class="form-group">
                                                <label>Amount :</label>
                                                <input class="form-control" name="lateFine" id="lateFine" type="text"  disabled>
                                           	    </div>
												<div class="form-group">
													<label>Demand Draft No :</label> <input class="form-control"
														name="draftNo" id="draftNo">
												</div>
												<button type="submit" class="btn btn-primary">Payment</button>
												<button type="reset" class="btn btn-success">Reset</button>
												</form>
											</div>
										</div>

									</div>
								</div>
    </div>

    <div class="clearfix"></div>

  </div>

  
</div>

<div class="clearfix"></div>  <!-- upto here -->
                    
                    
                    
                    
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
    <script src="mainpageassets/js/jquery-1.10.2.js"></script>
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
