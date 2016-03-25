<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="cn.shawadika.entity.User"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="个人信息" />
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-wysiwyg.js"></script>

<link rel="shortcut icon"
	href="http://mindmup.s3.amazonaws.com/lib/img/favicon.ico">
<link
	href="http://twitter.github.com/bootstrap/assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css"
	rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css"
	rel="stylesheet">




<style type="text/css">
.addborder {
	border: 1px solid red;
}

#editor {
	overflow: scroll;
	max-height: 300px
}
/* this CSS is not part of the widget, it is here just as an example of the demo page styling.... Don't copy this one, roll your own. One
 * of the key things about the widget is that it allows you to do your own styling!
 */
#editor {
	max-height: 250px;
	height: 250px;
	background-color: white;
	border-collapse: separate;
	border: 1px solid rgb(204, 204, 204);
	padding: 4px;
	box-sizing: content-box;
	-webkit-box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
	box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px;
	border-top-left-radius: 3px;
	overflow: scroll;
	outline: none;
}

#voiceBtn {
	width: 20px;
	color: transparent;
	background-color: transparent;
	transform: scale(2.0, 2.0);
	-webkit-transform: scale(2.0, 2.0);
	-moz-transform: scale(2.0, 2.0);
	border: transparent;
	cursor: pointer;
	box-shadow: none;
	-webkit-box-shadow: none;
}

div[data-role="editor-toolbar"] {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.dropdown-menu a {
	cursor: pointer;
}
</style>
<script type="text/javascript">
	$(function() {
		$('#editor').wysiwyg();

	});
</script>
<script>
	$(function() {
		function initToolbarBootstrapBindings() {
			var fonts = [ 'Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
					'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact',
					'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
					'Times New Roman', 'Verdana' ], fontTarget = $(
					'[title=Font]').siblings('.dropdown-menu');
			$
					.each(
							fonts,
							function(idx, fontName) {
								fontTarget
										.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'
												+ fontName + '</a></li>'));
							});
			$('a[title]').tooltip({
				container : 'body'
			});
			$('.dropdown-menu input').click(function() {
				return false;
			}).change(
					function() {
						$(this).parent('.dropdown-menu').siblings(
								'.dropdown-toggle').dropdown('toggle');
					}).keydown('esc', function() {
				this.value = '';
				$(this).change();
			});

			$('[data-role=magic-overlay]').each(
					function() {
						var overlay = $(this), target = $(overlay
								.data('target'));
						overlay.css('opacity', 0).css('position', 'absolute')
								.offset(target.offset()).width(
										target.outerWidth()).height(
										target.outerHeight());
					});
			$('#voiceBtn').hide();
			// if ("onwebkitspeechchange"  in document.createElement("input")) {
			//   var editorOffset = $('#editor').offset();
			//   $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});
			// } else {
			//   $('#voiceBtn').hide();
			// }
		}
		;
		initToolbarBootstrapBindings();
		$('#editor').wysiwyg();
		window.prettyPrint && prettyPrint();
	});
</script>
</head>
<body>
	<div class="container-fluid">
		<!-- 头部菜单栏 -->
		<div class="col-xs-12">
			<nav class="navbar navbar-default navbar-static-top">
				<div class="container">...</div>
			</nav>
		</div>
		<!-- 左边菜单栏 -->
		<div class="col-xs-2"
			style="background-color: #C1FCFC;padding: 5px 5px 5px 5px;">
			<button class="btn btn-success btn-block" data-toggle="collapse"
				data-parent="#accordion" href="#collapseOne" aria-expanded="false"
				aria-controls="collapseOne">点我</button>
			<div style="height: 5px;"></div>
			<div id="collapseOne" class="panel-collapse collapse in"
				role="tabpanel" aria-labelledby="headingOne">
				<div class="panel-body">Anim</div>
			</div>
			<button class="btn btn-success btn-block" data-toggle="collapse"
				data-parent="#accordion" href="#collapseTwo" aria-expanded="false"
				aria-controls="collapseTwo">点我</button>
			<div style="height: 5px;"></div>
			<div id="collapseTwo" class="panel-collapse collapse in"
				role="tabpanel" aria-labelledby="headingTwo">
				<div class="panel-body">Anim</div>
			</div>
		</div>
		<!-- 中间内容区域 -->
		<div class="col-xs-10">
			<div class="panel panel-info">
				<div class="panel-heading">Panel heading without title</div>
				<div class="panel-body">

					<div class="btn-toolbar" data-role="editor-toolbar"
						data-target="#editor">
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown"
								title="Font"><i class="icon-font"></i><b class="caret"></b></a>
							<ul class="dropdown-menu">
							</ul>
						</div>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown"
								title="Font Size"><i class="icon-text-height"></i>&nbsp;<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
								<li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
								<li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
							</ul>
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
								class="icon-bold"></i></a> <a class="btn" data-edit="italic"
								title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a> <a
								class="btn" data-edit="strikethrough" title="Strikethrough"><i
								class="icon-strikethrough"></i></a> <a class="btn"
								data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i
								class="icon-underline"></i></a>
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="insertunorderedlist"
								title="Bullet list"><i class="icon-list-ul"></i></a> <a
								class="btn" data-edit="insertorderedlist" title="Number list"><i
								class="icon-list-ol"></i></a> <a class="btn" data-edit="outdent"
								title="Reduce indent (Shift+Tab)"><i
								class="icon-indent-left"></i></a> <a class="btn" data-edit="indent"
								title="Indent (Tab)"><i class="icon-indent-right"></i></a>
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="justifyleft"
								title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
							<a class="btn" data-edit="justifycenter"
								title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
							<a class="btn" data-edit="justifyright"
								title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
							<a class="btn" data-edit="justifyfull"
								title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
						</div>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown"
								title="Hyperlink"><i class="icon-link"></i></a>
							<div class="dropdown-menu input-append">
								<input class="span2" placeholder="URL" type="text"
									data-edit="createLink" />
								<button class="btn" type="button">Add</button>
							</div>
							<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i
								class="icon-cut"></i></a>

						</div>

						<div class="btn-group">
							<a class="btn" title="Insert picture (or just drag & drop)"
								id="pictureBtn"><i class="icon-picture"></i></a> <input
								type="file" data-role="magic-overlay" data-target="#pictureBtn"
								data-edit="insertImage" />
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i
								class="icon-undo"></i></a> <a class="btn" data-edit="redo"
								title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
						</div>
						<input type="text" data-edit="inserttext" id="voiceBtn"
							x-webkit-speech="">
					</div>

					<div id="editor">Go ahead&hellip;</div>
				</div>


			</div>
			<div class="panel-footer" style="background-color: #E8F5FA"></div>
		</div>
	</div>
	</div>
	<div class="col-xs-12">
		<nav class="navbar navbar-default navbar-fixed-bottom">
			<div class="container">...</div>
		</nav>
	</div>
</body>
</html>