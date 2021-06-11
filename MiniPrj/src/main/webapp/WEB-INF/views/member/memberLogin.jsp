<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.containerCh{
		margin-top:150px;
	}
</style>

<div  class="containerCh" align="center">
	<h1>login</h1>
	<br>

	<div class="container">
	<div class="">
            <form action="php/contact.php" class="dk-form" method="post">
                <div class="row vertical-gap">
                    <div class="col-md-6">
                        <input style = "width:30%;"class="form-control" type="text" name="name" value="" placeholder="Your id">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="password" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="Password">
                    </div>
                    <div class="col-12">
                        <div class="dk-result"></div>
                    </div>
                </div>
                <input class="dk-btn dk-btn-md" type="button" name="sumbit" value="login" onclick="location.href='home.do'"> &nbsp; 
                <input class="dk-btn dk-btn-md" type="button" name="sumbit" value="SignUp" onclick="location.href='memberSignup.do'">
            </form>
	</div>
	</div>
</div>










    
    