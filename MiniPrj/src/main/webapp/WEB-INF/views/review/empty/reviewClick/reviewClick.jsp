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
						<a href="#"><i class="fa fa-instagram"></i></a>
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<h2></h2>
				</div>
				
			</div>
			<nav class="main__menu">
				<ul class="nav__menu">
					<li><a href="#" class="menu--active">${Click.rb_title}</a></li>
					
					<!--<li><a href="./blog.html">Blog</a>
						<ul class="sub__menu">
							<li><a href="./blog-single.html">Blog Single</a></li>
						</ul> 
					</li> -->
					
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header Section end -->

	<!-- Hero Section -->
	<section class="hero__section">
		<div class="hero-slider">
			<div class="slide-item">
				<a class="fresco" href="img/hero-slider/1.jpg" data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/1.jpg" alt="">
				</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/hero-slider/2.jpg" data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/2.jpg" alt="">
					</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/hero-slider/3.jpg" data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/3.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/hero-slider/4.jpg" data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/4.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/hero-slider/5.jpg" data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/5.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/hero-slider/6.jpg" data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/6.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/hero-slider/7.jpg" data-fresco-group="projects">
					<img src="resources/reviewbootstrap/img/hero-slider/7.jpg" alt="">
				</a>	
			</div>
		</div>
		<div class="hero-text-slider">
			<div class="text-item">
				<h2>Nature</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Red Heartbeat</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Blue Dreem</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Christian Church</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Red Darkness</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Beauty with Brain</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Remarkable</h2>
				<p>Photography</p>
			</div>
		</div>
	</section>
	<!-- Hero Section end -->

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
	<script src="resources/reviewbootstrap/js/fresco.min.js"></script>
	<script src="resources/reviewbootstrap/js/main.js"></script>

	</body>
</html>
    