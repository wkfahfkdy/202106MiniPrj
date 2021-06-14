<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>


<body>
		<div style="margin-top: 150px">
			<div class="container">
				<div class="dk-box-2">
					<div class="bg-image bg-image-parallax">
						<!-- <img class="jarallax-img"
							src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/rank.png"
							alt="">
							 -->
							
								
							
					</div>
					<div class="row justify-content-center">
						<div class="col-lg-8">
												
					
					
					
						
<table align="center">
						
						<c:forEach items="${bread }" var="vo">
							<tr>
								<td>${vo.b_image }</td>
								<td>${vo.b_name }</td>
								<td>${vo.b_price }</td>
								<td>${vo.b_like }</td>
								</tr>
						</c:forEach>
					</table>
					
					
					
				
						</div>
					</div>
					<div class="dk-gap-6"></div>
				</div>
			</div>
		</div>
		
		
		
		
		<div class="dk-box">
			<div class="container">
				<ul class="dk-isotope-filter text-center">
					<li class="active" data-filter="*">All</li>
					<li data-filter=".mockups">신규순</li>
					<li data-filter=".branding">인기순</li>
					<li data-filter=".design">지역별 / 언더 메뉴바 만들어서 구 이름 나열 후 구 클릭 시 해당하는 스토어만 보여주기</li>
				

				</ul>
			</div>
		</div>





		<div class="dk-box-2 dk-padding-bot">
			<div class="container">
				<div class="row vertical-gap dk-isotope-grid">

					<div class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item mockups"> // 신규순 = mockups



						<a href="breadStore.do"
							class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
							<span class="dk-portfolio-item-image"> <span
								class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>

								<span class="dk-portfolio-item-overlay"
								style="background-color: rgba(255, 255, 255, .85)"></span> <img
								src="assets/images/portfolio-2-md.png" alt="">
						</span> <span class="dk-portfolio-item-info"> <span
								class="h3 dk-portfolio-item-title">스토어 A</span> <span
								class="dk-portfolio-item-category"> <span>스토어 A</span>
							</span>

						</span>

						</a>
					</div>
				
				
				
					<div class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item branding"> // 인기순 = branding
						<a href="breadStore.do"
							class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
							<span class="dk-portfolio-item-image"> <span
								class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>

								<span class="dk-portfolio-item-overlay"
								style="background-color: rgba(255, 255, 255, .85)"></span> <img
								src="assets/images/portfolio-1-md.png" alt="">
						</span> <span class="dk-portfolio-item-info"> <span
								class="h3 dk-portfolio-item-title">스토어 b</span> <span
								class="dk-portfolio-item-category"> <span>스토어 b</span>
							</span>

						</span>

						</a>
					</div>
					
					
					
					
					
					<div
						class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item photography"> 포토그래피
						<a href="breadStore.do"
							class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
							<span class="dk-portfolio-item-image"> <span
								class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>

								<span class="dk-portfolio-item-overlay"
								style="background-color: rgba(255, 255, 255, .85)"></span> <img
								src="assets/images/portfolio-4-md.png" alt="">
						</span> <span class="dk-portfolio-item-info"> <span
								class="h3 dk-portfolio-item-title">스토어 c</span> <span
								class="dk-portfolio-item-category"> <span>스토어 c</span>
							</span>

						</span>

						</a>
					</div>
					
					
					
					 
					<div class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item branding"> 브랜딩
						<a href="breadStore.do"
							class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
							<span class="dk-portfolio-item-image"> <span
								class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>

								<span class="dk-portfolio-item-overlay"
								style="background-color: rgba(255, 255, 255, .85)"></span> <img
								src="assets/images/portfolio-3-md.png" alt="">
						</span> <span class="dk-portfolio-item-info"> <span
								class="h3 dk-portfolio-item-title">스토어 d</span> <span
								class="dk-portfolio-item-category"> <span>스토어 d</span>
							</span>

						</span>

						</a>
					</div>
					
					
					
					
					<div class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item design"> design
						<a href="breadStore.do"
							class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
							<span class="dk-portfolio-item-image"> <span
								class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>

								<span class="dk-portfolio-item-overlay"
								style="background-color: rgba(255, 255, 255, .85)"></span> <img
								src="assets/images/portfolio-5-md.png" alt="">
						</span> <span class="dk-portfolio-item-info"> <span
								class="h3 dk-portfolio-item-title">스토어 e</span> <span
								class="dk-portfolio-item-category"> <span>스토어 e</span>
							</span>

						</span>

						</a>
					</div>



					<div class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item branding"> 브랜딩
						<a href="breadStore.do"
							class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
							<span class="dk-portfolio-item-image"> <span
								class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>

								<span class="dk-portfolio-item-overlay"
								style="background-color: rgba(255, 255, 255, .85)"></span> <img
								src="assets/images/portfolio-6-md.png" alt="">
						</span> <span class="dk-portfolio-item-info"> <span
								class="h3 dk-portfolio-item-title">스토어 f</span> <span
								class="dk-portfolio-item-category"> <span>스토어 f</span>
							</span>

						</span>

						</a>
					</div>
				</div>

				<div class="text-center">
					<a href="#" class="dk-btn dk-btn-md dk-btn-load dk-btn-work mt-70">Load
						More</a>
				</div>
			</div>
		</div>


</body>
</html>
