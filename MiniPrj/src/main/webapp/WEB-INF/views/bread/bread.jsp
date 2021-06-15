<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- START: Scripts -->

<!-- Object Fit Images -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/object-fit-images/dist/ofi.min.js"></script>

<!-- Popper -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/popper.js/dist/umd/popper.min.js"></script>

<!-- Bootstrap -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/tether/dist/js/tether.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Sticky Kit -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/sticky-kit/dist/sticky-kit.min.js"></script>

<!-- Jarallax -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/jarallax/dist/jarallax.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/jarallax/dist/jarallax-video.min.js"></script>

<!-- Isotope -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/isotope-layout/dist/isotope.pkgd.min.js"></script>

<!-- ImagesLoaded -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>

<!-- Lightgallery -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/lightgallery/dist/js/lightgallery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/lg-fullscreen/dist/lg-fullscreen.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/lg-video/dist/lg-video.min.js"></script>

<!-- Swiper -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/swiper/dist/js/swiper.min.js"></script>

<!-- Jquery Form -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/vendor/jquery-form/dist/jquery.form.min.js"></script>

<!-- The Mimilism -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/js/mimilism.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/js/mimilism.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/mimilism/assets/js/mimilism-init.js"></script>


<style type="text/css">
ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
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
}

#sub-menu>li {
	padding: 16px 28px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.15);
}

#sub-menu>li>a {
	text-decoration: none;
}

#main-menu>li:hover #sub-menu {
	opacity: 1;
	visibility: visible;
}

#sub-menu>li>a:hover {
	text-decoration: underline;
}

.minibox {
	height: 130px;
	width: 555px;
	float: left;
}
</style>




<!-- END: Scripts -->


<html>
<body>


	<div style="margin-top: 150px">
		<div class="container">
			<div class="dk-box-2">


				<div class="minibox">
					<h1>쨘 사진 넣을꺼</h1>
				</div>



				<div class="minibox">
					<table>
						<tr>

							<th width="300px">순위</th>
							<th width="100px">빵 이름</th>
							<th width="250px">베이커리</th>
							<th width="100px">인기도</th>
						</tr>
						<c:forEach items="${bread }" var="vo">
							<tr>
								<td>랭크?</td>
								<td>${vo.b_name }</td>
								<td>${vo.s_name }</td>
								<td>${vo.b_like }</td>
							</tr>
						</c:forEach>
					</table>

				</div>
			</div>




		</div>
	</div>
	</div>




	<div class="dk-box">
		<div class="container">

			<ul class="dk-isotope-filter text-center" id="main-menu">
				<li class="active" data-filter="*"><a href="">All</a></li>
				<li class="active" data-filter=".mockups"><a href="">신규순</a></li>
				<li class="active" data-filter=".branding"><a href="">인기순</a></li>


				<!--  dk-nav dk-nav-align-right -->

				<li class="active" data-filter=".design"><a href="">지역별</a>

					<ul id="sub-menu">

						<li data-filter=".num_1"><a href="">동구</a></li>
						<li data-filter=".num_2"><a href="">수성구</a></li>
						<li data-filter=".num_3"><a href="">중구</a></li>
						<li data-filter=".num_4"><a href="">서구</a></li>
						<li data-filter=".num_5"><a href="">달서구</a></li>
						<li data-filter=".num_6"><a href="">달성군</a></li>
						<li data-filter=".num_7"><a href="">북구</a></li>
						<li data-filter=".num_8"><a href="">칠곡</a></li>
						<li data-filter=".num_9"><a href="">남구</a></li>


					</ul></li>
			</ul>



		</div>
	</div>
















 
	<div class="dk-box-2 dk-padding-bot">
		<div class="container">
			<div class="row vertical-gap dk-isotope-grid">

				<c:forEach items="${bread }" var="vo">
					<div class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item mockups">
<!-- 윗 라인의 div class foreach 돌리면 안되고 다른 방향으로 처리 해야함/순위/지역/랜덤으로 돌려야하기 때문  -->						// 신규순 = mockups

						<form id="frm" action="breadStore.do">
							<input type="hidden" value="${vo.s_id }">

							<button type="button"
								onclick="location.href='breadStore.do?s_id=${vo.s_id }'"
								class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
								<span class="dk-portfolio-item-image"> <span
									class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>
									<span class="dk-portfolio-item-overlay"
									style="background-color: rgba(255, 255, 255, .85)"></span> <img
									src="assets/images/portfolio-2-md.png" alt="">
								</span> <span class="dk-portfolio-item-info"> <span
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

			<div class="text-center">
				<a href="#" class="dk-btn dk-btn-md dk-btn-load dk-btn-work mt-70">Load
					More</a>
			</div>
		</div>
	</div>
</body>
</html>


