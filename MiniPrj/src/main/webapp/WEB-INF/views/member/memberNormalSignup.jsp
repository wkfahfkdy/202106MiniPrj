<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<br><br>
<div align="center">
	<h3>일반회원 회원가입</h3>
	<br>

	<div class="container">
	<div class="">
            <form action="php/contact.php" class="dk-form" method="post">
                <div class="row vertical-gap">
                    <div class="col-md-6">
                        <input style = "width:30%;"class="form-control" type="text" name="name" value="" placeholder="Your id">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="password" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="Password">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="Your Name">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="Your Tel">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="e-mail">
                    </div>
                    <div class="col-12">
                        <div class="dk-result"></div>
                    </div>
                </div>
                <input class="dk-btn dk-btn-md" type="button" name="sumbit" value="Save" onclick="location.href='home.do'"> &nbsp; 
                <button class="dk-btn dk-btn-md" type="reset" name="sumbit">Reset</button>
            </form>
	</div>
	</div>
</div>









    
<!-- START: Scripts -->

<!-- Object Fit Images -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/object-fit-images/dist/ofi.min.js"></script>

<!-- Popper -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/popper.js/dist/umd/popper.min.js"></script>

<!-- Bootstrap -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/tether/dist/js/tether.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Sticky Kit -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/sticky-kit/dist/sticky-kit.min.js"></script>

<!-- Jarallax -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/jarallax/dist/jarallax.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/jarallax/dist/jarallax-video.min.js"></script>

<!-- Isotope -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/isotope-layout/dist/isotope.pkgd.min.js"></script>

<!-- ImagesLoaded -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>

<!-- Lightgallery -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/lightgallery/dist/js/lightgallery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/lg-fullscreen/dist/lg-fullscreen.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/lg-video/dist/lg-video.min.js"></script>

<!-- Swiper -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/swiper/dist/js/swiper.min.js"></script>

<!-- Jquery Form -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/jquery-form/dist/jquery.form.min.js"></script>

<!-- The Mimilism -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/js/mimilism.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/js/mimilism-init.js"></script>
<!-- END: Scripts -->

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Mimilism | Contact</title>

    <meta name="description" content="Mimilism - Bootstrap template for portfolio and works">
    <meta name="keywords" content="portfolio, works, template, HTML template, responsive, Bootstrap, premium">
    <meta name="author" content="DKcoder">

    <link rel="icon" type="image/png" href="assets/images/favicon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,700%7cPlayball%7cPT+Serif:700i" rel="stylesheet"><!-- %7c -->

    <!-- Bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendor/bootstrap/dist/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/@fortawesome/fontawesome-free/css/brands.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/@fortawesome/fontawesome-free/css/solid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/@fortawesome/fontawesome-free/css/fontawesome.css">

    <!-- Pe icon 7 stroke -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/pixeden-stroke-7-icon/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">

    <!-- Lightgallery -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/lightgallery/dist/css/lightgallery.min.css">

    <!-- Swiper -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/swiper/dist/css/swiper.min.css">

    <!-- Mimilism -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/css/mimilism.css">

    <!-- Custom Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/css/custom.css">
    
    <!-- END: Styles -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/jquery/dist/jquery.min.js"></script>
    
    