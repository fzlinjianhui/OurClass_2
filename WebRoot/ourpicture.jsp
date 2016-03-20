<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="cn.shawadika.entity.User"%>
<!DOCTYPE HTML>
<%
	User user=(User)request.getSession().getAttribute("user");
	if(user==null){response.sendRedirect("loginin.jsp");return;}//判断用户是否登录没有登录就转发到登录页面
%>
<html>
<title>我们</title>
<jsp:include page="head/head.jsp"></jsp:include>
 <script type="text/javascript" src="js/jquery.fancybox.js"></script>
	   <script type="text/javascript">
			$(document).ready(function() {
				/*
				 *  Simple image gallery. Uses default settings
				 */
				$('.fancybox').fancybox();

			});
		</script>


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