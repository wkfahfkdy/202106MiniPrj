<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	function memberLoginB() {
		frm.submit();
	}
</script>

<div align="center" style="margin-top: 150px; height: 700px; ">	
	<div style="height: 100px;"></div>
	<h2>아이디 또는 비밀번호를 확인해 주세요.</h2>
	<br>

	<div class="container">
	<div class="dk-nav-content">
            <form action="memberLoginB.do" class="dk-form" method="post" id="frm">
                <div>
                    <div class="col-md-6">
                        <input style = "width:70%" class="form-control" type="text" name="u_id" value="" placeholder="Your id">
                    </div><br>
                    <div class="col-md-6">
                        <input style = "width:70%" type="password" name="u_pwd" class="form-control" aria-describedby="emailHelp" placeholder="Password">
                    </div>
                    <div class="col-12">
                        <div class="dk-result"></div>
                    </div>
                </div>
                <br>
                <input class="dk-btn dk-btn-md" type="button" name="sumbit" value="login" onclick="memberLoginB()"> &nbsp; 
                <input class="dk-btn dk-btn-md" type="button" name="sumbit" value="SignUp" onclick="location.href='memberSignup.do'">
            </form>
            <br><br>
	</div>
	</div>
</div>









    
    