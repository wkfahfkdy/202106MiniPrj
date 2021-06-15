<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Kakao 지도 시작하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<!-- 서비스 라이브러리 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508&libraries=services"></script>
<!-- 	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508"></script> -->





	<div id="map" style="width: 500px; height: 400px;"></div>
<!-- 	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), 
			level : 3
		};
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('중구 국채보상로 537', function(result, status) {

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
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		})
	</script> -->
	 
	<div>
		<input type="hidden" id="search_name" value="${testAdr }">
	</div>
	<div>
		<input type="hidden" id="search_lat">
		<input type="hidden" id="search_lng">
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
		
			
		
		
 		// 주소로 좌표 검색
/* 		function add_search(){
			
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
						
						content:'<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
						
					});
					
					infowindow.open(map,marker);
					
					//지도 중심결과 받은 위치 이동
					map.setCenter(coords);
				}
				
			});
			
		} */
	</script>
</body>
</html>