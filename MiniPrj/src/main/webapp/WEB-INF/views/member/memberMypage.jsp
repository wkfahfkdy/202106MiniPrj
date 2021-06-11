<title>회원정보</title>
<!-- 페이지 상단 부분 정보 -->

<div class="dk-main">
	
		<div class="dk-box-2">
			<div class="container">
		<div class="row vertical-gap justify-content-between">

			<div class="col-lg-6">
			<h3>${id }님의 페이지</h3>
				<form action="php/contact.php" class="dk-form" method="post">
					<div class="row vertical-gap">
						
						<div class="col-md-6">
							<input class="form-control" type="password" name="password" value=""
								placeholder="New password">
						</div>
						<div class="col-md-6">
							<input class="form-control" type="password" name="check_password" value=""
								placeholder="Again input New password">
						</div>
						<div class="col-12">
							<input class="form-control" type="text" name="Number" value=""
								placeholder="New Number">
						</div>
						<div class="col-md-6">
							<input type="email" name="email" class="form-control"
								aria-describedby="emailHelp" placeholder="Your Email">
						</div>
						<div class="col-12">
							<input class="form-control" type="text" name="Address" value=""
								placeholder="New Address">
						</div>
						


						<div class="col-12">
							<div class="dk-result"></div>
						</div>
					</div>
					
<!-- 마일리지 확인 파트 -->

	<!-- 
	SELECT SUM(적립금) AS 적립금합계 FROM 구매기록 WHERE 아이디=회원아이디; 해서 합계를 구해다가...

	UPDATE `회원` SET `총적립금` = '위에서 구한 총합' WHERE `아이디` = '회원아이디'; -->
	
	
		
<!-- 마일리지 확인 파트 끝-->
					
					<button class="dk-btn dk-btn-md" type="submit" name="check_mileage">적립금 확인하기</button>
					<button class="dk-btn dk-btn-md" type="submit" name="user_updateInfo">정보수정하기</button>
					<button class="dk-btn dk-btn-md" type="submit" name="deleteInfo">탈퇴하기</button>
				</form>
			</div>
		</div>
	</div>
</div>


<!-- 페이지 상단 부분 정보 끝 -->





<!-- 리뷰 사진 파트 -->
<div class="dk-box-2" style="background-color: #f3f3f3;">
	<div class="container mnb-35">
		<h2 class="text-center mnt-8 mb-60">My Review 내 리뷰</h2>

		<div class="row vertical-gap justify-content-center">



			<!-- 첫번째 박스 -->
			<div class="col-12 col-sm-10 col-md-6 col-lg-4">

				<a href="my Review ?"
					class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
					<span class="dk-portfolio-item-image">
					<span class="dk-portfolio-item-overlay"	style="background-color: rgba(255, 255, 255, .2)">
					</span> 
					<img src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-1.png" alt="">
				</span> 
					<span class="dk-portfolio-item-info"> 
					<span class="h3 dk-portfolio-item-title">My Review 1</span>
				</span>
				</a>
			</div>
			<!-- 첫번째 박스 끝-->

			<!-- 두번째 박스 -->
			<div class="col-12 col-sm-10 col-md-6 col-lg-4">

				<a href="home-2.html"
					class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
					<span class="dk-portfolio-item-image"> <span
						class="dk-portfolio-item-overlay"
						style="background-color: rgba(255, 255, 255, .2)"></span> 
						<img src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-2.png" alt="">
				</span> <span class="dk-portfolio-item-info"> <span
						class="h3 dk-portfolio-item-title">My Review 2</span>

				</span>

				</a>



			</div>
			<!-- 두번째 박스 끝 -->
			
			

			<!-- 세번째 박스 -->
			<div class="col-12 col-sm-10 col-md-6 col-lg-4">
				<a href="home-3.html"
					class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
					<span class="dk-portfolio-item-image"> <span
						class="dk-portfolio-item-overlay"
						style="background-color: rgba(255, 255, 255, .2)"></span> 
						<img src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-3.png" alt="">
				</span> <span class="dk-portfolio-item-info"> <span
						class="h3 dk-portfolio-item-title">My Review 3</span>

				</span>

				</a>

			</div>
			<!-- 세번째 박스 끝-->
			
			
			<!-- 네번째 박스 -->
			<div class="col-12 col-sm-10 col-md-6 col-lg-4">
			<a href="home-4.html"
					class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
					<span class="dk-portfolio-item-image"> <span
						class="dk-portfolio-item-overlay"
						style="background-color: rgba(255, 255, 255, .2)"></span> 
						<img src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-4.png" alt="">
				</span> <span class="dk-portfolio-item-info"> <span
						class="h3 dk-portfolio-item-title">My Review 4</span>

				</span>

				</a>
			</div>
			<!-- 네번째 박스 끝-->
			
			
			<!-- 다섯번째 박스 -->			
			<div class="col-12 col-sm-10 col-md-6 col-lg-4">
				<a href="home-5.html"
					class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
					<span class="dk-portfolio-item-image"> <span
						class="dk-portfolio-item-overlay"
						style="background-color: rgba(255, 255, 255, .2)"></span> 
						<img src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-5.png" alt="">
				</span> <span class="dk-portfolio-item-info"> <span
						class="h3 dk-portfolio-item-title">My Review 5</span>

				</span>

				</a>

			</div>
			<!-- 다섯번째 박스 끝-->
			
			
			
			
			<!-- 여섯번째 박스 -->
			<div class="col-12 col-sm-10 col-md-6 col-lg-4">
					<a href="home-6.html"
					class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
					<span class="dk-portfolio-item-image"> <span
						class="dk-portfolio-item-overlay"
						style="background-color: rgba(255, 255, 255, .2)"></span> 
						<img src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-6.png" alt="">
				</span> <span class="dk-portfolio-item-info"> <span
						class="h3 dk-portfolio-item-title">My Review 6</span>

				</span>

				</a>
			</div>
			<!-- 여섯번째 박스 끝 -->
			



			</div>
		</div>
	</div>
	
	
	
	
	<!-- 사업자 관리 페이지 추가 부분 -->
	
	<h3 align="center">관리자 페이지 추가 부분입니다.</h3>
	
	<div class="dk-box-1">
    <div class="bg-image bg-pattern">
        <div style="background-color: #202020; background-image: url(${pageContext.request.contextPath }/resources/css/mimilism/assets/images/bg-pattern.png);"></div>
    </div>
    <div class="container">
        <div class="row justify-content-center vertical-gap mnt-40 mnb-10">
            
            <div class="col-sm-6 col-lg-3">
                
