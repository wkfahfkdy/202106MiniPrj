<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 메인 -->
<div class="dk-box-4 text-center">
	<div class="container">
		<div class="bg-image bg-image-parallax">
			<img src="resources/bootstrap/mimilism/assets/images/main1.png"
				class="jarallax-img" alt="">
			<div style="background-color: rgba(32, 32, 32, .6)"></div>
		</div>

		<div class="row justify-content-center">
			<div class="col-md-10 col-lg-8">
				<h1 class="display-3 text-white">Welcome to BbangMan</h1>
				<p class="lead text-white">A high-performance MultiPurpose
					Portfolio HTML Template suitable for any kind of creators. This is
					ideal for creating your creative professional portfolio, corporate
					website, or for creating your client's website if you are an Agency
					or a Freelancer.</p>
				<a href="bread.do" class="dk-btn dk-btn-hover-white dk-btn-md mt-20">Bbang
					Now</a>
			</div>
		</div>
	</div>
</div>

<!-- 슬라이드부분 -->
<div style="margin-top: -80px;">
<div class="swiper-container dk-swiper dk-swiper-slides-auto"
	data-swiper-slidesAuto="true" data-swiper-pagination="true"
	data-swiper-speed="600" data-swiper-space="30"
	data-swiper-autoHeight="true" data-swiper-loop="true">
		
	<div class="swiper-wrapper">
		<c:forEach items="${purchaseMainList }" var="purchaseMainList">
			<div class="swiper-slide text-center">
				<div class="dk-swiper-slide">
					<a href="breadStore.do?s_id=${purchaseMainList.s_id }" class="dk-img"> <img
						src="resources/purchaseUpload/${purchaseMainList.p_image }" alt=""></a>
				</div>
			</div>
			
		</c:forEach>	
		
	</div>
	<div class="swiper-pagination"></div>
</div>
</div>


<!-- 이미지부분 -->
<div class="dk-box-2" style="background-color: #f3f3f3;">
	<div class="container mnb-35">
		<div class="monthIngi">
			<h3 align="center">Best of Best</h3>
			<div class="row vertical-gap justify-content-center">
				<c:forEach items="${purchaseShowUp}" var="purchaseShowUp">
				<div class="col-12 col-sm-10 col-md-6 col-lg-4">
					<a href="breadStore.do?s_id=${purchaseShowUp.s_id }"
						class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
						<span class="dk-portfolio-item-image"> 
						<span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)">
						</span> 
							<img src="resources/productUpload/${purchaseShowUp.b_image }" alt="">
						</span> 
						<span class="dk-portfolio-item-info"> 
							<span class="h3 dk-portfolio-item-title">${purchaseShowUp.s_name }</span>
						</span>
					</a>
				</div>
				</c:forEach>
			</div>
		</div>
		<br>
			<div class="monthIngi">
			<h3 align="center">Store List</h3>
			<div class="row vertical-gap justify-content-center">
				<c:forEach items="${storeList }" var="storeList">
				<div class="col-12 col-sm-10 col-md-6 col-lg-4">
					<a href="breadStore.do?s_id=${storeList.s_id }"
						class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
						<span class="dk-portfolio-item-image"> <span
							class="dk-portfolio-item-overlay"
							style="background-color: rgba(255, 255, 255, .2)"></span> <img
							src="resources/storeMainUpload/${storeList.s_image }"
							alt="">
					</span> <span class="dk-portfolio-item-info"> <span
							class="h3 dk-portfolio-item-title">${storeList.s_name }</span>
					</span>
					</a>
				</div>
				</c:forEach>
			</div>

		</div>
	</div>
</div>



<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<style>
@keyframes tipsy {
  0 {
    transform: translateX(-50%) translateY(-50%) rotate(0deg);
  }
  100% {
    transform: translateX(-50%) translateY(-50%) rotate(360deg);
  }
}

</style>
 <link rel="stylesheet" href="resources/bootstrap/mimilism/assets/css/main.css">
