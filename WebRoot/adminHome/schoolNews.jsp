<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<title>新闻编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<!---//webfonts--->
</head>
<!-- 富文本编辑器 -->
<script charset="utf-8" src="../kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
<script>
	KindEditor.ready(function(K) {
		window.editor = K.create('#editor_id');
		var options = {
			cssPath : '/css/index.css',
			filterMode : true
		};
		var editor = K.create('textarea[name="content"]', options);
	});

	function preview() {
		var html = editor.html();//获取editor中的html
		$("#preview_div").html(html);
		var title=$("#news-title").val();
		$("#preview-title").html('<h2 style="text-align:center">'+title+'</h2>');
	};
</script>
<body>
	<div id="wrapper">
		<jsp:include page="comp/leftMenu.jsp"></jsp:include>
		<div id="page-wrapper">
			<div style="height: 500px;">
				<div class="panel panel-success">
					<div class="panel-heading">
						在左边编辑您的新闻内容，右边是预览窗口 &nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-info btn-sm" id="open-preview"
							onclick="preview();">预览</button>
					</div>
					<div class="panel-body">
						<div class="col-xs-12">
							<div class="col-xs-6" style="border:3px solid #D6F2C6 ">
								<div class="">
									<div class="input-group">
										<input id="news-title" type="text" class="form-control" placeholder="新闻标题">
									</div>
									<div style="height:15px;"></div>
								</div>
								<div class="">
									<!-- 富文本输入框 -->
									<div id="editor_id" name="content"
										style="width:98%;height:300px;"></div>
									<!-- ----- -->
								</div>
								<div>
									<input class="form-control" placeholder="作者署名">
								</div>
									<div style="margin-top: 15px;text-align: right">
										<select>
											<option>事实新闻1</option>
											<option>事实新闻2</option>
											<option>事实新闻3</option>
										</select>
									</div>
							</div>
							<div class="col-xs-6"
								style="border:3px solid #D6F2C6;height: 400px; overflow: auto;">
								<!-- 这里显示预览 -->
								<div id="preview-title"></div>
								<div id="preview_div"  style=""></div>
							</div>
							<div class="col-xs-12" style="text-align: right;">
								<button class="btn btn-info" style="background-color: #27C96F">提交</button>
								<button class="btn btn-info">保存草稿</button>
							</div>
						</div>
					</div>
					<div class="panel-footer">Panel-footer</div>
				</div>

			</div>

			<div class="graphs">
				<div class="copy_layout">
					<p>
						Copyright Â© 2015 Modern. All Rights Reserved | Design by <a
							href="http://w3layouts.com/" target="_blank">W3layouts</a>
					</p>
				</div>
			</div>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- Nav CSS -->
	<link href="css/custom.css" rel="stylesheet">
	<!-- Metis Menu Plugin JavaScript -->
	<script src="js/metisMenu.min.js"></script>
	<script src="js/custom.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
