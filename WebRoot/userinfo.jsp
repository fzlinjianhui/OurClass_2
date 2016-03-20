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
	User user = (User) request.getSession().getAttribute("user");
	if (user == null) {
		response.sendRedirect("loginin.jsp");
		return;
	}//判断用户是否登录没有登录就转发到登录页面
%>
<html>
<title>个人信息</title>
<jsp:include page="head/head.jsp"></jsp:include>
<body>
	<!-- banner -->
	<div class="banner2">
		<jsp:include page="head/menu.jsp"></jsp:include>
	</div>
	<div style="width: 100%">
		<table class="table">
			<tr>
				<td>姓名</td>
				<td><input /></td>
				<td>姓名</td>
				<td><input /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input /></td>
				<td>姓名</td>
				<td><input /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input /></td>
				<td>姓名</td>
				<td><input /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input /></td>
				<td>姓名</td>
				<td><input /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input /></td>
				<td>姓名</td>
				<td><input /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input /></td>
				<td>姓名</td>
				<td><input /></td>
			</tr>
		</table>
	</div>


	<jsp:include page="head/footer.jsp"></jsp:include>
	<!---->
</body>
</html>