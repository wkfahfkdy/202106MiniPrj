<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
				  copyToClipboard('Shop Number'); // ${s_tel}
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
					

						<div class="row no-gutters" style="background-color: #f3f3f3;">
							<div class="col-12 col-lg-6 text-center dk-gallery">
								<a href="#" class="dk-gallery-item">${store.s_image }매장 전경 사진</a>
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
<script>
	function storeInform() {
		
		frm.submit();
		alert("수정이 완료되었습니다.");
	}
</script>
								<form action="storeInfrom.do" class="dk-form" method="post" id="frm" >
									<div class="dk-box dk-header-info">
										<div>
											<h4 class="display-3 mnt-8">${store.s_name }</h4>
											<input type="text" class="form-control" maxlength="10" placeholder="매장이름"
											 name="_name" id="s_name">
										</div>
										<div>
											<br>
										
										</div>
	
										<div>
											<p class="lead mb-0">${store.s_content }Ex) 매일 아침 정성으로 빵을 굽습니다!</p>
											<textarea maxlength="30" class="form-control" style="resize:none" placeholder="매장 코멘트를 30자 이내로 작성하세요"
											name="s_content" id="s_content"></textarea>
										</div>
										<div>
											<button class="dk-btn dk-btn-md mt-35" onclick="copy()">${store.s_tel }Ex)0505-333-1114
											</button>
											<input class="form-control" type="text" maxlength="15" placeholder="매장 번호를 입력하세요"
											name="s_tel" id="s_tel">
										</div>
										 
										 <button class="dk-btn dk-btn-md" type="button" name="sumbit" value="Save" onclick="storeInform()">Save</button> &nbsp; 
		              					  <button class="dk-btn dk-btn-md" type="reset" name="sumbit">Reset</button>
									</div>
										 
								</form>
							</div>
						</div>
					
				</div>
			</div>











	
		<div class="dk-box-2 dk-padding-top">
			<div class="container">
				<h2 class="text-center mnt-8 mb-60">메뉴</h2>
		
				<div class="row no-gutters">

					<div class="col-12 col-lg-6">

						<a href=""
							class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
							<span class="dk-portfolio-item-image"> <span
								class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>

								<span class="dk-portfolio-item-overlay"
								style="background-color: rgba(255, 255, 255, .85)"></span> <img
								src="" alt="이미지">이미지
						</span> <span class="dk-portfolio-item-info"> <span
								class="h3 dk-portfolio-item-title">크럼프</span> <span
								class="dk-portfolio-item-category"> <span> 달콤한 크림과 함께 즐기는 크럼프</span>
							</span>
						</span>
						</a>
					</div>


					<div class="col-12 col-lg-6">
						<a href="portfolio-single-2.html"
							class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
							<span class="dk-portfolio-item-image"> <span
								class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>

								<span class="dk-portfolio-item-overlay"
								style="background-color: rgba(255, 255, 255, .85)"></span> <img
								src="" alt="이미지">이미지
						</span> <span class="dk-portfolio-item-info"> <span
								class="h3 dk-portfolio-item-title">육쪽마늘빵</span> <span
								class="dk-portfolio-item-category"> <span> 부드럽고 촉촉한 소스와 빵</span>
							</span>
						</span>
						</a>
					</div>
				</div>
					
			</div>
		</div>
	
	<br>
	<br>











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

	<div align="center">
		<button type="button"
			onclick='window.open("https://map.kakao.com/link/to/카카오판교오피스,37.402056,127.108212")'>길찾기
		</button>
	


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
		<div class="dk-box-2">
		<div class="container">
			<div class="row vertical-gap justify-content-between">
				<button class="dk-btn dk-btn-md" type="button"
					onclick='location="home.do"' name="back_home">홈으로</button>
				
				
				<button class="dk-btn dk-btn-md" type="button"
					onclick='location="breadStore.do"' name="back_home">breadStore</button>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
