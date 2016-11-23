<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script src="script/jquery-1.11.0.min.js"></script>
<script src="script/main.js"></script>
<link href="style/styles.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<h1>Om Book Library</h1>
<div class="element">
		<div class="element-left">
			<div class="profile">
				<div class="login-top">
								<!-- <form action="" method="post"> -->
									<input type="text" name="Username" placeholder="Username" id="username" required=""/>
									<input type="password" name="password" placeholder="Password" id="password" required=""/>	
									<input type="checkbox" id="brand" value="">
									<label for="brand"><span></span> Remember me?</label>
								<div class="login-bottom">
									<ul>
										<li>
											<a href="#">Forgot password?</a>
										</li>
										<li>
												<input type="submit" value="LOGIN" onclick="checkLoginPass()" />
										<!-- 	</form> -->
										</li>
									</ul>
									<div class="clear"></div>
								</div>	
							</div>			
			</div>
		</div>
          
</body>
</html>