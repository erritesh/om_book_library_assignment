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
    
     <script src="script/jquery.dataTables.min.js"></script>
	 <script src="script/main.js"></script>
	 <link href="style/jquery.dataTables.min.css" rel="stylesheet">
	 
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
                   
                    <li><a href="#">Available Book</a></li>
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
					Connection con;
					ResultSet rst = null;
					
					String bookName = null;
					String authorName = null;
					try {
						con = DBUtil.getConnection();
						String query = "select BOOK_NAME,AUTHOR_NAME from BOOK";
						pst = con.prepareStatement(query);
						rst = pst.executeQuery();
						%>
				<table id="example" class="display" cellspacing="0" width="100%">
				<thead>
						<tr>
							<th>Book Name</th>
							<th>Author Name</th>
						</tr>
					</thead>
					<%
						while (rst.next()) {
							bookName = rst.getString(1);
							authorName = rst.getString(2);
			     	%>
			     	<tbody>
						<tr>
							<%-- <td><a href="adminUpdateUserFinal.jsp?userId=<%=bookName%>"><%=bookName%></a></td> --%>
							<td><%=bookName%></td>
							<td><%=authorName%></td>
						</tr>
						<%
							}
							} catch (Exception e) {
								e.printStackTrace();
							}
						%>


					</tbody>
				</table>
						
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
