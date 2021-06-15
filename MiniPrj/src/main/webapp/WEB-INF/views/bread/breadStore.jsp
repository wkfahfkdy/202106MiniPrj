<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

			<head>
			
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508">
				<!-- 지도 라이브러리 -->
				</script>
				
				<script type="text/javascript" 
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508"></script>
			<!-- 서비스 라이브러리 -->
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
								
								
							//위에 주소 기입 부분에 ${S_adr}로 매번 자동으로 바뀌게끔 설정
							//장소 아이디로 검색하는 방향이 있는데 장소id확인 방법 이해 못함
							
							
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
								<a href="#" class="dk-gallery-item">매장 전경 사진</a>
							</div>
							
							<div class="col-12 col-lg-6">
									<button style="float: right;">
										<i class="fa fa-heart" aria-hidden="true"></i>
									</button>
	
									<button style="float: right;">
										<i class="fa fa-heart-o" aria-hidden="true"></i>
									</button>

								<div class="dk-box dk-header-info">
											<div>
												<h4 class="display-3 mnt-8">${vo.s_name }foreach표현식쓰니까
													두개로 적혀짐 db내용 따라서 내용 없는 애들은 하나만 나옴 해결 필요</h4>
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
					
					<h2 class="text-center mnt-8 mb-60">메뉴</h2>




					<c:forEach items="bread" var="vo">
						<div class="row no-gutters">
							<div class="col-12 col-lg-6">

								<a href="portfolio-single-1.html"
									class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
									<span class="dk-portfolio-item-image"> <span
										class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>

										<span class="dk-portfolio-item-overlay"
										style="background-color: rgba(255, 255, 255, .85)"></span> <img
										src="">빵 이미지 삽입
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



		<!-- 지도 api -->

		<div id="map" style="width: 750px; height: 350px;"></div>

		<div align="center">
			<button type="button"
				onclick='window.open("https://map.kakao.com/link/to/18577585")'>길찾기
			</button>
			<button type="button"
				onclick='window.open("kakaomap://route?sp=37.537229,127.005515&ep=37.4979502,127.0276368&by=CAR"'>대중교통길찾기(카카오지도
				어플 실행)</button>

		</div>







	</div>




</body>
</html>
