<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.sJoin{
		margin-top:150px;
	}
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script>
	function ceoSignUp() {
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
		if(frm.s_file.value == ""){
			alert("파일을 첨부해주세요.");
			frm.s_file.focus();
			return false;
		}
		frm.submit();
		alert("회원가입 완료되었습니다.");
	}
</script>

<div class="sJoin" align="center">
	<h3>메뉴 등록하기</h3>

	<div class="container">
	<div class="">
            <form action="breadInserMenuSubmit.do" class="dk-form" method="post" id="frm" enctype="multipart/form-data">
                <div >
                    <div class="col-md-6">
						<input style="width: 50%;" class="form-control" type="text"
							name="u_id" id="u_id" value="" placeholder="Your id" required>
						<button style="width: 50%;" type = "button" id = "idcheck" value="unchecked" class="dk-btn dk-btn-md">중복체크</button>
							
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="password" name="u_pwd"
							 id="u_pwd" class="form-control" aria-describedby="emailHelp"
							placeholder="Password" required>
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
							placeholder="Your Name" required>
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="text" name="u_tel"
							id="u_tel" class="form-control" aria-describedby="emailHelp"
							placeholder="Your Tel" required>
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="text" name="u_mail"
							id="u_mail" class="form-control" aria-describedby="emailHelp"
							placeholder="e-mail" required>
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
                    <div class="col-md-6">
                        <input style = "width:50%;" type="file" name="s_file" class="form-control"placeholder="SFile">
                    </div>
                    <div class="col-12">
                        <div class="dk-result"></div>
                    </div>
                </div>
                <br>
                <button class="dk-btn dk-btn-md" type="button" name="sumbit" value="Save" onclick="ceoSignUp()">Save</button> &nbsp; 
                <button class="dk-btn dk-btn-md" type="reset" name="sumbit">Reset</button>
            </form>
	</div>
	</div>
</div>




    
    