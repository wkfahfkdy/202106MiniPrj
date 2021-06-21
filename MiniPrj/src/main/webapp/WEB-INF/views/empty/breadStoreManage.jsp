<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508&libraries=services"></script>


<style>
	.gap{
		padding: 50px;
	}

	.goback{
	position:fixed; top:95%; right:4%;
	z-index:999; 
	}
	
	.gotop{
	position:fixed; top:95%; right:1%;
	z-index:999; 
	}
	
	
	.gap2{
	padding-top : 50px;
	height : 30px;
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

	<div class="dk-main">

		<div style="margin-top: 100px">
			<div class="dk-box dk-header">

				<div class="container">
					<a style="font-size: 30px;"><b>${id }님의 STORE</b></a>
					<a style="font-size: 15px;">나만의 멋진 상점을 꾸며보세요!</a> <br><br>

						
					<div style="width:100%;">
						<div align="center" style="float: left;">
							<a href="#"><img style="width:100%; padding-top:180px;" 
								src="resources/storeMainUpload/${bread.s_image }"></a><br>
							<form action="sImageUpload.do" method="post" id="frm2"
								enctype="multipart/form-data"> <br>
								<div style="width: 70%; float: left;">
									<input style="width: 100%;" type="file" id="s_file" name="s_file"
										class="form-control" placeholder="SFile"></div> 
								<div style="width: 10%; float: left; padding-left: 115px">
									<button style="width: 20%; border:0px; border-radius: 5px; width: 60px; height: 40px; background-color: #C3B0A1; color: #fff; "
											type="button" name="sumbit"onclick="sImageUpload()">저장</button>
								</div>
							</form>
						</div>
						
						<div class="">



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
											<input type="hidden" name="s_name2" value="${bread.s_name }">
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
												<input type="hidden" name="s_content2" value="${bread.s_content }">
										</div>
									</c:if>


									<c:if test="${bread.s_tel eq null}">
										<div style="padding-top: 20px;">
											<button style="width: 20%; border:0px; border-radius: 5px; width:160px; height: 40px; background-color: #C3B0A1; color: #fff; "
													onclick="copy()">Ex)0505-333-1114
											</button>
										</div>
									</c:if>

									<c:if test="${bread.s_tel ne null}">
										<div style="padding-top: 20px;">
											<button style="width: 20%; border:0px; border-radius: 5px; width:160px; height: 40px; background-color: #C3B0A1; color: #fff; "
													onclick="copy()">${bread.s_tel }
											</button>
										</div>
									</c:if>
									<div style="padding-top: 15px;">
										<input class="form-control" type="text" maxlength="15"
											placeholder="매장 번호를 입력하세요" name="s_tel" id="s_tel">
											<input type="hidden" name="s_tel2" value="${bread.s_tel }">
									</div>
									
									<div style="padding-top: 15px;">
									<button style="width: 20%; border:0px; border-radius: 5px; width:80px; height: 40px; background-color: #C3B0A1; color: #fff; "
											type="button" name="sumbit" value="Save" onclick="storeInform()">Save</button>
									&nbsp;
									<button style="width: 20%; border:0px; border-radius: 5px; width:80px; height: 40px; background-color: #C3B0A1; color: #fff; "
											type="reset" name="sumbit">Reset</button>
									</div>
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
				

			</script>


			<div align="center" style="padding-top: 50px;">
				<div class="container">
				<div>
					<a style="font-size: 20px; float: left"><b>STORE Main Image</b></a>
					<div>
						<div class="dk-box dk-header-info"> <br><br>
							<div style="clear: both; padding-top: 40px;">
						 		<img src="resources/breadMainUpload/${bread.b_main }">
												
							<div align="center" style="width: 50%; padding-left: 120px;"> 
								<form action="breadMainUpload.do" method="post" id="frm3"
									enctype="multipart/form-data">
									<div style="z-index: 1;">
									<div style="width: 60%; float: left;">
										<input style="width: 100%;" type="file" name="s_file"
											class="form-control" placeholder="SFile">
									</div>
									<div style="width: 10%; float: left; padding-left: 20px;">
										<button style="width: 20%; border:0px; border-radius: 5px; width: 60px; height: 40px; background-color: #C3B0A1; color: #fff; " 
												type="button" name="sumbit" value="사진 업로드" onclick="breadMainUpload()">Save</button>
									</div></div>
								</form>
							</div>
							</div>
					</div>
				</div>
			</div>
		</div>
</div> 


		<script>
		function breadDeleteMenu(b_id){
			$.ajax({
				url: 'breadDeleteMenu.do',
				dataType:'post',
				data:{b_id : b_id},
				success:function(){
					location.reload();
				},
				error:function(){
					location.reload();
				}
			});
			
			
		}
		</script>
		
		
			<div class="gap2">
			</div>

			<div class="dk-box-2 dk-padding-top" style="magin-top: 200px; z-index: 1;">
				<div class="container">
					<a style="font-size: 20px; float: left"><b>STORE Menu</b></a>

					<div class="container"> &nbsp;&nbsp;&nbsp;
						<button style="width: 20%; border:0px; border-radius: 5px; width: 80px; height: 30px; background-color: #C3B0A1; color: #fff; " 
								type="button" onclick='location="breadInsertMenu.do"' name="back_home">메뉴등록</button>
					</div>

					<div class="row no-gutters">
					
<%-- 								<form action="breadDeleteMenu.do" method="post" id="frm4">
									<input type="hidden" name="b_id" value="${vo.b_id }">
								</form> --%>
						<c:forEach items="${store}" var="vo">
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
								<div class="container" style="text-align: right;">
									<button style="width: 20%; border:0px; border-radius: 5px; width: 80px; height: 30px; background-color: #C3B0A1; color: #fff; " 
											type="button" onclick="breadDeleteMenu(${vo.b_id})" name="item_delete">메뉴삭제</button>								
								</div>
							</div> <br>

						</c:forEach>
						
					</div>

				</div>
			</div>

			<br> <br>


					





			<!-- 지도 api -->
			<div class="container" align="center" style="padding-top: 100px;">
				<div align="center" id="map" style="width: 1000px; height: 400px;"></div>
			</div>
			<div>
				<input type="hidden" id="search_name" value="${loc }">
			</div>
			<div>
				<input type="hidden" id="search_lat"> <input type="hidden"
					id="search_lng">
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
							onclick='location.href="breadStore.do?s_id=${sid}"' name="back_breadStore">breadStore</button>


				</div>
			</div>
		</div>
	</div>
	
		<script>
			function goback(){
				window.history.back();
			}
			function gotop(){
				javascript:window.scrollTo(0,0)
			}
		
		</script>
		
		<!-- 고정메뉴 -->
		<div class="goback">
			<button type="button" onclick="goback()"><img src="${pageContext.request.contextPath }/resources/image/leftbtn2.png"></button>
		</div>
		<div class="gotop">
			<button type="button" onclick="gotop()"><img src="${pageContext.request.contextPath }/resources/image/topbtn2.png"></button>
		</div>

