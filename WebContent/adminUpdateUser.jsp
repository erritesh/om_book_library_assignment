<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.om.book.util.DBUtil" %>
<%@ page import= "java.sql.*" %>
<%@ page import="java.lang.*" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Welcome</title>
<!-- Core CSS - Include with every page -->
	  <script src="script/jquery-1.11.0.min.js"></script>
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    
    <script src="script/jquery.dataTables.min.js"></script>
	 <script src="script/main.js"></script>
	 <link href="style/jquery.dataTables.min.css" rel="stylesheet">
    
</head>
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
                    
                    <!--  Start Side menu -->
                    <li class="selected">
                        <a href="adminAddBook.jsp"><i class="fa fa-files-o fa-fw"></i>Add New Book</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Collect<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="adminCollectMembership.jsp">Membership</a>
                            </li>
                            <li>
                                <a href="adminCollectLateFine.jsp">Late Fine</a>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>
                     <li>
                        <a href="adminManageMembership.jsp"><i class="fa fa-wrench fa-fw"></i>Manage Membership</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i>Register New User</a>
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
                        <a href="#"><i class="fa fa-edit fa-fw"></i>Update User</a>
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
                    <h1 class="page-header">Update</h1>
                     <div class="alert alert-info">
                        <i class="fa fa-folder-open"></i><b>&nbsp;Hello ! </b>Welcome Back <b>Admin </b>
 <i class="fa  fa-pencil"></i>&nbsp;For Update Click on User ID.
                    </div>
                    </div>
                    <!-- code here  -->

				<%
					PreparedStatement pst = null;
					Connection con;
					ResultSet rst = null;
					String uId = null;
					String firstName = null;
					String lastName = null;
					String username = null;
					String emailId = null;
					String password = null;
					String dob = null;
					String address = null;
					String membershipType = null;

					try {
						con = DBUtil.getConnection();
						String query = "select USER_ID,FIRSTNAME,LASTNAME,USERNAME,EMAILID,PASSWORD,DOB,ADDRESS,MEMBERSHIP_TYPE from REGISTRED_USER";
						pst = con.prepareStatement(query);
						rst = pst.executeQuery();
						%>
				<table id="example" class="display" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th>User ID</th>
							<th>FIRST NAME</th>
							<th>LAST NAME</th>
							<th>USERNAME</th>
							<th>EMAIL ID</th>
							<th>PASSWORD</th>
							<th>DOB</th>
							<th>ADDRESS</th>
							<th>MEMBERSHIP_TYPE</th>

						</tr>
					</thead>
					<%
						while (rst.next()) {
							uId = rst.getString(1);
							firstName = rst.getString(2);
							lastName = rst.getString(3);
							username = rst.getString(4);
							emailId = rst.getString(5);
							password = rst.getString(6);
							dob = rst.getString(7);
							address = rst.getString(8);
							membershipType = rst.getString(9);
				%>
					<tbody>
						<tr>
							<td><a href="adminUpdateUserFinal.jsp?userId=<%=uId%>"><%=uId%></a></td>
							<td><%=firstName%></td>
							<td><%=lastName%></td>
							<td><%=username%></td>
							<td><%=emailId%></td>
							<td><%=password%></td>
							<td><%=dob%></td>
							<td><%=address%></td>
							<td><%=membershipType%></td>
						</tr>
						<%
							}
							} catch (Exception e) {
								e.printStackTrace();
							}
						%>


					</tbody>
				</table>

				<!-- Upto -->
              
                <!--End Page Header -->
            </div>
                    

    </div>
    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
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
