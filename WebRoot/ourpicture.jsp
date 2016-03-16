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
<title>galley</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/touchTouch.css" type="text/css" media="all" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="University Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
 <script src="js/bootstrap.js"></script>

 <script type="text/javascript" src="js/jquery.fancybox.js"></script>
	   <script type="text/javascript">
			$(document).ready(function() {
				/*
				 *  Simple image gallery. Uses default settings
				 */
				$('.fancybox').fancybox();

			});
		</script>


</head>
<body>
<!-- banner --> 
<div class="banner2">	  
<jsp:include page="head/menu.jsp"></jsp:include> 
</div>
<!---->
<div class="gallery">
	 <div class="container">
		 <h2>Gallery</h2>
		 <div class="event-pics">
				<a class="fancybox" href="images/1.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/1.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/2.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/2.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/3.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/3.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/4.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/4.jpg" class="img-style row6" alt=""><span> </span></a>
				<div class="clearfix"></div>
				<a class="fancybox" href="images/5.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/5.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/6.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/6.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/7.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/7.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/8.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/8.jpg" class="img-style row6" alt=""><span> </span></a>
				<div class="clearfix"></div>
				<a class="fancybox" href="images/9.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/9.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/10.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/10.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/11.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/11.jpg" class="img-style row6" alt=""><span> </span></a>
				<a class="fancybox" href="images/1.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/1.jpg" class="img-style row6" alt=""><span> </span></a>
				<div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<!---->
<jsp:include page="head/footer.jsp"></jsp:include>
<!---->
</body>
</html>