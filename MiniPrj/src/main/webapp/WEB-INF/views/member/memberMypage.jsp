<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>회원정보</title>
<!-- 페이지 상단 부분 정보 -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
		if($('#u_pwdChk').val() == ""){
			alert("비밀번호를 재확인하세요");
			$('#u_pwdChk').focus();
			return false;
		}
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
					<form action="memberUpdateInfo.do" class="dk-form" method="post"
						id="frm">
						<input type="hidden" name="u_pwd"> <input type="hidden"
							name="u_tel"> <input type="hidden" name="u_mail">
						<input type="hidden" name="u_adrcode"> <input
							type="hidden" name="u_adr">
					</form>


					<div class="row vertical-gap">
						<div class="col-md-6">
							<input class="form-control" type="password" id="u_pwd"
								value="${member.u_pwd}" placeholder="New password">
						</div>
						<div class="col-md-6">
							<input class="form-control" type="password" id="u_pwdChk"
								name="check_password" value=""
								placeholder="Again input New password"> <font
								id="chkNotice" size="2"></font>
						</div>
						<div class="col-12">
							<input class="form-control" type="text" value="${member.u_tel}"
								id="u_tel" placeholder="New Tel">
						</div>
						<div class="col-12">
							<input type="email" id="u_mail" class="form-control" 
								aria-describedby="emailHelp" placeholder="Your Email"
								value="${member.u_mail}">
						</div>
						<div class="col-md-12">
							<input class="dk-btn dk-btn-md" style="width: 100%;" type="button"
								onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						</div>
						<div class="col-md-12">
							<input style="width: 100%;" type="text" id="sample6_postcode"
								placeholder="우편번호" class="form-control"
								value="${member.u_adrcode}">
						</div>
						<div class="col-md-12">
							<input style="width: 100%;" type="text" id="sample6_address"
								placeholder="주소" class="form-control" value="${member.u_adr}">
						</div>
						<div class="col-md-12">
							<input style="width: 100%;" type="hidden"
								id="sample6_extraAddress" placeholder="상세주소"
								class="form-control">
						</div>

					</div>

					<!-- 마일리지 확인 파트 -->

					<!-- 
	SELECT SUM(적립금) AS 적립금합계 FROM 구매기록 WHERE 아이디=회원아이디; 해서 합계를 구해다가...

	UPDATE `회원` SET `총적립금` = '위에서 구한 총합' WHERE `아이디` = '회원아이디'; -->

					<!-- 마일리지 확인 파트 끝-->

					<div class="row vertical-gap">
						<div class="col-12">
							<button class="dk-btn dk-btn-md" onclick="memberUpdateInfo()">정보수정</button>
							<button class="dk-btn dk-btn-md" name="deleteInfo"
								onclick="deleteInfo()">탈퇴하기</button>
						</div>
						<c:if test="${member.s_reg eq 'N' and member.joinwait eq 'N' }">
							<div class="col-12">
								<button style="width: 50%;" class="dk-btn dk-btn-md"
									type="submit" name="check_mileage"
									onclick="window.open('memberMileage.do?id=${member.u_id}','적립금 확인하기','width=800, height=800, left=400, top=500,location=no,status=no,scrollbars=yes');">적립금
									확인하기</button>
							</div>
						</c:if>
						
						<c:if test="${member.s_reg eq 'Y' and member.s_pay eq 0}">
							<div class="col-12">
								<button class="dk-btn dk-btn-md" type="button" name="ad4_button"
									onclick="window.open('memberAdPopup.do','광고 신청하기','width=800, height=800, left=400, top=500,location=no,status=no,scrollbars=yes');">광고
									신청하러가기</button>
								<button class="dk-btn dk-btn-md" type="button"
									onclick="location.href='breadStoreManage.do'">My shop</button>			
							</div>
						</c:if>
						<c:if test="${member.s_reg eq 'Y' and member.s_pay > 0}">
							<div class="col-12">
								<button class="dk-btn dk-btn-md" type="button" name="ad4_button"
									onclick="window.open('puchaseAdPopup.do','이용중인 광고','width=1600, height=800, left=400, top=500,location=no,status=no,scrollbars=yes');">이용중인
									광고조회</button>
								<button class="dk-btn dk-btn-md" type="button" name="ad4_button"
									onclick="window.open('memberAdPopup.do?id=${member.u_id}','광고 신청하기','width=800, height=800, left=400, top=500,location=no,status=no,scrollbars=yes');">광고
									신청</button>
								<button class="dk-btn dk-btn-md" type="button"
									onclick="location.href='breadStoreManage.do'">My shop</button>	
							</div>
						</c:if>
					</div>


				</div>
			</div>
		</div>
	</div>
</div>




<!-- 리뷰 사진 파트 끝-->