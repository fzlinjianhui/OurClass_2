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
	String name=user.getName();
%>
<html>
<title>班级首页</title>
<jsp:include page="head/head.jsp"></jsp:include>
<body>
	<!-- banner -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider").responsiveSlides({
				auto : true,
				nav : true,
				speed : 500,
				namespace : "callbacks",
				pager : true,
			});
		});
	</script>
	<div class="banner">
		<jsp:include page="head/menu.jsp"></jsp:include>
	
		<div class="slider">
			<div class="caption">
				<div class="container">
					<div class="callbacks_container">
						<ul class="rslides" id="slider">
							<li><h3>欢迎来到我们的园地，在这里，我们可以胡作非为，没人敢说你！没错，就是你的地盘</h3></li>
							<li><h3>网站还在测试阶段，各功能还不是很完善，还望海涵</h3></li>
							<li><h3>有什么意见或者建议欢迎骚扰</h3></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="banner-grids">
			<div class="container">
				<div class="col-md-4 banner-grid">
					<h3>公告栏Notice</h3>
					<div class="banner-grid-sec">
						<div class="grid_info">
							<div class="blg-pic">
								<img src="images/m1.jpg" class="img-responsive" alt="">
							</div>
							<div class="blg-pic-info">
								<h4>
									<a href="#">展示班级公告作业</a>
								</h4>
								<p>Aliquam sem velit, rhoncus sed arcu at curabitur et erat
									eu viverra.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="grid_info">
							<div class="blg-pic">
								<img src="images/m2.jpg" class="img-responsive" alt="">
							</div>
							<div class="blg-pic-info">
								<h4>
									<a href="#">Vivamus tempus ligula</a>
								</h4>
								<p>Aliquam sem velit, rhoncus sed arcu at curabitur et erat
									eu viverra.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="more">
							<a href="blog.html">See more from the Blog ></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 banner-grid">
					<h3>心愿墙WishWall</h3>
					<div class="banner-grid-sec">
						<div class="news-grid">
							<h4>
								<a href="#">心愿展示</a>
							</h4>
							<p>Aliquam sem velit, rhoncus sed arcu eu viverra.</p>
						</div>
						<div class="news-grid">
							<h4>
								<a href="#">Vivamus tempus ligula</a>
							</h4>
							<p>Aliquam sem velit, rhoncus sed arcu eu viverra.</p>
						</div>
						<div class="news-grid">
							<h4>
								<a href="#">Vivamus tempus ligula</a>
							</h4>
							<p>Aliquam sem velit, rhoncus sed arcu eu viverra.</p>
						</div>
						<div class="news-grid">
							<h4>
								<a href="#">Vivamus tempus ligula</a>
							</h4>
							<p>Aliquam sem velit, rhoncus sed arcu eu viverra.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 banner-grid">
					<h3>求助Help</h3>
					<div class="banner-grid-sec news_sec">
						<div class="news-ltr">
							<h4>
								<a href="#">有什么困难发表在这里</a>
							</h4>
							<p>Aliquam sem velit, rhoncus sed arcu eu viverra.
								Suspendisse lacus posuere ultricies turpis.</p>
						</div>
						<form>
							<input type="text" placeholder="Email Address*" required="">
							<input type="submit" value="SEND">
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="welcome">
		<div class="container">
			<h2>Duis aliquet in ex nec elementum. In commodo molestie libero
				ornare elementum.</h2>
			<div class="welcm_sec">
				<div class="col-md-9 campus">
					<div class="campus_head">
						<h3>Welcome</h3>
						<p>Nunc justo sapien, cursus at urna at, placerat porttitor
							tellus. Aliquam vehicula tellus nunc, id pretium lacus placerat
							dignissim. Donec quis dui sed lacus vulputate scelerisque a sit
							amet neque.</p>
					</div>
					<div class="col-md-3 wel_grid">
						<img src="images/w1.jpg" class="img-responsive" alt="" />
						<h5>
							<a href="#">Aliquam sit amet</a>
						</h5>
						<p>Morbi molestie nec ante ultrices. Cum sociis natoque
							penatibus et magnis dis parturient</p>
					</div>
					<div class="col-md-3 wel_grid">
						<img src="images/w3.jpg" class="img-responsive" alt="" />
						<h5>
							<a href="#">Aliquam sit amet</a>
						</h5>
						<p>Morbi molestie nec ante ultrices. Cum sociis natoque
							penatibus et magnis dis parturient</p>
					</div>
					<div class="col-md-3 wel_grid">
						<img src="images/w2.jpg" class="img-responsive" alt="" />
						<h5>
							<a href="#">Aliquam sit amet</a>
						</h5>
						<p>Morbi molestie nec ante ultrices. Cum sociis natoque
							penatibus et magnis dis parturient</p>
					</div>
					<div class="col-md-3 wel_grid">
						<img src="images/w4.jpg" class="img-responsive" alt="" />
						<h5>
							<a href="#">Aliquam sit amet</a>
						</h5>
						<p>Morbi molestie nec ante ultrices. Cum sociis natoque
							penatibus et magnis dis parturient</p>
					</div>
					<div class="clearfix"></div>
					<div class="more_info">
						<a href="blog.html">More Info....</a>
					</div>
				</div>
				<div class="col-md-3 testimonal">
					<h3>Testimonials</h3>
					<div class="testimnl-grid">
						<a href="#"><p>Aenean ultrices commodo risus, id
								sollicitudin nunc commodo at. Sed sagittis, lacus id viverra
								eleifend, enim magna.</p></a>
						<h5>John.Mr</h5>
					</div>
					<div class="testimnl-grid">
						<a href="#"><p>Aenean ultrices commodo risus, id
								sollicitudin nunc commodo at. Sed sagittis, lacus id viverra
								eleifend, enim magna.</p></a>
						<h5>John.Mr</h5>
					</div>
					<div class="testimnl-grid">
						<a href="#"><p>Aenean ultrices commodo risus, id
								sollicitudin nunc commodo at. Sed sagittis, lacus id viverra
								eleifend, enim magna.</p></a>
						<h5>John.Mr</h5>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---->
	<div class="news">
		<div class="container">
			<h3>Top News</h3>
			<div class="event-grids">
				<div class="col-md-4 event-grid">
					<div class="date">
						<h4>26</h4>
						<span>08/2012</span>
					</div>
					<div class="event-info">
						<h5>
							<a href="#">Etiam malesuada feugiat rutrum purus quis
								vulputate.</a>
						</h5>
						<p>Praesent sagittis in enim vel cursus. Aenean velit ante,
							maximus ac placerat at, volutpat et orci. Aliquam eu tellus orci.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 event-grid">
					<div class="date">
						<h4>24</h4>
						<span>06/2012</span>
					</div>
					<div class="event-info">
						<h5>
							<a href="#">Etiam malesuada feugiat rutrum purus quis
								vulputate.</a>
						</h5>
						<p>Praesent sagittis in enim vel cursus. Aenean velit ante,
							maximus ac placerat at, volutpat et orci. Aliquam eu tellus orci.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 event-grid">
					<div class="date">
						<h4>20</h4>
						<span>04/2012</span>
					</div>
					<div class="event-info">
						<h5>
							<a href="#">Etiam malesuada feugiat rutrum purus quis
								vulputate.</a>
						</h5>
						<p>Praesent sagittis in enim vel cursus. Aenean velit ante,
							maximus ac placerat at, volutpat et orci. Aliquam eu tellus orci.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	
