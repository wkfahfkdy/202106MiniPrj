<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>

<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.56421, 126.97897), // 지도의 중심좌표
	        level: 3, // 지도의 확대 레벨
	        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
	    }; 
	// 지도를 생성한다 
	var map = new kakao.maps.Map(mapContainer, mapOption); 
    
   var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('대구 중구 국채보상로 537 덕성빌딩 5층', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">베이커리</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
<title>스토어</title>
</head>
<body>
	<div class="dk-main">

		<div style="margin-top: 150px">
			<div class="dk-box dk-header">

				<div class="container">
					<c:forEach items="${store}" var="vo">

						<div class="row no-gutters" style="background-color: #f3f3f3;">
							<div class="col-12 col-lg-6 text-center dk-gallery">
								<a href="#" class="dk-gallery-item">사진</a>
							</div>
							<div class="col-12 col-lg-6">
								<button style="float: right;">
									<i class="fa fa-heart" aria-hidden="true"></i>
								</button>

								<div class="dk-box dk-header-info">
									<div>
										<h4 class="display-3 mnt-8">${vo.s_name }foreach표현식 쓰니까 두개로 적혀짐</h4>
									</div>

									<div>
										<p class="lead mb-0">${vo.s_content }</p>
									</div>
									<a href="contact.html" class="dk-btn dk-btn-md mt-35">${vo.s_tel }
										연락하기(전화로 바로 연결버튼 하면 좋을듯 아니면 복사하기라도)</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

			<div class="dk-box-2 dk-padding-top">
				<div class="container">
					<h2 class="text-center mnt-8 mb-60">인기 메뉴</h2>




					<c:forEach items="bread" var="vo">
						<div class="row no-gutters">
							<div class="col-12 col-lg-6">

								<a href="portfolio-single-1.html"
									class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
									<span class="dk-portfolio-item-image"> <span
										class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>

										<span class="dk-portfolio-item-overlay"
										style="background-color: rgba(255, 255, 255, .85)"></span> <img
										src="">매장 이미지 삽입
								</span> <span class="dk-portfolio-item-info"> <span
										class="h3 dk-portfolio-item-title"></span> <span
										class="dk-portfolio-item-category"> <span></span>
									</span>

								</span>

								</a>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>



		<!--   <h1>지도 부분인데 시간 없어서 api대충 가져왔는데 나중에 수정해야해요</h1>

   <div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
 -->



		<!-- 지도 api -->

		<div id="map" style="width: 750px; height: 350px;"></div>

		<button type="button"
			onclick='window.open("https://map.kakao.com/link/to/18577297")'>길찾기
		</button>
		<button type="button"
			onclick='window.open("kakaomap://route?sp=37.537229,127.005515&ep=37.4979502,127.0276368&by=CAR"'>대중교통길찾기(카카오지도
			어플 실행)</button>






		<div class="dk-box-1 dk-padding-only-bot">
			<!-- START: Slider Reviews

    Additional Classes:
        .dk-swiper-fullscreen

    Additional Attributes:
        data-swiper-arrows
        data-swiper-arrows-clone
        data-swiper-speed
        data-swiper-space
        data-swiper-slides
        data-swiper-loop
        data-swiper-freeMode
        data-swiper-autoHeight
        data-swiper-breakpoints
        data-swiper-grabCursor
        data-swiper-lazy

-->
			<div class="swiper-container dk-swiper dk-swiper-reviews"
				data-swiper-arrows="true" data-swiper-pagination="true"
				data-swiper-speed="400" data-swiper-space="0" data-swiper-slides="1"
				data-swiper-autoHeight="true" data-swiper-loop="true"
				data-swiper-grabCursor="true">

				<div class="swiper-wrapper">


					<div class="swiper-slide text-center">
						<div class="dk-swiper-slide">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-lg-9">
										<div class="dk-reviews">
											<div class="dk-reviews-icon">
												<span class="icon icon-quote"></span>
											</div>
											<div class="dk-reviews-text">
												<p class="mb-0">대기업 빵은 더이상 먹지 않겠습니다. 제빵왕 이담</p>
											</div>
											<div class="dk-reviews-name">정모</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="swiper-slide text-center">
						<div class="dk-swiper-slide">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-lg-9">
										<div class="dk-reviews">
											<div class="dk-reviews-icon">
												<span class="icon icon-quote"></span>
											</div>
											<div class="dk-reviews-text">
												<p class="mb-0">빵을 사랑하게 되었습니다. 제빵왕 이담님의 다른 빵가게도 꼭 가보겠습니다</p>
											</div>
											<div class="dk-reviews-name">근우</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="swiper-slide text-center">
						<div class="dk-swiper-slide">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-lg-9">
										<div class="dk-reviews">
											<div class="dk-reviews-icon">
												<span class="icon icon-quote"></span>
											</div>
											<div class="dk-reviews-text">
												<p class="mb-0">30년 인생 중 가장 맛있고 부드러운 빵이었어요 널리널리 알릴게요</p>
											</div>
											<div class="dk-reviews-name">도현</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="swiper-pagination"></div>

				<div class="swiper-button-prev">
					<span class="icon pe-7s-angle-left"></span>
				</div>
				<div class="swiper-button-next">
					<span class="icon pe-7s-angle-right"></span>
				</div>
			</div>
			<!-- END: Slider Reviews -->

		</div>




	</div>




	<!-- START: Scripts -->

	<!-- Object Fit Images -->
	<script src="assets/vendor/object-fit-images/dist/ofi.min.js"></script>

	<!-- Popper -->
	<script src="assets/vendor/popper.js/dist/umd/popper.min.js"></script>

	<!-- Bootstrap -->
	<script src="assets/vendor/tether/dist/js/tether.min.js"></script>
	<script src="assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Sticky Kit -->
	<script src="assets/vendor/sticky-kit/dist/sticky-kit.min.js"></script>

	<!-- Jarallax -->
	<script src="assets/vendor/jarallax/dist/jarallax.min.js"></script>
	<script src="assets/vendor/jarallax/dist/jarallax-video.min.js"></script>

	<!-- Isotope -->
	<script src="assets/vendor/isotope-layout/dist/isotope.pkgd.min.js"></script>

	<!-- ImagesLoaded -->
	<script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>

	<!-- Lightgallery -->
	<script src="assets/vendor/lightgallery/dist/js/lightgallery.min.js"></script>
	<script src="assets/vendor/lg-fullscreen/dist/lg-fullscreen.min.js"></script>
	<script src="assets/vendor/lg-video/dist/lg-video.min.js"></script>

	<!-- Swiper -->
	<script src="assets/vendor/swiper/dist/js/swiper.min.js"></script>

	<!-- Jquery Form -->
	<script src="assets/vendor/jquery-form/dist/jquery.form.min.js"></script>

	<!-- The Mimilism -->
	<script src="assets/js/mimilism.min.js"></script>
	<script src="assets/js/mimilism-init.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
	<!-- END: Scripts -->


</body>
</html>
