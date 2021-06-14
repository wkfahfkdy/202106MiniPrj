<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>

<body>
		<div style="margin-top: 150px">
			<div class="container">
				<div class="dk-box-2">
					<div class="bg-image bg-image-parallax">
						 <img class="jarallax-img"
							src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/rank.png"
							alt="">
							 
						
								
							
					</div>
					<div class="row justify-content-center">
						<div class="col-lg-8">
												
					
							<c:forEach items="${bread }" var="vo">
							<tr>
								<td>${vo.b_image }</td>
								<td>${vo.b_name }</td>
								<td>${vo.b_price }</td>
								<td>${vo.b_like }</td>
								</tr>
						</c:forEach>
					
						<h1>되니?</h1>
					
					
					
					
				
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

					<c:forEach items="${bread }" var="vo">
						<div class="col-12 col-lg-6 col-xl-4 dk-isotope-grid-item mockups"> // 신규순 = mockups
	
							<form id="frm" action="breadStore.do">
								<input type="hidden" value="${vo.s_id }">
								
								<button type ="button" onclick="location.href='breadStore.do?s_id=${vo.s_id }'"
									class="dk-portfolio-item dk-portfolio-item-style-1 dk-portfolio-item-center dk-portfolio-item-light">
									<span class="dk-portfolio-item-image"> <span
										class="dk-portfolio-item-image-size" data-portfolio-size="100%"></span>
		
										<span class="dk-portfolio-item-overlay"
										style="background-color: rgba(255, 255, 255, .85)"></span> <img
										src="assets/images/portfolio-2-md.png" alt="">
								</span> <span class="dk-portfolio-item-info"> <span
										class="h3 dk-portfolio-item-title">${vo.b_name }</span> <span
										class="dk-portfolio-item-category"> <span>from ${vo.s_name }</span>
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
