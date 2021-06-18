<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/reviewbootstrap/review.css"/>

	<title>Boto | Photography HTML Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="Boto Photo Studio HTML Template">
	<meta name="keywords" content="photo, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/reviewbootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/reviewbootstrap/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/reviewbootstrap/css/slicknav.min.css"/>
	<link rel="stylesheet" href="resources/reviewbootstrap/css/fresco.css"/>
	<link rel="stylesheet" href="resources/reviewbootstrap/css/slick.css"/>

	<!-- Main Stylesheets -->
	
	<link rel="stylesheet" href="resources/reviewbootstrap/css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<style>
	.imgDiv1{
		margin-left:200px;
	}
</style>

<script>
	function commentInsert(id,rbnum){
		frm.u_id.value=id;
		var comment=$('#comment').val();
		console.log(rbnum);
		frm.rb_num.value=rbnum;
		frm.c_comment.value=comment;
		frm.submit();
	}
	</script>
	<script>
		function delRv(rbnum){
			delFrm.rb_num.value=rbnum;
			delFrm.submit();
		}
		function UpdateRv(num){
			UdFrm.rb_num.value=num;
			var a = $('#title').val();
			var b = $('#Udc').val();
			console.log(a);
			console.log(b);
			UdFrm.rb_title.value=a;
			UdFrm.rb_content.value=b;
			UdFrm.submit();
		}
	</script>
	
	<script>
		 function imageUp(rbnum){
			 
		 }
	</script>
	
