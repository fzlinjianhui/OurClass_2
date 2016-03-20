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
<title>博客</title>
<jsp:include page="head/head.jsp"></jsp:include>
<body>
	<!-- banner -->
	<div class="banner2">
		<jsp:include page="head/menu.jsp"></jsp:include>
	</div>
	<!---->
	<!-- blog-page -->
	<div class="blog">
		<div class="container">
			<div class="blog-head">
				<h2>Blog</h2>
			</div>
			<div class="col-md-8 blog-left">
				<div class="blog-info">
					<h3>
						<a href="single.html">Fringilla condimentum</a>
					</h3>
					<p>
						Posted By <a href="#">Admin</a> &nbsp;&nbsp; on march 2, 2015
						&nbsp;&nbsp; <a href="#">Comments (10)</a>
					</p>
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="single.html"> <img src="images/img12.jpg"
								class="img-responsive zoom-img" alt="" /></a>
						</div>
						<p class="snglp">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor If you are going to use a
							passage of Lorem Ipsum, you need to be sure there isn't anything
							embarrassing hidden in the middle of text. There are many
							variations of passages of Lorem Ipsum available, but the majority
							have suffered alteration in some form, by injected humour, or
							randomised words which don't look even slightly believable. If
							you are going to use a passage of Lorem Ipsum, you need to be
							sure there isn't anything embarrassing hidden in the middle of
							text.</p>
						<a href="single.html" class="btn btn-primary hvr-rectangle-in">Read
							More</a>
					</div>
				</div>
				<div class="blog-info">
					<h3>
						<a href="single.html">Fringilla condimentum</a>
					</h3>
					<p>
						Posted By <a href="#">Admin</a> &nbsp;&nbsp; on march 2, 2015
						&nbsp;&nbsp; <a href="#">Comments (10)</a>
					</p>
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="single.html"> <img src="images/img13.jpg"
								class="img-responsive zoom-img" alt="" /></a>
						</div>
						<p class="snglp">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor If you are going to use a
							passage of Lorem Ipsum, you need to be sure there isn't anything
							embarrassing hidden in the middle of text. There are many
							variations of passages of Lorem Ipsum available, but the majority
							have suffered alteration in some form, by injected humour, or
							randomised words which don't look even slightly believable. If
							you are going to use a passage of Lorem Ipsum, you need to be
							sure there isn't anything embarrassing hidden in the middle of
							text.</p>
						<a href="single.html" class="btn btn-primary hvr-rectangle-in">Read
							More</a>
					</div>
				</div>
				<div class="blog-info">
					<h3>
						<a href="single.html">Fringilla condimentum</a>
					</h3>
					<p>
						Posted By <a href="#">Admin</a> &nbsp;&nbsp; on march 2, 2015
						&nbsp;&nbsp; <a href="#">Comments (10)</a>
					</p>
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="single.html"> <img src="images/img14.jpg"
								class="img-responsive zoom-img" alt="" /></a>
						</div>
						<p class="snglp">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor If you are going to use a
							passage of Lorem Ipsum, you need to be sure there isn't anything
							embarrassing hidden in the middle of text. There are many
							variations of passages of Lorem Ipsum available, but the majority
							have suffered alteration in some form, by injected humour, or
							randomised words which don't look even slightly believable. If
							you are going to use a passage of Lorem Ipsum, you need to be
							sure there isn't anything embarrassing hidden in the middle of
							text.</p>
						<a href="single.html" class="btn btn-primary hvr-rectangle-in">Read
							More</a>
					</div>
				</div>

			</div>
			<div class="col-md-4 single-page-right">
				<div class="category blog-ctgry">
					<h4>Categories</h4>
					<div class="list-group">
						<a href="single.html" class="list-group-item">Cras justo odio</a>
						<a href="single.html" class="list-group-item">Dapibus ac
							facilisis in</a> <a href="single.html" class="list-group-item">Morbi
							leo risus</a> <a href="single.html" class="list-group-item">Porta
							ac consectetur ac</a> <a href="single.html" class="list-group-item">Vestibulum
							at eros</a> <a href="single.html" class="list-group-item">Cras
							justo odio</a> <a href="single.html" class="list-group-item">Cras
							justo odio</a> <a href="single.html" class="list-group-item">Cras
							justo odio</a>
					</div>
				</div>
				<div class="recent-posts">
					<h4>Recent posts</h4>
					<div class="recent-posts-info">
						<div class="posts-left sngl-img">
							<a href="single.html"> <img src="images/img16.jpg"
								class="img-responsive zoom-img" alt="" />
							</a>
						</div>
						<div class="posts-right">
							<label>MARCH 5, 2015</label>
							<h5>
								<a href="single.html">Finibus Bonorum</a>
							</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing
								incididunt.</p>
							<a href="single.html" class="btn btn-primary hvr-rectangle-in">Read
								More</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="recent-posts-info">
						<div class="posts-left sngl-img">
							<a href="single.html"> <img src="images/img17.jpg"
								class="img-responsive zoom-img" alt="" /></a>
						</div>
						<div class="posts-right">
							<label>MARCH 1, 2015</label>
							<h5>
								<a href="single.html">Finibus Bonorum</a>
							</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing
								incididunt.</p>
							<a href="single.html" class="btn btn-primary hvr-rectangle-in">Read
								More</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<nav>
				<ul class="pagination">
					<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<!--//blog-->

	<!---->
<jsp:include page="head/footer.jsp"></jsp:include>
	<!---->
</body>
</html>