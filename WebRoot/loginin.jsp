<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>登陆</title>
<!-- For-Mobile-Apps -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Simple User Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, SonyErricsson, Motorola Web Design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/loginin.js"></script>
<!-- //For-Mobile-Apps -->
<!-- Style -->
<link rel="stylesheet" href="css/style-loginin.css" type="text/css"
	media="all">
</head>
<body>
	<script src="js/responsiveslides.min.js"></script>
	<div class="container">
		<div class="logo">
			<a href="index.jsp"><img src="images/logo.jpg" alt="" /></a>
		</div>
		<h1>Welcome</h1>
		<div class="contact-form" >
			<div class="signin">
				<form action="loginin.do" method="get">
					<input name="userName" type="text" class="user"
						value="Enter Your Username" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter Your Username';}" />
					<input name="passWord" type="password" class="pass"
						value="Password" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Password';}" /> 
						<input type="submit" value="Login" />
					<p>
						<a href="#">Lost your password?</a>
					</p>
				</form>
			</div>
		</div>
	</div>
	<div class="footer">
		<p>
			Copyright &copy; 2015 Simple User Login Form. All Rights Reserved |
			Design by <a href="http://w3layouts.com">W3layouts</a>
		</p>
	</div>
</body>
</html>