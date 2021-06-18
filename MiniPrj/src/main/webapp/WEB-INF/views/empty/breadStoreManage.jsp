<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508&libraries=services"></script>


<style>
.gap{
	padding: 50px;

}

.left{
	padding-left: 400px;
}
.leftmini{
	padding-left: 150px;
}
</style>

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
		copyToClipboard('Shop Number'); // ${s_tel}
		alert('복사 되었습니다!');
	}
</script>

<title></title>
<style>
#s_file {
	align: center;
}
</style>
<script>
	function sImageUpload() {

		frm2.submit();
		alert("수정이 완료되었습니다.");
	}
</script>
</head>



<body>

	<div class="dk-main">

		<div style="margin-top: 150px">
			<div class="dk-box dk-header">

				<div class="container">
					<h4>${id }님의스토어</h4>

						
							

					<div class="row no-gutters" style="background-color: #f3f3f3;">
						<div class="gap">
						<div class="col-12 col-lg-6 text-center dk-gallery">
							<a href="#"><img
								src="resources/storeMainUpload/${bread.s_image }"></a><br>
							<form action="sImageUpload.do" method="post" id="frm2"
								enctype="multipart/form-data">
								<input style="width: 50%;" type="file" id="s_file" name="s_file"
									class="form-control" placeholder="SFile">
								<button class="dk-btn dk-btn-md" type="button" name="sumbit"
									value="사진 업로드" onclick="sImageUpload()">매장사진 저장</button>
							</form>
						</div>
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
							<form action="storeInform.do" class="dk-form" method="post"
								id="frm">
								<div class="dk-box dk-header-info">
									<c:if test="${testName eq '0' }">
										<div>
											<h4 class="display-3 mnt-8">ex)XX베이커리</h4>
											<input type="text" class="form-control" maxlength="10"
												placeholder="매장이름" name="s_name" id="s_name">
										</div>
									</c:if>


									<c:if test="${testName ne '0'}">
										<div>
											<h4 class="display-3 mnt-8">${bread.s_name }</h4>
											<input type="text" class="form-control" maxlength="10"
												placeholder="매장이름" name="s_name" id="s_name">
										</div>
									</c:if>


									<div>
										<br>

									</div>

									<c:if test="${bread.s_content eq null}">
										<div>
											<p class="lead mb-0">${bread.s_content }Ex) 매일 아침 정성으로 빵을
												굽습니다!</p> 
												
												
												
											<textarea maxlength="30" class="form-control"
												style="resize: none" placeholder="매장 코멘트를 30자 이내로 작성하세요"
												name="s_content" id="s_content"></textarea>
										</div>
									</c:if>

									<c:if test="${bread.s_content ne null}">
										<div>
											<p class="lead mb-0">${bread.s_content }</p>
											<textarea maxlength="30" class="form-control"
												style="resize: none" placeholder="매장 코멘트를 30자 이내로 작성하세요"
												name="s_content" id="s_content"></textarea>
										</div>
									</c:if>


									<c:if test="${bread.s_tel eq null}">
										<div>
											<button class="dk-btn dk-btn-md mt-35" onclick="copy()">Ex)0505-333-1114
											</button>
										</div>
									</c:if>

									<c:if test="${bread.s_tel ne null}">
										<div>
											<button class="dk-btn dk-btn-md mt-35" onclick="copy()">${bread.s_tel }
											</button>
										</div>
									</c:if>
									<div>
										<input class="form-control" type="text" maxlength="15"
											placeholder="매장 번호를 입력하세요" name="s_tel" id="s_tel">
									</div>

									<button class="dk-btn dk-btn-md" type="button" name="sumbit"
										value="Save" onclick="storeInform()">Save</button>
									&nbsp;
									<button class="dk-btn dk-btn-md" type="reset" name="sumbit">Reset</button>
								</div>

							</form>
						</div>
					</div>

				</div>
			</div>


			<script>
				function breadMainUpload() {

					frm3.submit();
					alert("수정이 완료되었습니다.");
				}
				
				function breadDeleteMenu(){
					frm4.submit();
					
					
				}
			</script>


			
			
			
			<div class="dk-box-2">
				<div class="container" style="background-color: #f3f3f3;">
				<div class="left">
					<span>Bbang-Main Image</span><br>
					<div class="row vertical-gap justify-content-between">
							<div class="dk-box dk-header-info">
						<div>
						 <img src="resources/breadMainUpload/${bread.b_main }">
						</div>
						<br>
						<br>
						
						<div class="leftmini"> 
						<form action="breadMainUpload.do" method="post" id="frm3"
							enctype="multipart/form-data">
							
							<input style="width: 50%;" type="file" name="s_file"
								class="form-control" placeholder="SFile">
							<button class="dk-btn dk-btn-md" type="button" name="sumbit"
								value="사진 업로드" onclick="breadMainUpload()">Save</button>
						</form>
							</div>
					</div>
				</div>
			</div>
		</div>
