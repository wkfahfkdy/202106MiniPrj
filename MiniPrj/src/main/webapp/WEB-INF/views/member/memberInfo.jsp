<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>회원정보</title>

<meta name="description" content="Mimilism - Bootstrap template for portfolio and works">
<meta name="keywords" content="portfolio, works, template, HTML template, responsive, Bootstrap, premium">
<meta name="author" content="DKcoder">
<link rel="icon" type="image/png" href="assets/images/favicon.png">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- START: Styles -->

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Nunito:400,700%7cPlayball%7cPT+Serif:700i" rel="stylesheet">
<!-- %7c -->
<!-- Bootstrap -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/bootstrap/dist/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/@fortawesome/fontawesome-free/css/brands.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/@fortawesome/fontawesome-free/css/solid.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/@fortawesome/fontawesome-free/css/fontawesome.css">

<!-- Pe icon 7 stroke -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/pixeden-stroke-7-icon/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">

<!-- Lightgallery -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/lightgallery/dist/css/lightgallery.min.css">

<!-- Swiper -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/swiper/dist/css/swiper.min.css">

<!-- Mimilism -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/css/mimilism.css">

<!-- Custom Styles -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mimilism/assets/css/custom.css">

<!-- END: Styles -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
	function joinWait() {
		
	}
</script>

</head>
<body>
<div >
	<div class="dk-box-1 dk-padding-top">
		<div class="container">
			<ul class="dk-isotope-filter text-center">
				<li class="active" data-filter="*">All</li>
				<li data-filter=".branding">가입승인대기</li>
				<li data-filter=".design">사업자</li>
				<li data-filter=".mockups">회원</li>
			</ul>
		</div>
	</div>
	

	
	<div>
		<div>
		<div class="row no-gutters vertical-gap dk-isotope-grid" align="center" style="width:100%">
			<div class="col-12 col-sm-6 col-md-4 col-lg-3 dk-isotope-grid-item branding">
				<div class="dk-portfolio-item dk-portfolio-item-style-6 dk-portfolio-item-center dk-portfolio-item-light">
      			  	
      			  	<table  class="table">
						<c:forEach items="${members }" var="member">
						<c:if test="${member.joinwait eq 'Y' }">
						<tr>
							<th>아이디</th>
							<td>${member.u_id }</td>
							<th>이름</th>
							<td colspan="3">${member.u_name }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${member.u_adr }</td>
							<th>우편번호</th>
							<td colspan="3">${member.u_adrcode }</td>
						</tr>
						<tr>	
							<th>전화번호</th>
							<td>${member.u_tel }</td>
							<th>메일</th>
							<td>${member.u_mail }</td>
							<th>가입일자</th>
							<td>${member.regdate }</td>
						</tr>
						<c:if test="${member.s_reg eq 'Y' }">
							<tr>
								<td colspan="6"><button>사업자관리</button></td>
							</tr>
						</c:if>
							<tr>
								<td colspan="6"><button onclick="joinWait()">가입승인</button></td>
							</tr>
						</c:if> 	
						</c:forEach>
					</table>
       			  
  	
				</div>
            </div>		
				<div class="col-12 col-sm-6 col-md-4 col-lg-3 dk-isotope-grid-item design">
				<div class="dk-portfolio-item dk-portfolio-item-style-6 dk-portfolio-item-center dk-portfolio-item-light">
        			<table  class="table">
						<c:forEach items="${members }" var="member">
						<c:if test="${member.s_reg eq 'Y' }">
						<tr>
							<th>아이디</th>
							<td>${member.u_id }</td>
							<th>이름</th>
							<td colspan="3">${member.u_name }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${member.u_adr }</td>
							<th>우편번호</th>
							<td colspan="3">${member.u_adrcode }</td>
						</tr>
						<tr>	
							<th>전화번호</th>
							<td>${member.u_tel }</td>
							<th>메일</th>
							<td>${member.u_mail }</td>
							<th>가입일자</th>
							<td>${member.regdate }</td>
						</tr>
							<tr>
								<td colspan="6"><button>사업자관리</button></td>
							</tr>
						</c:if>
						</c:forEach>
					</table>
				</div>
            </div>	
					
			<div class="col-12 col-sm-6 col-md-4 col-lg-3 dk-isotope-grid-item mockups">
				<div class="dk-portfolio-item dk-portfolio-item-style-6 dk-portfolio-item-center dk-portfolio-item-light">
					<table  class="table">
						<c:forEach items="${members }" var="member">
						<tr>
							<th>아이디</th>
							<td>${member.u_id }</td>
							<th>이름</th>
							<td colspan="3">${member.u_name }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${member.u_adr }</td>
							<th>우편번호</th>
							<td colspan="3">${member.u_adrcode }</td>
						</tr>
						<tr>	
							<th>전화번호</th>
							<td>${member.u_tel }</td>
							<th>메일</th>
							<td>${member.u_mail }</td>
							<th>가입일자</th>
							<td>${member.regdate }</td>
						</tr>
						<tr>
							<td colspan="6"><button>회원관리</button></td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		</div>
	</div>
	<div class="text-center">
    	<a href="#" class="dk-btn dk-btn-md dk-btn-load dk-btn-work mt-50">Load More</a>
   	</div>
</div>	
	<!-- START: Scripts -->

	<!-- Object Fit Images -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/object-fit-images/dist/ofi.min.js"></script>

	<!-- Popper -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/popper.js/dist/umd/popper.min.js"></script>

	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/tether/dist/js/tether.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Sticky Kit -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/sticky-kit/dist/sticky-kit.min.js"></script>

	<!-- Jarallax -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/jarallax/dist/jarallax.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/jarallax/dist/jarallax-video.min.js"></script>

	<!-- Isotope -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/isotope-layout/dist/isotope.pkgd.min.js"></script>

	<!-- ImagesLoaded -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>

	<!-- Lightgallery -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/lightgallery/dist/js/lightgallery.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/lg-fullscreen/dist/lg-fullscreen.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/lg-video/dist/lg-video.min.js"></script>

	<!-- Swiper -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/swiper/dist/js/swiper.min.js"></script>

	<!-- Jquery Form -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/vendor/jquery-form/dist/jquery.form.min.js"></script>

	<!-- The Mimilism -->
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/js/mimilism.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/css/mimilism/assets/js/mimilism-init.js"></script>
	<!-- END: Scripts -->

</body>
</html>