</head>
<body class="mainBody">

 <div class="dk-box-2" style="background-color:white;">
 
 <div class="effect"></div>
 <div class="effect2">
   <svg viewBox="0 0 1000 700">
  <!-- Symbol
  <symbol id="s-text">
    <text text-anchor="middle" x="650px" y="500px" dy=".35em">BEST OF BEST</text>
  </symbol>
  <!-- Duplicate symbols
  <use class="text" xlink:href="#s-text"></use>
  <use class="text" xlink:href="#s-text"></use>
  <use class="text" xlink:href="#s-text"></use>
  <use class="text" xlink:href="#s-text"></use>
  <use class="text" xlink:href="#s-text"></use>
</svg>
</div>
	

        <!-- START: Slider Reviews

            Additional Cz`lasses:
            .dk-swiper-fullscreen
            .dk-swiper-slides-auto

            Additional Attributes:
            data-swiper-arrows
            data-swiper-speed
            data-swiper-space
            data-swiper-slides || data-swiper-slidesAutoz`
            data-swiper-loop
            data-swiper-freeMode
            data-swiper-autoHeight
            data-swiper-breakpoints
        
        <div class="swiper-container dk-swiper dk-swiper-slides-auto"
            data-swiper-slidesAuto="true"
            data-swiper-pagination="true"
            data-swiper-speed="600"
            data-swiper-space="30"
            data-swiper-autoHeight="true"
            data-swiper-loop="true"
           
            >

            <div class="swiper-wrapper">
                
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="resources/bootstrap/mimilism/portfolio-single-1.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-1.png" alt=""></a>
                    </div>
                </div>
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="resources/bootstrap/mimilism/portfolio-single-2.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-2.png" alt=""></a>
                    </div>
                </div>
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="resources/bootstrap/mimilism/portfolio-single-3.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-3.png" alt=""></a>
                    </div>
                </div>
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="resources/bootstrap/mimilism/portfolio-single-4.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-4.png" alt=""></a>
                    </div>
                </div>
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="resources/bootstrap/mimilism/portfolio-single-5.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-5.png" alt=""></a>
                    </div>
                </div>
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="portfolio-single-6.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-6.png" alt=""></a>
                    </div>
                </div>
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="portfolio-single-7.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-7.png" alt=""></a>
                    </div>
                </div>
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="portfolio-single-8.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-8.png" alt=""></a>
                    </div>
                </div>
                
                <div class="swiper-slide text-center">
                    <div class="dk-swiper-slide">
                        <a href="portfolio-single-9.html" class="dk-img"><img src="resources/bootstrap/mimilism/assets/images/present-work-9.png" alt=""></a>
                    </div>
                </div>
                
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <!-- END: Slider Reviews -->




<!-- 슬라이더 밑 부분 
    
       <div class="dk-box-2" style="background-color: #f3f3f3;">
        <div class="container mnb-35">
           <div class="monthIngi">
  <h1><span>B</span>
 	 <span>E</span>
  	<span>S</span>
  	<span>T</span>
 	 <span></span>
 	 <span>O</span>
 	<span>F</span>
 	 <span></span>
 	  <span>M</span>
 	   <span>O</span>
 	    <span>N</span>
 	     <span>T</span>
 	      <span>H</span></h1>
  </div>

            <div class="row vertical-gap justify-content-center">
                
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-1.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-1.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Minimal Agency</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-2.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-2.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Portfolio 2 Columns</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-3.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-3.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Portfolio 3 Columns</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-4.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-4.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Digital Agency</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-5.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-5.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Portfolio 4 Columns</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-6.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-6.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Minimal Agency 2</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-7.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-7.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Agency Portfolio</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-8.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-8.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Minimal Portfolio</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-9.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-9.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Digital Agency 2</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-10.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-10.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Fullscreen Slider</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-11.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-11.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Freelancer Portfolio</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-12.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-12.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Home &amp; Video</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-13.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-13.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Fullscreen Slider 2</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-14.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-14.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Dark Portfolio</span>
        
    </span>
    
</a>



                </div>
                <div class="col-12 col-sm-10 col-md-6 col-lg-4">
                    


<a href="home-15.html" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
    <span class="dk-portfolio-item-image">
        
        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .2)"></span>
        <img src="resources/bootstrap/mimilism/assets/images/present-home-15.png" alt="">
    </span>
    
    <span class="dk-portfolio-item-info">
        <span class="h3 dk-portfolio-item-title">Portfolio 1 Columns</span>
        
    </span>
    
</a>



                </div>
            </div>
        </div>
    </div>

</body>
</html>

 -->