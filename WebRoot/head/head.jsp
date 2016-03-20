<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="cn.shawadika.entity.User"%>
<%
	User user = (User) request.getSession().getAttribute("user");
	String name = user.getName();
	SimpleDateFormat format = new SimpleDateFormat(
			"YYYY/MM/dd HH:mm:ss");
	SimpleDateFormat format2 = new SimpleDateFormat(//为了弹出框显示效果缩短时间格式
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
	//初始化标签提示框
	$(function () {
		  $('[data-toggle="tooltip"]').tooltip();
		});
</script>
</head>
<!-- 个人信息显示提示框 -->
<span
	style="position: absolute;top:7%;right:10px;background-color: #4DC47D">

	<a id="user-info" tabindex="0" data-placement="bottom" role="button"
	data-toggle="popover" title='个人信息 Personal&nbsp;Information&nbsp;' data-trigger="focus" 
	data-content=
	"<table class='table'>
		<tr><td>学号:</td><td><%=user.getStudentNum()%></td></tr>
		<tr><td>次数:</td><td><%=user.getLoginTimes()%>次</td></tr>
		<tr><td>首次:</td><td><%=format2.format(user.getFirstTimeLogin())%></td></tr>
		<tr><td colspan='2'>
		<button	 class='btn btn-block btn-sm btn-success' data-toggle='modal' data-target='#myModal'>详细信息</button></td></tr>
	</table>" data-html="true"><%=name%></a>
<!-- --------- -->
</span>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">详细信息</h4>
      </div>
      <div class="modal-body">
       	<table class="table">
	    
	       		<tr>
	       			<td style="border: 1px solid #D8D8D8"  colspan="1">
	       				<img  data-toggle="tooltip" data-placement="top" title="点击头像可更改头像" alt="头像" src="images/哆啦A梦.jpg" class="img-thumbnail" style="width:100%;height:auto ;">
	       			</td>
	       			<td colspan="3"><input type="password" placeholder="旧密码"/>
	       			<input style="margin-top: 10px"  type="password" placeholder="新密码"/>
	       			<input style="margin-top: 10px" type="password" placeholder="再输一次"/></td>
	       		</tr>
	       		<tbody style="font-size: 0.8em;text-align: center">
	       		<tr>
	       			<td>姓名:</td>
	       			<td style="text-align: left;"><%=user.getName() %></td>
	       			<td>性别:</td>
	       			<td  style="text-align: left;"><%=user.getSex() %></td>
	       		</tr>
	       		<tr>
	       			<td>学号:</td>
	       			<td  style="text-align: left;"><%=user.getStudentNum() %></td>
	       			<td>学校:</td>
	       			<td  style="text-align: left;"><%=user.getBelongSchool() %></td>
	       		</tr>
	       		<tr>
	       			<td>系部:</td>
	       			<td  style="text-align: left;"><%=user.getDept() %></td>
	       			<td>专业:</td>
	       			<td  style="text-align: left;"><%=user.getSpecialty() %></td>
	       		</tr>
	       		<tr>
	       			<td> 班级:</td>
	       			<td  style="text-align: left;"><%=user.getBelongClass() %>班</td>
	       			<td>职务:</td>
	       			<td  style="text-align: left;"><%="1".equals(user.getType())?"学生":"2".equals(user.getType())?"老师":"超人" %></td>
	       		</tr>
	       		<tr>
	       			<td colspan="4">第一次登录时间:<%=format.format(user.getFirstTimeLogin()) %></td>
	       		</tr>
	       		<tr>
	       			<td colspan="4">最后一次登录时间:<%=format.format(user.getLastTimeLogin())%></td>
	       		</tr>
	       	</tbody>
       	</table>
      </div>
      <div class="modal-footer">
        <button type="button"   class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

