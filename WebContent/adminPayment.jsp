<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Admin</title>
<!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <link rel="stylesheet" href="style/w3.css">
    <!-- Page-Level CSS -->
    <link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
</head>
<style>
.city {display:none;}
</style>
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
               
                <a class="navbar-brand" href="adminMain.jsp">
                    <img src="assets/img/logoOm.jpg" alt="" height="100%" width = "90%" />
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-3x"></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="index.jsp"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                        </li>
                    </ul>
                    <!-- end dropdown-user -->
                </li>
                <!-- end main dropdown -->
            </ul>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                            <div class="user-section-inner">
                                <img src="assets/img/user.jpg" alt="">
                            </div>
                            <div class="user-info">
                                <div> <strong>Admin</strong></div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                    
                    <li class="selected">
                        <a href="admin/addBook.jsp"><i class="fa fa-files-o fa-fw"></i>Add New Book</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Collect<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="flot.html">Membership</a>
                            </li>
                            <li>
                                <a href="morris.html">Late Fine</a>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>
                     <li>
                        <a href="timeline.html"><i class="fa fa-wrench fa-fw"></i>Manage Membership</a>
                    </li>
                    <li>
                        <a href="tables.html"><i class="fa fa-table fa-fw"></i>Register New User</a>
                    </li>
                   
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Reports<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="panels-wells.html">New Book Request</a>
                            </li>
                            <li>
                                <a href="buttons.html">Book Issue</a>
                            </li>
                            <li>
                                <a href="notifications.html">Book Information</a>
                            </li>
                            <li>
                                <a href="typography.html">Active Members</a>
                            </li>
                            <li>
                                <a href="grid.html">Inactive Members</a>
                            </li>
                            <li>
                                <a href="grid.html">Membership Report</a>
                            </li>
                            <li>
                                <a href="grid.html">Membership Collect Report</a>
                            </li>
                            <li>
                                <a href="grid.html">Fine Collect Report</a>
                            </li>
                            <li>
                                <a href="grid.html">Report For Queries</a>
                            </li>
                           
                        </ul>
                        
                        
                    </li>
                    <li>
                        <a href="forms.html"><i class="fa fa-edit fa-fw"></i>Update User</a>
                    </li>
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Payment</h1>
                </div>
                <!-- code for card  -->
                
                <nav class="w3-sidenav w3-light-grey w3-card-2" style="width:164px">
  <div class="w3-container">
    <h5>Payment Mode</h5>
  </div>
  <a href="javascript:void(0)" class="tablink" onclick="openCity(event, 'creditCard')">Credit Card</a>
  <a href="javascript:void(0)" class="tablink" onclick="openCity(event, 'debitCard')">Debit Card</a>
  <a href="javascript:void(0)" class="tablink" onclick="openCity(event, 'netBanking')">Net Banking</a>
  <a href="javascript:void(0)" class="tablink" onclick="openCity(event, 'cheque')">Cheque</a>
  <a href="javascript:void(0)" class="tablink" onclick="openCity(event, 'demandDraft')">Demand Draft</a>
  
</nav>

<div style="margin-left:161px">

					<div class="row">
						<div class="col-lg-6">
							<div id="creditCard" class="w3-container city">
								<div class="form-group">
									<label>Amount :</label> <select class="form-control"
										name="amount" id="amount">
										<option>10000</option>
										<option>20000</option>
									</select>
								</div>
								<div class="form-group">
									<label>Cradit Card No :</label> <input class="form-control"
										name="cardNo" id="cardNo">
								</div>
								<button type="submit" class="btn btn-primary">Payment</button>
								<button type="reset" class="btn btn-success">Reset</button>
							</div>


							<div id="debitCard" class="w3-container city">
								<div class="form-group">
									<label>Amount</label> <select class="form-control"
										name="amount" id="amount">
										<option>10000</option>
										<option>20000</option>
									</select>
								</div>
								<div class="form-group">
									<label>Debit Card No :</label> <input class="form-control"
										name="cardNo" id="cardNo">
								</div>
								<button type="submit" class="btn btn-primary">Payment</button>
								<button type="reset" class="btn btn-success">Reset</button>
							</div>

							<div id="netBanking" class="w3-container city">
								<div class="form-group">
									<label>Amount :</label> <select class="form-control"
										name="amount" id="amount">
										<option>10000</option>
										<option>20000</option>
									</select>
								</div>
								<div class="form-group">
									<label> Netbanking Customer ID :</label> <input class="form-control"
										name="customerID" id="customerID">
								</div>
								<div class="form-group">
									<label> Netbanking Password :</label> <input class="form-control"
										name="netBankingPasswors" id="netBankingPasswors">
								</div>
								<button type="submit" class="btn btn-primary">Payment</button>
								<button type="reset" class="btn btn-success">Reset</button>
							</div>

							<div id="cheque" class="w3-container city">
								<div class="form-group">
									<label>Amount</label> <select class="form-control"
										name="amount" id="amount">
										<option>10000</option>
										<option>20000</option>
									</select>
								</div>
								<div class="form-group">
									<label>Cheque No :</label> <input class="form-control"
										name="chequeNo" id="chequeNo">
								</div>
								<button type="submit" class="btn btn-primary">Payment</button>
								<button type="reset" class="btn btn-success">Reset</button>
							</div>


							<div id="demandDraft" class="w3-container city">
								<div class="form-group">
									<label>Amount :</label> <select class="form-control"
										name="amount" id="amount">
										<option>10000</option>
										<option>20000</option>
									</select>
								</div>
								<div class="form-group">
									<label>Draft No :</label> <input class="form-control"
										name="draftNo" id="draftNo">
								</div>
								<button type="submit" class="btn btn-primary">Payment</button>
								<button type="reset" class="btn btn-success">Reset</button>
							</div>
						</div>

					</div>



				</div>

						<script>
							function openCity(evt, cityName) {
								var i, x, tablinks;
								x = document.getElementsByClassName("city");
								for (i = 0; i < x.length; i++) {
									x[i].style.display = "none";
								}
								tablinks = document
										.getElementsByClassName("tablink");
								for (i = 0; i < x.length; i++) {
									tablinks[i].className = tablinks[i].className
											.replace(" w3-red", "");
								}
								document.getElementById(cityName).style.display = "block";
								evt.currentTarget.className += " w3-red";
							}
						</script>

						<!--End Page Header -->
					</div>


				</div>
    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="assets/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/plugins/morris/morris.js"></script>
    <script src="assets/scripts/dashboard-demo.js"></script>

</body>

</html>
