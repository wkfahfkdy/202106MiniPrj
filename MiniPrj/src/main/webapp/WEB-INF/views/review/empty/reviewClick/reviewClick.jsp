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
<style>
	.header{
	font-family: 'Nanum Pen Script', cursive;
	font-size:40px;
	}
	.headerA{
	font-family: 'Nanum Pen Script', cursive;
	font-size:35px;
	}
	.headerB{
	font-family: 'Nanum Pen Script', cursive;
	font-size:30px;
	color:gray;
	}
blockquote {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 40px;
    margin-inline-end: 40px;
	max-width: 1170px;
	margin: 50px auto;
	padding: 45px 45px 55px;
	background-color: #EAEFE5;
	background-image: url("resources/reviewbootstrap/img/blog-single/quote.png");
	background-repeat: no-repeat;
	background-position: right 60px bottom -10px;
} 
	.pC{
	font-family: 'Nanum Pen Script', cursive;
	font-size:30px;
	}
	
	.col-sm-4{
		width:100px;
	}
	.liClass1{
		font-size:4rem;
	}
	.h4b{
		font-family: 'Nanum Pen Script', cursive;
		font-size:40px;
		
	}
	.h4Id{
		  font-family: 'Cute Font', cursive;
		font-size:26px;
		background-color:#FFFA82;
    	width: 80px;
   		 text-align: center;
    	border-radius: 20px 15px 20px 0px
	}
	.h4c{
	font-family: 'Single Day', cursive;
	font-size:30px;
	}
	.textdiv1{
		margin-top:10px;
		float:left;
		height:50px;
		margin-right:20px;
	}
	.textdiv2{
		margin-right: 10px;
		float:right;
	}
	.texthr{
		clear:both;
		
	}
	.texthr1{
	}
.myButton {
  float: right;
    margin-top: -65px;
    margin-right: -30px;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	background-color:#ededed;
	border-radius:10px;
	border:1px solid azure;
	display:inline-block;
	cursor:pointer;
	color:#777777;
	font-family: 'Single Day', cursive;
	font-size:20px;
	font-weight:bold;
	padding:16px 16px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}
.myButton:hover {
	background:linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
	background-color:#dfdfdf;
}
.myButton:active {
	position:relative;
	top:1px;
}
.commentA{
	float:left;
}

    .footer__section{

    	margin-top:50px;
    }
    .textarea{
        margin-top: 10px;
    margin-left:30px;
    font-size:24px;
    font-family: 'Nanum Pen Script', cursive;
    	border:none;
    	/*border-top: 2px solid #d9d9d9;*/
    	background-color:transparent;
    }
    .commentMain{
    	clear:left;
    }
    .cm1{
    	margin-top:30px;
    }
    .commentDiv{
    margin-top: -20px;
    	height:50px;
    }
    
    .reC{
    	clear:both;
    	 float: left;
    }
    .spanComment{
    font-size:25px;
  
    font-family: 'Nanum Pen Script', cursive;
    	margin-left: 40px;
    }
    .inCommentS{
    	border:1px;
    }
    .myButton1 {
	background:linear-gradient(to bottom, #bddbfa 5%, #80b5ea 100%);
	background-color:#bddbfa;
	border-radius:10px;
	border:1px solid #a2bfdb;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
font-family: 'Nanum Pen Script', cursive;
	font-size:22px;
	padding:2px 9px;
	text-decoration:none;
}
.myButton1:hover {
	background:linear-gradient(to bottom, #80b5ea 5%, #bddbfa 100%);
	background-color:#80b5ea;
}
.myButton1:active {
	position:relative;
	top:1px;
}
.btnClass1{
	clear: both;
	margin-top: 10px;
}

</style>
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
				<ul class="nav__menu">
					<li class="liClass1"><i class="fa fa-instagram"></i>&nbsp&nbsp<a href="#" class="menu--active">${Click.rb_title}</a></li>
					
					<!--<li><a href="./blog.html">Blog</a>
						<ul class="sub__menu">
							<li><a href="./blog-single.html">Blog Single</a></li>
						</ul> 
					</li> -->
					
				</ul>
				<div class="text-item">
				<h4 class="headerA"align="right">Writer : ${Click.u_id }</h4><br><br><br>
				<h5 class="headerB" align="right">조회수 !! : ${Click.rb_hit }</h5>
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
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewUpload/리뷰1-1.PNG" alt="">
				</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewUpload/리뷰1-2.PNG" alt="">
					</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewUpload/리뷰1-3.PNG" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="#" data-fresco-group="projects">
					<img src="resources/reviewUpload/리뷰1-4.PNG" alt="">
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
				<h6 class="h4c" align="center" style="color:cadetblue;">${Click.rb_content }</h6>
			</blockquote>
	<!-- Comment Head Section -->
	<section  style="width:80%; margin:auto;">
		
		<div><p class="pC" >LIKE :</p></div>
		<br>
		<div><p style="font-size:20px;">Comments ..</p></div>
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
			<div>
			
				<h4 class="h4Id" style="float:left;">${comment.u_id }&nbsp;&nbsp;</h4>
				<p style="font-size:15px; float:left;">${comment.c_date }</p>
				
				<span class="spanComment">${comment.c_comment }</span>
				
				<div class="btnClass1">
				<form name="commentReForm" method="post">
				<button class="myButton1" id="click" type="button" onclick="commentRe();">답글</button>
					<div  id="reHText" style="display:none; "><input type="text" ></div>
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
	<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
	<script>
			 $(document).ready(function() {
			      $("#click").click(function() {
			    	  document.getElementById("reHText").style.display="block";
			      });
			      $("#click").dblclick(function() {
			        document.getElementById("reHText").style.display="none";
			      });
			    });
	</script>
	
	<footer class="footer__section">


	</footer>
	
		
	
	
	
	
	
	
	

	<!--====== Javascripts & Jquery ======-->
	<script src="resources/reviewbootstrap/js/vendor/jquery-3.2.1.min.js"></script>
	<script src="resources/reviewbootstrap/js/jquery.slicknav.min.js"></script>
	<script src="resources/reviewbootstrap/js/slick.min.js"></script>
	<script src="resources/reviewbootstrap/js/main.js"></script>

	</body>
</html>
    