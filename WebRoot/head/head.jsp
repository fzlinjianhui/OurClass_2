<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="cn.shawadika.entity.User"%>
<%
	User user = (User) request.getSession().getAttribute("user");
	String name = user.getName();
	SimpleDateFormat format = new SimpleDateFormat(
			"YYYY/MM/dd");
%>

<head>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="个人信息" />

<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	//启动弹出框
	$(function() {
		$('[data-toggle="popover"]').popover();
	});

</script>
</head>
<span
	style="position: absolute;top:7%;right:10px;background-color: #4DC47D">

	<a id="user-info" tabindex="0" data-placement="bottom" role="button"
	data-toggle="popover" title='个人信息 Personal&nbsp;Information&nbsp;'
	data-content="<table>
		<tr><td>学号:</td><td><%=user.getStudentNum()%></td></tr>
		<tr><td>登录数:</td><td><%=user.getLoginTimes()%>次</td></tr>
		<tr><td>首次:</td><td><%=format.format(user.getFirstTimeLogin())%></td></tr>
	</table>" data-html="true"><%=name%></a>
</span>




