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
<title>无话不说</title>
<jsp:include page="head/head.jsp"></jsp:include>
<body>
	<!-- banner -->
	<div class="banner2">
		<jsp:include page="head/menu.jsp"></jsp:include>
	</div>
	<!---->
	<!--contact-->
	<div class="contact">
		<!-- 富文本编辑器 -->
		<script charset="utf-8" src="./kindeditor/kindeditor-min.js"></script>
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