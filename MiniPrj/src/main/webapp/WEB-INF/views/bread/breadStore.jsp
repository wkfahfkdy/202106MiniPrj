<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

			<head>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508&libraries=services"></script>
			
			
				
	<script> // 번호 복사 기능
				function copyToClipboard(val) {
				  const t = document.createElement("textarea");
				  document.body.appendChild(t);
				  t.value = val;
				  t.select();
				  document.execCommand('copy');
				  document.body.removeChild(t);
				}
				function copy() {
				  copyToClipboard('010-1111-1111'); // ${s_tel}
				  alert('복사 되었습니다!');
				}
	</script>
					
					<title>스토어</title>
			</head>
			
			
<body>

	<div class="dk-main">

		<div style="margin-top: 150px">
			<div class="dk-box dk-header">

				<div class="container">
					<c:forEach items="${store}" var="vo" begin="1" end="1">

						<div class="row no-gutters" style="background-color: #f3f3f3;">
							<div class="col-12 col-lg-6 text-center dk-gallery">
								<a href="#" class="dk-gallery-item">매장 전경 사진</a>
							</div>
							
							<div class="col-12 col-lg-6">
							
							
							
							<!-- 스토어 좋아요 아닌 상태 => 빈 하트 
							<c:if test="store.s_like eq '0' ">
						
									<button style="float: right;">
										<i class="fa fa-heart-o" aria-hidden="true"></i>
									</button>
							</c:if>
							 -->
							
							<!-- 스토어 좋아요 아닌 상태 => 찐 하트 
							<c:if test="store.s_like eq '1' ">
									<button style="float: right;">
										<i class="fa fa-heart" aria-hidden="true"></i>
									</button>
							</c:if>
							-->
							
							
							
								<div class="dk-box dk-header-info">
											<div>
												<h4 class="display-3 mnt-8">${vo.s_name }</h4>
											</div>
		
											<div>
												<p class="lead mb-0">${vo.s_content }</p>
											</div>
										<button class="dk-btn dk-btn-md mt-35" onclick="copy()">${vo.s_tel }
											</button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

			<div class="dk-box-2 dk-padding-top">
				<div class="container">
					
					<h2 class="text-center mnt-8 mb-60">메뉴</h2>




					<c:forEach items="${store}" var="vo">
						<div class="row no-gutters">
								<div class="col-12 col-lg-6">

								<a href="portfolio-single-1.html"
									class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
									<span class="dk-portfolio-item-image"> <span
										class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>

										<span class="dk-portfolio-item-overlay"
										style="background-color: rgba(255, 255, 255, .85)">${vo.b_name}</span> <img
										src="">빵 이미지 삽입
								</span> <span class="dk-portfolio-item-info"> ${vo.b_comment }<span
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
<div class="container" align="center">
	<div align="center" id="map" style="width: 1000px; height: 400px;"></div>
	</div>
	<div>
		<input type="hidden" id="search_name" value="${loc }">
	</div>
	<div>
		<input type="hidden" id="search_lat">
		<input type="hidden" id="search_lng">
	</div>

		<div align="center">
			<button type="button"
				onclick='window.open("https://map.kakao.com/link/to/카카오판교오피스,37.402056,127.108212")'>길찾기
			</button>
			<button type="button"
				onclick='window.open("kakaomap://route?sp=37.537229,127.005515&ep=37.4979502,127.0276368&by=CAR"'>대중교통길찾기(카카오지도
				어플 실행)</button>

		</div>







	</div>
<script>
		var mapContainer = document.getElementById('map'),
		mapOption={
				center:new kakao.maps.LatLng(33.450701, 126.570667),
				level:3
		};
		
		// 지도 생성
		var map = new kakao.maps.Map(mapContainer,mapOption);
		
		// 주소-좌표 변환 객체 생성
		var geocoder = new kakao.maps.services.Geocoder();
		
 		$(function() {
 			
			var add_search = document.getElementById('search_name').value;
			geocoder.addressSearch(add_search, function(result,status){
				
				//정상 검색 완료
				if(status === kakao.maps.services.Status.OK) {
					
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					
					// 결과값 받은 위치 마커 표시
					var marker = new kakao.maps.Marker({
						map:map,
						position:coords
					});
					
					document.getElementById('search_lat').value=result[0].y;
					document.getElementById('search_lng').value=result[0].x;
					
					var infowindow = new kakao.maps.InfoWindow({
						
						content:'<div style="width:150px;text-align:center;padding:6px 0;">가게 위치</div>'
						
					});
					
					infowindow.open(map,marker);
					
					//지도 중심결과 받은 위치 이동
					map.setCenter(coords);
				}
				
			});
 		})
		</script>



</body>
</html>