<div class="dk-numbers dk-count" data-count-speed="100">
    <div class="dk-numbers-title dk-count-number">50</div>
    <div class="dk-numbers-text">저번주 방문자 수</div>
</div>

            </div>
            <div class="col-sm-6 col-lg-3">
                
<div class="dk-numbers dk-count" data-count-speed="300">
    <div class="dk-numbers-title dk-count-number">125</div>
    <div class="dk-numbers-text">이번주 방문자 수</div>
</div>

            </div>
            <div class="col-sm-6 col-lg-3">
                
<div class="dk-numbers dk-count" data-count-speed="700">
    <div class="dk-numbers-title dk-count-number">55</div>
    <div class="dk-numbers-text">일주일간 등록된 리뷰 수</div>
</div>

            </div>
            <div class="col-sm-6 col-lg-3">
                
<div class="dk-numbers dk-count" data-count-speed="700">
    <div class="dk-numbers-title dk-count-number">100</div>
    <div class="dk-numbers-text">일주일간 좋아요 증가 수 </div>
</div>

            </div>
        </div>
    </div>
</div>
	
	<div class="dk-box-2">
    <div class="container">
        <div class="row no-gutters vertical-gap align-items-md-center justify-content-between">
            <div class="col-12 col-md-6 dk-gallery">
                <a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/resources/css/mimilism/assets/images/img-home-7.png" class="dk-gallery-item"><img class="dk-img" src="assets/images/img-home-7.png" alt=""></a>
            </div>
            <div class="col-12 col-md-5 col-lg-5">
                <div class="dk-box">
                    <div class="dk-gap-1 d-block d-md-none"></div>
                    <h2 class="mnt-8 mb-30">통계</h2>

                    
                    
                    <div class="dk-progress dk-count" data-count-speed="2000">
                        <div class="dk-progress-title">
                            광고 후 접속자 수 증가율<span><span class="dk-count-number">75</span>%</span>
                        </div>
                        <div class="dk-progress">
                            <span class="dk-count-progress"></span>
                        </div>
                    </div>
                    
                    
                    <div class="dk-progress dk-count" data-count-speed="2000">
                        <div class="dk-progress-title">
                            고객만족도<span><span class="dk-count-number">90</span>%</span>
                        </div>
                        <div class="dk-progress">
                            <span class="dk-count-progress"></span>
                        </div>
                    </div>
                    
                    
                    <div class="dk-progress dk-count" data-count-speed="2000">
                        <div class="dk-progress-title">
                            여기에는 무엇을?<span><span class="dk-count-number">65</span>%</span>
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
	
	<div class="dk-box-2">
			<div class="container">
				<div class="row vertical-gap justify-content-between">
						<button class="dk-btn dk-btn-md" type="button" onclick='location="home.do"' name="back_home" >홈으로</button>
						<button class="dk-btn dk-btn-md" type="button" name="ad4_button" onclick="window.open('memberAdPopup.do','광고 신청하기','width=800, height=800, left=400, top=500,location=no,status=no,scrollbars=yes');">광고 신청하러가기</button>
				</div>		
			</div>
	</div>
	
	
	
	
	
	
	<!-- 사업자 관리 페이지 추가 부분 끝 -->
	
	
	
	
</div>
<!-- 리뷰 사진 파트 끝-->