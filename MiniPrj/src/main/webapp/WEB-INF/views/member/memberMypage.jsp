<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>회원정보</title>
<!-- 페이지 상단 부분 정보 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
            }
        }).open();
    }
</script>
<script>
	$(function(){
    	$('#u_pwd').keyup(function(){
      	$('#chkNotice').html('');
   	  });

	    $('#u_pwdChk').keyup(function(){

    	    if($('#u_pwd').val() != $('#u_pwdChk').val()){
        	  $('#chkNotice').html('비밀번호 일치하지 않음');
          	  $('#chkNotice').attr('color', '#f82a2aa3');
            } else{
              $('#chkNotice').html('비밀번호 일치함');
              $('#chkNotice').attr('color', '#199894b3');
        }

       });
    });
	

	function deleteInfo() {
		var userInput = prompt("비밀번호 입력시 탈퇴 처리됩니다.");
		if(userInput == ${member.u_pwd} && userInput != null) {
			location.href="memberDelete.do";
			alert("탈퇴되었습니다.")
		}else {
			alert("취소되었습니다.")
		}
		
	}
	
	function memberUpdateInfo() {
		let result = confirm("수정하시겠습니까?")
		if(result) {
			let passwd = document.getElementById("u_pwd").value;
			let tel = document.getElementById("u_tel").value;
			let mail = document.getElementById("u_mail").value;
			let adr = document.getElementById("sample6_address").value;
			let adrcode = document.getElementById("sample6_postcode").value;
			
			frm.u_pwd.value = passwd;
			frm.u_tel.value = tel;
			frm.u_mail.value = mail;
			frm.u_adr.value = adr;
			frm.u_adrcode.value = adrcode;
			
			frm.submit();
			alert("수정되었습니다.")
		}else {
			alert("취소하였습니다.")
		}
	}
</script>


