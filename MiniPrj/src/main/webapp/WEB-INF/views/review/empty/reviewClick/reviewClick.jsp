<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	   
<!DOCTYPE html>
<html lang="zxx">
<head>
<style>
	.col-sm-4{
		width:100px;
	}
	.liClass1{
		font-size:4rem;
	}
	h4{
	color:gray;
	}
	.hrclass{
		width:
	}
</style>
	<title>Boto | Photography HTML Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="Boto Photo Studio HTML Template">
	<meta name="keywords" content="photo, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/reviewbootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/reviewbootstrap/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/reviewbootstrap/css/slicknav.min.css"/>
	<link rel="stylesheet" href="resources/reviewbootstrap/css/fresco.css"/>
	<link rel="stylesheet" href="resources/reviewbootstrap/css/slick.css"/>

	<!-- Main Stylesheets -->
	
	<link rel="stylesheet" href="resources/reviewbootstrap/css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->	
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section -->
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-4 col-md-3 order-2 order-sm-1">
					<div class="header__social">
						<a href="#"></a>
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<h2></h2>
				</div>
				
			</div>
			<nav class="main__menu">
				<ul class="nav__menu">
					<li class="liClass1"><i class="fa fa-instagram"></i>&nbsp&nbsp<a href="#" class="menu--active">${Click.rb_title}</a></li>
					
					<!--<li><a href="./blog.html">Blog</a>
						<ul class="sub__menu">
							<li><a href="./blog-single.html">Blog Single</a></li>
						</ul> 
					</li> -->
					
				</ul>
				<div class="text-item">
				<h4  align="right">작성자: ${Click.u_id }</h4><br><br><br>
				<h5 align="right">방문횟수 자리 : ${Click.rb_hit }</h5>
				<br>
				<p align="right">${Click.rb_regdate }</p>
			</div>
			</nav>
		</div>
	</header>
	<!-- Header Section end -->

	<!-- Hero Section -->
	<section class="hero__section">
		<div class="hero-slider">
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/1.jpg" alt="">
				</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/2.jpg" alt="">
					</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/3.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="#" data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/4.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/5.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/6.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="#" " data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/7.jpg" alt="">
				</a>	
			</div>
		</div>
		<div class="hero-text-slider">
			<div class="text-item">
			</div>
			<div class="text-item">
			</div>
			<div class="text-item">
			</div>
			<div class="text-item">
			</div>
			<div class="text-item">
			</div>
			<div class="text-item">
			</div>
			<div class="text-item">
			</div>
		</div>
	</section>
	<!-- Hero Section end -->

	<!-- Comment Section -->
	<section>
		<hr style="border:solid 1px #A9D0F5;">
		<br><br>
		<div><p>Comments</p></div>
	</section>


	<!-- Footer Section -->
	<footer class="footer__section">
		<div class="container">
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			<div class="footer__copyright__text">
				<p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved  <i class="fa fa-heart" aria-hidden="true"></i></p>
			</div>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		</div>
	</footer>
	<!-- Footer Section end -->
	
	
	
	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!--====== Javascripts & Jquery ======-->
	<script src="resources/reviewbootstrap/js/vendor/jquery-3.2.1.min.js"></script>
	<script src="resources/reviewbootstrap/js/jquery.slicknav.min.js"></script>
	<script src="resources/reviewbootstrap/js/slick.min.js"></script>
	<script src="resources/reviewbootstrap/js/main.js"></script>

	</body>
</html>
    