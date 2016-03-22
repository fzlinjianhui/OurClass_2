<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="">
	<div class="logo">
		<a href="index.jsp"><img src="images/logo.jpg" alt="" /></a>
	</div>
	<div class="top-menu">
		<span class="menu"></span>
		<ul class="navig" style="font-size: "微软雅黑">
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
		$("#user").click(function(){
			
		});
	</script>
	<!-- script-for-menu -->
	<div class="clearfix"></div>
</div>
