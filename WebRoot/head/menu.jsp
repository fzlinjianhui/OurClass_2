<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<span
	style="position: absolute;top:7%;right:10px;background-color: #4DC47D"><a
	href="loginin.jsp">登陆</a></span>
<div class="">
	<div class="logo">
		<a href="index.jsp"><img src="images/logo.jpg" alt="" /></a>
	</div>
	<div class="top-menu">
		<span class="menu"></span>
		<ul class="navig">
			<li><a href="index.jsp">首页</a></li>
			<li><a href="program.jsp">未知地带</a></li>
			<li><a href="blog.jsp">博客</a></li>
			<li><a href="ourpicture.jsp">我们</a></li>
			<li><a href="justsay.jsp">无话不说</a></li>
			<li><a href="about.jsp">关于我们</a></li>
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
