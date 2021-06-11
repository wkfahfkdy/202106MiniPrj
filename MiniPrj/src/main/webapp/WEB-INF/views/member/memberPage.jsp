<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>회원정보</title>
</head>
<body>
	
	<div class="dk-box-1">
		<div class="container mnt-8 mnb-8">
			<div class="row justify-content-between">
				<h2>[회원 관리]</h2>
			</div>
		</div>
	</div>
	<div class="dk-box-1">
		<div class="bg-image bg-pattern">
			<div
				style="background-color: #202020; background-image: url(assets/images/bg-pattern.png);"></div>
		</div>
		<div class="container">
			<div class="row justify-content-center vertical-gap mnt-40 mnb-10">

				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">548</div>
						<div class="dk-numbers-text">페이지 방문수</div>
					</div>

				</div>
				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">1465</div>
						<div class="dk-numbers-text">#</div>
					</div>

				</div>
				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">612</div>
						<div class="dk-numbers-text">작성글</div>
					</div>

				</div>
				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">735</div>
						<div class="dk-numbers-text">마일리지</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	
	<div class="dk-box-2">
		<div class="container">
			<div class="row no-gutters vertical-gap align-items-md-center justify-content-between">
				<div class="col-12 col-md-6 dk-gallery">
					<a href="assets/images/img-home-7.png" class="dk-gallery-item"><img
						class="dk-img"
						src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/img-home-7.png"
						alt=""></a>
				</div>
				<div class="col-12 col-md-5 col-lg-5">
					<div class="dk-box">
						<div class="dk-gap-1 d-block d-md-none"></div>
						<h2 class="mnt-8 mb-30">Professional skils</h2>
						<div class="dk-progress dk-count" data-count-speed="2000">
							<div class="dk-progress-title">
								UI/UX Design<span><span class="dk-count-number">75</span>%</span>
							</div>
							<div class="dk-progress">
								<span class="dk-count-progress"></span>
							</div>
						</div>
						<div class="dk-progress dk-count" data-count-speed="2000">
							<div class="dk-progress-title">
								Web development<span><span class="dk-count-number">90</span>%</span>
							</div>
							<div class="dk-progress">
								<span class="dk-count-progress"></span>
							</div>
						</div>
						<div class="dk-progress dk-count" data-count-speed="2000">
							<div class="dk-progress-title">
								Marketing<span><span class="dk-count-number">65</span>%</span>
							</div>
							<div class="dk-progress">
								<span class="dk-count-progress"></span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>