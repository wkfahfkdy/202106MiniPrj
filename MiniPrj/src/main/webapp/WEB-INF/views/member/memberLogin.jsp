<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.containerCh{
		margin-top:150px;
	}
</style>
<script>
	function memberLoginB() {
		frm.submit();
	}
</script>

<br><br>

<div align="center">
<div  class="containerCh" align="center">
	<h1>login</h1>
	<br>

	<div class="container">
	<div class="">
            <form action="memberLoginB.do" class="dk-form" method="post" id="frm">
                <div>
                    <div class="col-md-6">
                        <input style = "width:70%;"class="form-control" type="text" name="u_id" value="" placeholder="Your id">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:70%;" type="password" name="u_pwd" class="form-control" aria-describedby="emailHelp" placeholder="Password">
                    </div>
                    <div class="col-12">
                        <div class="dk-result"></div>
                    </div>
                </div>
                <br>
                <input class="dk-btn dk-btn-md" type="button" name="sumbit" value="login" onclick="memberLoginB()"> &nbsp; 
                <input class="dk-btn dk-btn-md" type="button" name="sumbit" value="SignUp" onclick="location.href='memberSignup.do'">
            </form>
	</div>
	</div>
</div>


</div>







    
    