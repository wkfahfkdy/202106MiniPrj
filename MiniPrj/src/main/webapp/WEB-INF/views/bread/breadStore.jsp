<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>

<style>

.gap{
padding: 150px;

}
.goback{
position:fixed; top:95%; right:4%;
z-index:999; 
}

.gotop{
position:fixed; top:95%; right:1%;
z-index:999; 
}


</style>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508&libraries=services"></script>



<script>
	// 번호 복사 기능
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
					<c:forEach items="${store}" var="vo" begin="0" end="0">

						<div class="row no-gutters" style="background-color: #f3f3f3;">
							<div class="col-12 col-lg-6 text-center dk-gallery">
								<img src="resources/storeMainUpload/${vo.s_image }">
							
							</div>

							<div class="col-12 col-lg-6">



							<!--  스토어 좋아요 아닌 상태 => 빈 하트 --> 
						
									<button style="float: right;">
										<i class="fa fa-heart-o" aria-hidden="true"></i>
									</button>
							

								<!-- 스토어 좋아요 아닌 상태 => 찐 하트 -->
									<button style="float: right;">
										<i class="fa fa-heart" aria-hidden="true"></i>
									</button>
							



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
					<div class="row no-gutters">
						<c:forEach items="${store}" var="vo" begin="0" end="5" step="2">
							<div class="col-12 col-lg-6">
								<a href="breadView.do?b_id=${vo.b_id }" class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
									<span class="dk-portfolio-item-image"> 
										<span class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>
										<span class="dk-portfolio-item-overlay"	style="background-color: rgba(255, 255, 255, .85)"></span> 
										<img src="resources/productUpload/${vo.b_image }" alt="${vo.b_image }">
									</span> 
									<span class="dk-portfolio-item-info"> 
										<span class="h3 dk-portfolio-item-title">${vo.b_name}</span> 
										<span class="dk-portfolio-item-category"> 
										<span>${vo.b_comment }</span>
									</span>
									</span>
								</a>
							</div>
						</c:forEach>
						<c:forEach items="${store}" var="vo" begin="1" end="5" step="2">
							<div class="col-12 col-lg-6">
								<a href="breadView.do?b_id=${vo.b_id }"
									class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
									<span class="dk-portfolio-item-image"> 
										<span class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>
										<span class="dk-portfolio-item-overlay"	style="background-color: rgba(255, 255, 255, .85)"></span> 
										<img src="resources/productUpload/${vo.b_image }" alt="${vo.b_image }">
									</span> 
									<span class="dk-portfolio-item-info"> 
										<span class="h3 dk-portfolio-item-title">${vo.b_name}</span> 
										<span class="dk-portfolio-item-category"> 
											<span>${vo.b_comment }</span>
										</span>
									</span>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>

			<br> <br>











			<!-- 지도 api -->
			<div class="container" align="center">
				<div align="center" id="map" style="width: 1000px; height: 400px;"></div>
			</div>
			<div>
				<input type="hidden" id="search_name" value="${loc }">
			</div>
			<div>
				<input type="hidden" id="search_lat"> <input type="hidden"
					id="search_lng">
			</div>

		


		<div class="gap"></div>




		</div>
		<script>
			var mapContainer = document.getElementById('map'), mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667),
				level : 3
			};

			// 지도 생성
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 주소-좌표 변환 객체 생성
			var geocoder = new kakao.maps.services.Geocoder();

			$(function() {

				var add_search = document.getElementById('search_name').value;
				geocoder
						.addressSearch(
								add_search,
								function(result, status) {

									//정상 검색 완료
									if (status === kakao.maps.services.Status.OK) {

										var coords = new kakao.maps.LatLng(
												result[0].y, result[0].x);

										// 결과값 받은 위치 마커 표시
										var marker = new kakao.maps.Marker({
											map : map,
											position : coords
										});

										document.getElementById('search_lat').value = result[0].y;
										document.getElementById('search_lng').value = result[0].x;

										var infowindow = new kakao.maps.InfoWindow(
												{

													content : '<div style="width:150px;text-align:center;padding:6px 0;">가게 위치</div>'

												});

										infowindow.open(map, marker);

										//지도 중심결과 받은 위치 이동
										map.setCenter(coords);
									}

								});
			})
		</script>
			<script>
			function goback(){
				window.history.back();
			}
			function gotop(){
				javascript:window.scrollTo(0,0)
			}
		
		</script>
		<div class="goback">
			<button type="button" onclick="goback()"><img src="${pageContext.request.contextPath }/resources/image/leftbtn2.png""></a>
		</div>
		<div class="gotop">
			<button type="button" onclick="gotop()"><img src="${pageContext.request.contextPath }/resources/image/topbtn2.png"></a>
		</div>
</body>
</html>
