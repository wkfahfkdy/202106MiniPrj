<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- START: Scripts -->

<script type="text/javascript">
	$(".container ul li").hover(function() {
		$(this).find("ul").stop().fadeToggle(500);
	});

	function goStore(s_id) {
		location.href = 'breadStore.do?s_id=' + s_id;
	}
</script>

<style type="text/css">
ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

#main-menu ul {list-style =none;
	position: absolute;
}

#main-menu>li>a {
	font-size: 0.85rem;
	text-align: center;
	text-decoration: none;
	letter-spacing: 0.05em;
	display: block;
	padding: 14px 36px;
}

#sub-menu {
	position: absolute;
	opacity: 0;
	visibility: hidden;
	display: block;
	z-index: 1000;
	width: 800px;
	height: 30px;
	left: 560px;
	text-decoration: none;
}

#sub-menu>li {
	padding: 16px 28px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.15);
	z-index: 1001;
	float: left;
	text-decoration: none;
	align: center;
}

#sub-menu>ul {
	display: block;
	position: absolute;
	left: -10px, 1px;
	text-decoration: none;
}

#sub-menu>ul>li {
	float: left;
	display: block;
}

#sub-menu>li>a {
	text-decoration: none;
	z-index: 1001;
	display: block;
}

#main-menu>li:hover #sub-menu {
	opacity: 1;
	visibility: visible;
	position: absolute;
	z-index: 1001;
	display: block;
	float: left;
}

#sub-menu>li>a:hover {
	position: relative;
	z-index: 1001;
	display: block;
}

.minibox {
	height: 260px;
	width: 555px;
	float: left;
	z-index: 10;
}

.minibox2 {
	height: 130px;
	width: 555px;
	float: left;
}

.dk-box1 {
	padding: 10px 0 10px;
	z-index: 1;
}

.containerA>.container {
	width: 1210px;
	height: 260;
}

.dk-box2 {
	padding: 50px;
	width: 1210px;
	heigh: 150px;
}

.gap {
	padding: 60px;
}


.goback{
position:fixed; top:95%; right:10%;
z-index:999; 
}



</style>



<!-- END: Scripts -->


<html>
<body>

	<div class="gap"></div>

	<div class="container">
		<div class="dk-box2">


			<div class="minibox">
				<!-- goStore 에 변수 기입 -->
				<a href="#"><img
					src="${pageContext.request.contextPath }/resources/image/blueberrychiffon.png"
					onclick="goStore('${topThree[0].s_id}');"></a>

			</div>



			<div class="minibox2">
				<a href="#"><img
					src="${pageContext.request.contextPath }/resources/image/strawberryCake.png"
					onclick="goStore('${topThree[1].s_id}');"></a>
			</div>

			<div class="minibox2">
				<a href="#"><img
					src="${pageContext.request.contextPath }/resources/image/Garlic.png"
					onclick="goStore('${topThree[2].s_id}');"></a>
			</div>


		</div>




	</div>






	<div class="dk-box1">
		<div class="container">

			<ul class="dk-isotope-filter text-center" id="main-menu">

				<li class="active" data-filter="*"><a href="storeRandomList.do">All</a></li>
				<li class="active" data-filter=".open"><a href="storeOpenList.do">신규순</a></li>
			
				<li class="active" data-filter=".favorite"><a href="storeRankList.do">인기순</a></li>
				<li class="active" data-filter=""><a href="">지역별</a>

					<ul id="sub-menu">
					
						<li data-filter="region" aria-label="submenu" class=".1"><a href="">동구</a></li>
						<li data-filter="region" aria-label="submenu" class=".2"><a href="">수성구</a></li>
						<li data-filter="region" aria-label="submenu" class=".3"><a href="">중구</a></li>
						<li data-filter="region" aria-label="submenu" class=".4"><a href="">서구</a></li>
						<li data-filter="region" aria-label="submenu" class=".5"><a href="">달서구</a></li>
						<li data-filter="region" aria-label="submenu" class=".6"><a href="">달성군</a></li>
						<li data-filter="region" aria-label="submenu" class=".7"><a href="">북구</a></li>
						<li data-filter="region" aria-label="submenu" class=".8"><a href="">칠곡</a></li>
						<li data-filter="region" aria-label="submenu" class=".9"><a href="">남구</a></li>
						
					</ul></li>

			</ul>

		</div>
	</div>



	<div class="dk-box-2 dk-padding-bot">
		<!-- z-index: 1 값으로 준 상태 -->
		<div class="container">
			<div class="row vertical-gap dk-isotope-grid">

				<c:forEach items="${bread }" var="vo">
					<div class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item open">
						<!-- 윗 라인의 div class foreach 돌리면 안되고 다른 방향으로 처리 해야함/순위/지역/랜덤으로 돌려야하기 때문  -->

						<form id="frm" action="breadStore.do">
							<input type="hidden" value="${vo.s_id }">
							<input type="hidden" value="${vo.r_code }">
							<button type="button"
								onclick="location.href='breadStore.do?s_id=${vo.s_id }'"
								class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
								<span class="dk-portfolio-item-image"> <span
									class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>
									<span class="dk-portfolio-item-overlay"
									style="background-color: rgba(255, 255, 255, .85)"></span> 
									<img src="resources/breadMainUpload/${vo.b_main }" alt=""></span> <span class="dk-portfolio-item-info"> <span
									class="h3 dk-portfolio-item-title">${vo.b_name }</span> <span
									class="dk-portfolio-item-category"> <span>from
											${vo.s_name }</span>
								</span>

								</span>
							</button>
						</form>
						<table>


						</table>
					</div>
				</c:forEach>





			</div>

			<!-- 	<div class="text-center">
				<a href="#" class="dk-btn dk-btn-md dk-btn-load dk-btn-work mt-70">Load
					More</a>
			</div> -->
		</div>
	</div>
	
		<script>
			function goback(){
				window.history.back();
			}
		
		</script>
		<div class="goback">
			<button type="button" onclick="goback()"><img src=""></button><i class="fa-arrow-circle-left" aria-hidden="true"></i></a>
		</div>
	
</body>
</html>


