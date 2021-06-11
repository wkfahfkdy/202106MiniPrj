<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<br><br>
<div align="center">
	<h3>일반회원 회원가입</h3>
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
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="Your Name">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="Your Tel">
                    </div>
                    <div class="col-md-6">
                        <input style = "width:30%;" type="text" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="e-mail">
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








    
    