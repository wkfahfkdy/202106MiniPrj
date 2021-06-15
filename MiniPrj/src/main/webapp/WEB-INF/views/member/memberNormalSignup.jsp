<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script type="text/javascript">
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
	
	
	$(function () {
		$('#idcheck').click(function() {
			if($('#u_id').val() == ""){
				alert('아이디를 입력하세요!')
				$('#u_id').focus();
				return;
			}
			$.ajax({
				url: 'memberIdCheck.do',
				data: {id: $('#u_id').val()},
				type : 'post',
				success : function(data) {
					if(data == 0){
						alert('사용가능한 아이디 입니다.');
						$("#u_pwd").focus();
						$("#idcheck").val('checked');
					}else{
						alert('아이디가 존재합니다.')
						$('#u_id').val('');
						$('#u_id').focus();
					}
				},
				error : function(err) {
					console.log(err);
				}
			}
			);
		});
	})
	
</script>
	
<script>
	function memberSignUp() {
		if(frm.u_id.value == ""){
			alert("아이디를 입력하세요");
			frm.u_id.focus();
			return false;
		}
		if(frm.idcheck.value == 'unchecked'){
			alert("아이디를 중복체크하세요");
			return false;
		}
		if(frm.u_pwd.value == ""){
			alert("비밀번호를 입력하세요");
			frm.u_pwd.focus();
			return false;
		}
		if(frm.u_name.value == ""){
			alert("이름을 입력하세요");
			frm.u_name.focus();
			return false;
		}
		if(frm.u_tel.value == ""){
			alert("전화번호를 입력하세요");
			frm.u_tel.focus();
			return false;
		}
		if(frm.u_mail.value == ""){
			alert("이메일를 입력하세요");
			frm.u_mail.focus();
			return false;
		}
		if(frm.u_adr.value == ""){
			alert("주소를 입력하세요");
			frm.u_adr.focus();
			return false;
		}
		frm.submit();
		alert("회원가입 완료되었습니다.");
	}
</script>
<br>
<br>
<br>
<div align="center">
	<h3>일반회원 회원가입</h3>
	<br>

	<div class="container">
		<div class="">
			<form action="memberSignupSubmit.do" class="dk-form" method="post" id="frm">
				<div >
					<div class="col-md-6">
						<input style="width: 50%;" class="form-control" type="text"
							name="u_id" id="u_id" value="" placeholder="Your id" >
						<button class="dk-btn dk-btn-md" style="width: 50%;" type="button" id="idcheck" value="unchecked" >중복체크</button>
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="password" name="u_pwd"
							 id="u_pwd" class="form-control" aria-describedby="emailHelp"
							placeholder="Password" >
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" class="form-control" type="password" id="u_pwdChk"
							name="check_password" value=""
							placeholder="Again input New password">
						<font id="chkNotice" size="2"></font>
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="text" name="u_name"
							id="u_name" class="form-control" aria-describedby="emailHelp"
							placeholder="Your Name" >
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="text" name="u_tel"
							id="u_tel" class="form-control" aria-describedby="emailHelp"
							placeholder="Your Tel" >
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="text" name="u_mail"
							id="u_mail" class="form-control" aria-describedby="emailHelp"
							placeholder="e-mail" >
					</div>
					<div class="col-md-6">
					<input class="dk-btn dk-btn-md" style="width: 50%;" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br> 
					</div>
					<div class="col-md-6">
					<input style="width: 50%;" type="text" id="sample6_postcode" name="u_adrcode" placeholder="우편번호" class="form-control">
					</div>
					<div class="col-md-6">
					<input style="width: 50%;" type="text" id="sample6_address" name="u_adr" placeholder="주소" class="form-control"> 
					</div>
					<div class="col-md-6">
					<input style="width: 50%;" type="text" id="sample6_extraAddress" name="u_adr2" placeholder="상세주소" class="form-control">
					</div>
					<div class="col-12">
						<div class="dk-result"></div>
					</div>
				</div>
				<br>
				<button class="dk-btn dk-btn-md" type="button" name="sumbit"
					value="Save" onclick="memberSignUp()">Save</button> &nbsp;
				<button class="dk-btn dk-btn-md" type="reset" >Reset</button>
			</form>
		</div>
	</div>
</div>