</div>







			<div class="dk-box-2 dk-padding-top">
				<div class="container">
					<h2 class="text-center mnt-8 mb-60">메뉴</h2>

					<div class="container">
						<button class="dk-btn dk-btn-md" type="button"
							onclick='location="breadInsertMenu.do"' name="back_home">메뉴등록하기</button>
					</div>

					<div class="row no-gutters">
					
						<c:forEach items="${store}" var="vo" begin="0" step="2">
						<form action="breadDeleteMenu.do" method="post" id="frm4">
						<input type="hidden" name="b_id" id="b_id" value="${vo.b_id }">
						</form>
							<div class="col-12 col-lg-6">
								<a href="#"
									class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
									<span class="dk-portfolio-item-image"> <span
										class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>
										<span class="dk-portfolio-item-overlay"
										style="background-color: rgba(255, 255, 255, .85)"></span> <img
										src="resources/productUpload/${vo.b_image }"
										alt="${vo.b_image }">
								</span> <span class="dk-portfolio-item-info"> <span
										class="h3 dk-portfolio-item-title">${vo.b_name}</span> <span
										class="dk-portfolio-item-category"> <span>${vo.b_comment }</span>
									</span>
								</span>
								</a>
								<div class="container">
									<button class="dk-btn dk-btn-md" type="button"
										onclick="breadDeleteMenu()" name="back_home">메뉴삭제하기</button>								</div>
							</div>

						</c:forEach>
						<c:forEach items="${store}" var="vo" begin="1" step="2">
							<div class="col-12 col-lg-6">
								<a href="#"
									class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-light">
									<span class="dk-portfolio-item-image"> <span
										class="dk-portfolio-item-image-size" data-portfolio-size="80%"></span>
										<span class="dk-portfolio-item-overlay"
										style="background-color: rgba(255, 255, 255, .85)"></span> <img
										src="resources/productUpload/${vo.b_image }"
										alt="${vo.b_image }">
								</span> <span class="dk-portfolio-item-info"> <span
										class="h3 dk-portfolio-item-title">${vo.b_name}</span> <span
										class="dk-portfolio-item-category"> <span>${vo.b_comment }</span>
									</span>
								</span>
								</a>
								<div class="container">
									<button class="dk-btn dk-btn-md" type="button"
										onclick="breadDeleteMenu()" name="back_home">메뉴삭제하기</button>
								</div>
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

			<div align="center">
				<button type="button"
					onclick='window.open("https://map.kakao.com/link/to/카카오판교오피스,37.402056,127.108212")'>길찾기
				</button>



			</div>





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

			$(
					function() {

						var add_search = document.getElementById('search_name').value;
						geocoder
								.addressSearch(
										add_search,
										function(result, status) {

											//정상 검색 완료
											if (status === kakao.maps.services.Status.OK) {

												var coords = new kakao.maps.LatLng(
														result[0].y,
														result[0].x);

												// 결과값 받은 위치 마커 표시
												var marker = new kakao.maps.Marker(
														{
															map : map,
															position : coords
														});

												document
														.getElementById('search_lat').value = result[0].y;
												document
														.getElementById('search_lng').value = result[0].x;

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
		<div class="dk-box-2">
			<div class="container">
				<div class="row vertical-gap justify-content-between">
					<button class="dk-btn dk-btn-md" type="button"
						onclick='location="home.do"' name="back_home">홈으로</button>


					<button class="dk-btn dk-btn-md" type="button"
						onclick='location.href="breadStore.do"' name="back_breadStore">breadStore</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