</head>
<body>
	<!-- Page Preloder -->	
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section -->
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-4 col-md-3 order-2 order-sm-1">
					<div class="header__social">
						<a href="#"></a>
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<h2></h2>
				</div>
				
			</div>
			<nav class="main__menu">
				<c:choose>	
					<c:when test="${Click.u_id eq id }">
						<ul class="nav__menu">
							<li class="liClass1"><i class="fa fa-instagram"></i>&nbsp&nbsp<input style="font-size:40px;" id="title" type="text"  size="40" value="${Click.rb_title}"></li>					
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="nav__menu">
							<li class="liClass1"><i class="fa fa-instagram"></i>&nbsp&nbsp<a href="#" class="menu--active">${Click.rb_title}</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
				<div class="text-item">
				<h4 class="headerA"align="right">Writer : ${Click.u_id }</h4>
					<div class="imgDiv1">
						<form id="imgDiv1" name="imgDiv1" action="imgDiv1.do" method="post"  enctype="multipart/form-data">
							<span style="float:left;"><input style ="width:100%;" type="file" name="rb_image1" class="form-control"placeholder="SFile"></span>
							<span style="float:left;"><button type="button">등록</button></span>
							<span  style="clear:both"></span>
						</form>
					</div>
					<div class="imgDiv1">
						<form id="imgDiv1" name="imgDiv1" action="imgDiv1.do" method="post"  enctype="multipart/form-data">
							<span style="float:left;"><input style ="width:100%;" type="file" name="rb_image1" class="form-control"placeholder="SFile"></span>
							<span style="float:left;"><button type="button">등록</button></span>
							<span  style="clear:both"></span>
						</form>
					</div>
					<div class="imgDiv1">
						<form id="imgDiv1" name="imgDiv1" action="imgDiv1.do" method="post"  enctype="multipart/form-data">
							<span style="float:left;"><input style ="width:100%;" type="file" name="rb_image1" class="form-control"placeholder="SFile"></span>
							<span style="float:left;"><button type="button">등록</button></span>
							<span  style="clear:both"></span>
						</form>
					</div>
					<div class="imgDiv1">
						<form id="imgDiv1" name="imgDiv1" action="imgDiv1.do" method="post"  enctype="multipart/form-data">
							<span style="float:left;"><input style ="width:100%;" type="file" name="rb_image1" class="form-control"placeholder="SFile"></span>
							<span style="float:left;"><button type="button">등록</button></span>
							<span  style="clear:both"></span>
						</form>
					</div>
				<c:if test="${Click.u_id eq id }">
				<div style="float:right">
				<button class="myButton2"  type="button" onclick="delRv('${Click.rb_num}');" >삭제</button>
				<button class="myButton2"  type="button" onclick="UpdateRv('${Click.rb_num}');">수정</button>
				</div>
				</c:if>
				<br><br><br>
				
				<h5 "class="headerB" align="right">조회수 !! : ${Click.rb_hit }</h5>
				<p style="font-size:25px;"align="right">${Click.rb_regdate }</p>
			</div>
			</nav>
		</div>
	</header>
	<!-- Header Section end -->

	<!-- Hero Section -->
	<section class="hero__section">
		<div class="hero-slider">
			<div class="slide-item">
				
				<a style="clear:both;" class="fresco" href="#"  data-fresco-group="projects">
				<c:choose>
					<c:when test="${Click.rb_image eq null}">
						 
						 <img src="resources/bin/bin.png" alt="" onclick="imageUp('${Click.rb_num}');">
					 </c:when>
					<c:otherwise>
						<img src="resources/reviewUpload/${Click.rb_image}">
					</c:otherwise>
			 	</c:choose>
				</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/bin/bin.png" alt="">
					</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/bin/bin.png" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="#" data-fresco-group="projects">
					<img src="resources/bin/bin.png" alt="">
				</a>	
			</div>
		</div>
		<div class="hero-text-slider">
			<div class="text-item">
			
			</div>
			<div class="text-item">
			</div>
			<div class="text-item">
			</div>
			<div class="text-item">
			</div>
		</div>
	</section>
	<!-- Hero Section end -->

	<!-- Content  -->
			<blockquote>
				<h4 class="h4b">'' Content ''</h4>
				<br><br>
				<c:choose>	
					<c:when test="${Click.u_id eq id }">
						<textarea id="Udc"cols="100" rows="7">${Click.rb_content }</textarea>
					</c:when>
					<c:otherwise>
						<h6 class="h4c" align="center" style="color:cadetblue;">${Click.rb_content }</h6>
					</c:otherwise>
				</c:choose>
			</blockquote>
	<!-- Comment Head Section -->
	<section  style="width:80%; margin:auto;">
		
		<div><p class="pC" >LIKE : ${Click.rb_like }</p></div>
		<br>
		<div><p style="font-size:20px;">Comments .. ( ${count } )</p></div>
		<!-- Comment  -->
	<form  accept-charset="UTF-8" action="commentInsert.do" id="frm" method="post">
	<div class="inCommentS" style="width:700px; margin:auto; height:70px; background-color:#EFEAEA; ">

	 
	 <input type="hidden" id="c_comment" name="c_comment">
	 <input type="hidden" id="u_id" name="u_id">
	 <input type="hidden" id="rb_num" name="rb_num">
	<textarea class="textarea" style="resize: none;" id="comment" name="comment" rows="1" cols="60" placeholder="댓글 입력하는 곳 !"></textarea>
	

	
		</div>
		<button type="button" class="myButton" onclick="commentInsert('${id}',' ${Click.rb_num }');">등록</button>
	</form>
		<hr style="border:solid 1px #A9D0F5;">
		<div class="commentA"></div>
		
	</section>

	<!-- Comment Main Section -->
	<div style="width:80%; margin:auto;" class="commentMain">
		<br>

	
		<div class="commentDiv">
			<c:forEach items="${list }" var="comment">
			<c:set var="click" value="${click+1 }"></c:set>
			<div>
			
				<div><h4 class="h4Id" style="float:left;">${comment.u_id }&nbsp;&nbsp;</h4></div>
					<p style="font-size:15px; ">${comment.c_date }</p>
			
				
				
				<div class="btnClass1">			
				<form name="commentReForm" method="post">			
				<div class="spanComment">${comment.c_comment }</div>
				<button class="myButton1" id="click" type="button" onclick="dis();">답글</button>
					<div id="dis" style="display:block; ">
					
					<div style="float:left;"><h4>&nbsp;&nbsp;&nbsp;&nbsp; L</h4></div>
						<div style="float:left;">
							<table>
								<tr>
									<td align="center" width="100px"> ID </td>	<td> 날짜</td>
								</tr>
								<tr>
									<td width="100px"></td><td height="20px">답글 목록</td>
							 	</tr>
							</table>
							<div style="margin-left:100px; margin-top:20px;">
								<span><input type="text" placeholder="답글 입력하는곳!"></span>
								<span><button class="myButton1" type="button">등록</button></span>								
							</div>
						</div>
					<div style="clear:both;"></div>
						
					</div>
				</form>
				</div>
			</div>
			<hr class="commentfootHr" style="border:solid 1px #EBF5FF;">
			
			</c:forEach>
			<div class="container">
			<!-- Footer Section -->
			<div class="footer__copyright__text">
				<p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved  <i class="fa fa-heart" aria-hidden="true"></i></p>
			</div>
			<!-- Footer Section end -->
		</div>
		</div>
		

	</div>
	
	<!-- 답글 눌렀을때 나오는  script -->
	 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	 <script>
	 function dis(){
if($("#dis").css("display") == "none"){
    $("#dis").show();
} else {
    $("#dis").hide();
}
}
</script>
	<footer class="footer__section">


	</footer>
	
		
	
	<!-- hidden form -->
		<form id="delFrm" name="delFrm" action="deleteReview.do" method="post">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		<form id="UdFrm" name="UdFrm" action="updateReview.do" method="post">
			<input type="hidden" id="rb_title" name="rb_title">
			<input type="hidden" id="rb_content" name="rb_content">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
	
	
	
	

	<!--====== Javascripts & Jquery ======-->
	<script src="resources/reviewbootstrap/js/vendor/jquery-3.2.1.min.js"></script>
	<script src="resources/reviewbootstrap/js/jquery.slicknav.min.js"></script>
	<script src="resources/reviewbootstrap/js/slick.min.js"></script>
	<script src="resources/reviewbootstrap/js/main.js"></script>

	</body>
</html>
    