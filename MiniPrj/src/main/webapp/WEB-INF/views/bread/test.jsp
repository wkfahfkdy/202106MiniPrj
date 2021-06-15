<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
</head>
<body>
<script type="text/javascript" 
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508"></script>
			<!-- 서비스 라이브러리 -->
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508"></script>
			
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d717979f0ee2bafbd9360806bb508"></script>
	
				<script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
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
</body>
</html>