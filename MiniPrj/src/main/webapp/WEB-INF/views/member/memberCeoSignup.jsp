<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.sJoin{
		margin-top:150px;
	}
</style>

<br><br>
<div class="sJoin" align="center">
	<h3>사업자 회원가입</h3>
	<br>

	<div class="container">
	<div class="">
            <form action="" class="dk-form" method="post">
            	<input type="hidden" name="joinWait" value="Y">
                <div class="row vertical-gap">
                    <div class="col-md-6">
                        <input style = "width:30%;"class="form-control" type="text" name="name" value="" placeholder="Your id(Pk/NN)">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="password" name="pwd" class="form-control" placeholder="Password(NN)">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control"  placeholder="Your Name(NN)">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control" placeholder="Your Tel(NN)">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control" placeholder="Address(NN)">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control"  placeholder="AddressCode(NN)">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control"  placeholder="Mail">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control"placeholder="SFile">
                    </div>
                    <div class="col-12">
                        <div class="dk-result"></div>
                    </div>
                </div>
                <input class="dk-btn dk-btn-md" type="button" name="sumbit" value="Save" onclick="location.href='home.do'"> &nbsp; 
                <button class="dk-btn dk-btn-md" type="reset" name="sumbit">Reset</button>
            </form>
	</div>
	</div>
</div>




    
    