<div class="footer">
	<div class="container">
		<!-- 显示个人信息 -->
		<table style="border:1px solid red">
			<tr>
				<td>学号：</td>
			</tr>
		</table>
	</div>
</div>
	<!---->
<!--	<div class="footer">
		<div class="container">
			<div>
				<div class="col-md-4 ftr-grid">
					<h3>登陆</h3>
					学号:<input class="input" /><br> <br> 密码:<input
						class="input" /><br> <br>
					<button type="button" class="btn btn-success">登陆</button>
					<button type="button" class="btn btn-success">修改密码</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 修改页面窗口 -->
 <!-- center>
		<div style="width: 100%;position:relative;bottom: 100px"
			class="my-change-psw-table" hidden="hidden">
			<table class=" ">
				<tr>
					<td colspan="2"><button type="button" class="close">
							<span aria-hidden="true">&times;</span>
						</button></td>
				</tr>
				<tr>
					<td>原密码</td>
					<td><input /></td>
				</tr>
				<tr>
					<td>新密码</td>
					<td><input /></td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td><input /></td>
				</tr>
				<tr>
					<td colspan="2"><button type="button"
							class="btn btn-success btn-block">提交</button></td>
				</tr>
			</table>
		</div>
	</center> -->
	<!---->
	<jsp:include page="head/footer.jsp"></jsp:include>
	<!---->
</body>
</html>