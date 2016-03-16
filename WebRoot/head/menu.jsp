<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<span style="position: absolute;top:7%;right:10px;background-color: #4DC47D"><a href="#">admin</a></span>
<div class="header">
	<div class="logo">
		<a href="index.html"><img src="images/logo.jpg" alt="" /></a>
	</div>
	<div class="top-menu">
		<span class="menu"></span>
		<ul class="navig">
			<li class="active"><a href="index.jsp">Home</a></li>
			<li><a href="about.jsp">About</a></li>
			<li><a href="program.jsp">Programs</a></li>
			<li><a href="blog.jsp">Blog</a></li>
			<li><a href="ourpicture.jsp">我们</a></li>
			<li><a href="justsay.jsp">无话不说</a></li>
		</ul>
	</div>
	<!-- script-for-menu -->
	<script>
		$("span.menu").click(function() {
			$("ul.navig").slideToggle("fast", function() {
			});
		});
	</script>
	<!-- script-for-menu -->
	<div class="clearfix"></div>
</div>
