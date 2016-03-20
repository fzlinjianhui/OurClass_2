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
		<div class="contact-form">
			<div class="signin">
				<form action="loginin.do" method="post">
				<span id="wrong-info" class="wrong"><%=request.getSession().getAttribute("wrong") == null ? ""
					: request.getSession().getAttribute("wrong")%></span>
					 <input id="stuNum" placeholder="您的额学号"
						name="studentNum" type="text" class="user"
						onfocus="this.value = '';" /> <input placeholder="您的密码" id="psw" name="passWord"
						type="password" class="pass" onfocus="this.value = '';" /> <select
						style="margin-bottom:20px " name="belongSchool">
						<option>学校</option>
						<option value="ygxy">阳光学院</option>
					</select> <select name="dept">
						<option>系部</option>
						<option value="jsjgcx">计算机系</option>
					</select> <select name="specialty">
						<option>专业</option>
						<option value="wlgc">网络工程</option>
					</select> <select name="belongClass">
						<option>班级</option>
						<option value="1">1班</option>
					</select> <select name="type">
						<option value="1">学生</option>
						<option value="2">老师</option>
					</select> <input type="button" value="Login" id="submit" />
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