<div class="dk-main">

	<div class="dk-box-2">
		<div class="container">
			<div class="row vertical-gap justify-content-between">

				<div class="col-lg-6">
					<c:if test="${member.s_reg eq 'Y' }">
						<h3>사업자 ${id }님의페이지</h3>
					</c:if>
					<c:if test="${member.s_reg eq 'N' }">
						<h3>회원 ${id }님의페이지</h3>
					</c:if>
					<form action="memberUpdateInfo.do" class="dk-form" method="post" id="frm">
						<input type="hidden" name="u_pwd">
						<input type="hidden" name="u_tel">
						<input type="hidden" name="u_mail">
						<input type="hidden" name="u_adrcode">
						<input type="hidden" name="u_adr">
		  			</form>
					
					
						<div class="row vertical-gap">
							<div class="col-md-6">
								<input class="form-control" type="password" id="u_pwd"
									value="${member.u_pwd} " placeholder="New password">
							</div>
							<div class="col-md-6">
								<input class="form-control" type="password" id="u_pwdChk"
									name="check_password" value=""
									placeholder="Again input New password">
								<font id="chkNotice" size="2"></font>
							</div>
							<div class="col-12">
								<input class="form-control" type="text" value="${member.u_tel}"
									id="u_tel" placeholder="New Tel">
							</div>
							<div class="col-md-6">
								<input type="email" id="u_mail" class="form-control"
									aria-describedby="emailHelp" placeholder="Your Email" value="${member.u_mail}">
							</div>
							<div class="col-md-12">
							<input class="dk-btn dk-btn-md" style="width: 50%;" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br> 
							</div>
							<div class="col-md-12">
							<input style="width: 50%;" type="text" id="sample6_postcode"  placeholder="우편번호" class="form-control" value="${member.u_adrcode}">
							</div>
							<div class="col-md-12">
							<input style="width: 50%;" type="text" id="sample6_address" placeholder="주소" class="form-control" value="${member.u_adr}"> 
							</div>
							<div class="col-md-12">
							<input style="width: 50%;" type="hidden" id="sample6_extraAddress" placeholder="상세주소" class="form-control">
							</div>
						
						</div>

						<!-- 마일리지 확인 파트 -->

						<!-- 
	SELECT SUM(적립금) AS 적립금합계 FROM 구매기록 WHERE 아이디=회원아이디; 해서 합계를 구해다가...

	UPDATE `회원` SET `총적립금` = '위에서 구한 총합' WHERE `아이디` = '회원아이디'; -->

						<!-- 마일리지 확인 파트 끝-->
						
						<div class="row vertical-gap" >
							<c:if test="${member.s_reg eq 'N' and member.joinwait eq 'N' }">
								<div class="col-12">
									<button style="width: 50%;" class="dk-btn dk-btn-md" type="submit" name="check_mileage">적립금 확인하기</button>
								</div>
							</c:if>	
							<c:if test="${member.s_reg eq 'Y' and member.s_pay eq 0}">
								<div class="col-12">
									<button class="dk-btn dk-btn-md" type="button" name="ad4_button"
									onclick="window.open('memberAdPopup.do','광고 신청하기','width=800, height=800, left=400, top=500,location=no,status=no,scrollbars=yes');">광고
									신청하러가기</button>
								</div>
							</c:if>	
							<c:if test="${member.s_reg eq 'Y' and member.s_pay > 0}">
								<div class="col-12">	
									<button class="dk-btn dk-btn-md" type="button" name="ad4_button"
									onclick="#">이용중인 광고조회</button>
									<button class="dk-btn dk-btn-md" type="button" name="ad4_button"
									onclick="window.open('memberAdPopup.do','광고 신청하기','width=800, height=800, left=400, top=500,location=no,status=no,scrollbars=yes');">광고
									신청</button>
								</div>
							</c:if>	
							<div class="col-12">
								<button class="dk-btn dk-btn-md" onclick="memberUpdateInfo()">정보수정</button>
								<button class="dk-btn dk-btn-md" name="deleteInfo" onclick="deleteInfo()">탈퇴하기</button>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 페이지 상단 부분 정보 끝 -->

	<!-- 리뷰 사진 파트 -->
	<c:if test="${member.s_reg eq 'N' and member.joinwait eq 'N' }">
	<div class="dk-box-2" style="background-color: #f3f3f3;">
		<div class="container mnb-35">
			<h2 class="text-center mnt-8 mb-60">My Review 내 리뷰</h2>

			<div class="row vertical-gap justify-content-center">

				<!-- 첫번째 박스 -->
				<div class="col-12 col-sm-10 col-md-6 col-lg-4">

					<a href="my Review ?"
						class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-center dk-portfolio-item-light">
						<span class="dk-portfolio-item-image"> <span
							class="dk-portfolio-item-overlay"
							style="background-color: rgba(255, 255, 255, .2)"> </span> <img
							src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-1.png"
							alt="">
					</span> <span class="dk-portfolio-item-info"> <span
							class="h3 dk-portfolio-item-title">My Review 1</span>
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
							style="background-color: rgba(255, 255, 255, .2)"></span> <img
							src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-2.png"
							alt="">
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
							style="background-color: rgba(255, 255, 255, .2)"></span> <img
							src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-3.png"
							alt="">
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
							style="background-color: rgba(255, 255, 255, .2)"></span> <img
							src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-4.png"
							alt="">
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
							style="background-color: rgba(255, 255, 255, .2)"></span> <img
							src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-5.png"
							alt="">
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
							style="background-color: rgba(255, 255, 255, .2)"></span> <img
							src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/present-home-6.png"
							alt="">
					</span> <span class="dk-portfolio-item-info"> <span
							class="h3 dk-portfolio-item-title">My Review 6</span>

					</span>

					</a>
				</div>
				<!-- 여섯번째 박스 끝 -->




			</div>
		</div>
	</div>

	</c:if>


	<!-- 사업자 관리 페이지 추가 부분 -->
	<c:if test="${member.s_reg eq 'Y' }">
	<h3 align="center">관리자 페이지 추가 부분입니다.</h3>

	<div class="dk-box-1">
		<div class="bg-image bg-pattern">
			<div
				style="background-color: #202020; background-image: url(${pageContext.request.contextPath }/resources/css/mimilism/assets/images/bg-pattern.png);"></div>
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
						<div class="dk-numbers-text">일주일간 좋아요 증가 수</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="dk-box-2">
		<div class="container">
			<div class="row no-gutters vertical-gap align-items-md-center justify-content-between">
				<div class="col-12 col-md-6 dk-gallery">
					<a
						href="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/img-home-7.png"
						class="dk-gallery-item"><img class="dk-img"
						src="assets/images/img-home-7.png" alt=""></a>
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
				<button class="dk-btn dk-btn-md" type="button"
					onclick='location="home.do"' name="back_home">홈으로</button>
				
			</div>
		</div>
	</div>




	</c:if>

	<!-- 사업자 관리 페이지 추가 부분 끝 -->




</div>
<!-- 리뷰 사진 파트 끝-->