<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>contact</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/touchTouch.css" type="text/css"
	media="all" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="University Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>

</head>
<body>
	<!-- banner -->
	<div class="banner2">
		<jsp:include page="head/menu.jsp"></jsp:include>
	</div>
	<!---->
	<!--contact-->
	<div class="contact">
		<!-- 富文本编辑器 -->
		<script charset="utf-8" src="./kindeditor/kindeditor.js"></script>
		<script charset="utf-8" src="./kindeditor/lang/zh_CN.js"></script>
		<script>
			KindEditor.ready(function(K) {
				window.editor = K.create('#editor_id');
			});
		</script>
		<div class="container">
			<div class="main-head-section">
				<h2>无话不说JustSay</h2>
				<!--  -->
			</div>
			<div class="contact_top">
				<div class="col-md-8 contact_left">
					<h4>Below Type Here</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec tincidunt dolor et tristique bibendum. Aenean sollicitudin
						vitae dolor ut posuere.</p>
				</div>
				<textarea id="editor_id" name="content"
					style="width:100%;height:300px;">
				</textarea>
			</div>
		</div>
	</div>
	<!---->
	<!---->
	<jsp:include page="head/footer.jsp"></jsp:include>
	<!---->
</body>
</html>