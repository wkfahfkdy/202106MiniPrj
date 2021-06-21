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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
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

a.like-button {
  cursor: pointer;
}

.middle-wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 95vh;
}

.like-wrapper {
  display: flex;
  justify-content: space-around;
  flex-flow: row wrap;
  width: 50%;
}

.like-button {
  border: 2px solid #c7c7c7;
  border-radius: 40px;
  padding: 0.45rem 0.75rem;
  color: #878787;
  font-weight: bold;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1rem;
  transition: all 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  filter: grayscale(100%);
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  width: 90px;
}
.like-button.liked {
  color: #ff6e6f;
  border-color: currentColor;
  filter: grayscale(0);
}
.like-button:hover {
  border-color: currentColor;
}

.like-icon {
  width: 18px;
  height: 16px;
  display: inline-block;
  position: relative;
  margin-right: 0.25em;
  font-size: 1.5rem;
  background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjEiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAyMSAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTAuMTAxIDQuNDE3UzguODk1LjIwNyA1LjExMS4yMDdjLTQuNDY1IDAtMTAuOTY3IDYuODQ2IDUuMDgyIDE3LjU5MkMyNS4yMzcgNy4wMyAxOS42NjUuMjAyIDE1LjUwMS4yMDJjLTQuMTYyIDAtNS40IDQuMjE1LTUuNCA0LjIxNXoiIGZpbGw9IiNGRjZFNkYiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvc3ZnPg==") no-repeat center;
  background-size: 100%;
  -webkit-animation: heartUnlike 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartUnlike 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}

.liked .like-icon {
  -webkit-animation: heartPulse 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartPulse 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}
.liked .like-icon [class^=heart-animation-] {
  background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjEiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAyMSAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTAuMTAxIDQuNDE3UzguODk1LjIwNyA1LjExMS4yMDdjLTQuNDY1IDAtMTAuOTY3IDYuODQ2IDUuMDgyIDE3LjU5MkMyNS4yMzcgNy4wMyAxOS42NjUuMjAyIDE1LjUwMS4yMDJjLTQuMTYyIDAtNS40IDQuMjE1LTUuNCA0LjIxNXoiIGZpbGw9IiNGRjZFNkYiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvc3ZnPg==") no-repeat center;
  background-size: 100%;
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 16px;
  height: 14px;
  opacity: 0;
}
.liked .like-icon [class^=heart-animation-]::before, .liked .like-icon [class^=heart-animation-]::after {
  content: "";
  background: inherit;
  background-size: 100%;
  width: inherit;
  height: inherit;
  display: inherit;
  position: relative;
  top: inherit;
  left: inherit;
  opacity: 0;
}
.liked .like-icon .heart-animation-1 {
  -webkit-animation: heartFloatMain-1 1s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatMain-1 1s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}
.liked .like-icon .heart-animation-1::before, .liked .like-icon .heart-animation-1::after {
  width: 12px;
  height: 10px;
  visibility: hidden;
}
.liked .like-icon .heart-animation-1::before {
  opacity: 0.6;
  -webkit-animation: heartFloatSub-1 1s 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatSub-1 1s 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}
.liked .like-icon .heart-animation-1::after {
  -webkit-animation: heartFloatSub-2 1s 0.15s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatSub-2 1s 0.15s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
  opacity: 0.75;
}
.liked .like-icon .heart-animation-2 {
  -webkit-animation: heartFloatMain-2 1s 0.1s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatMain-2 1s 0.1s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}
.liked .like-icon .heart-animation-2::before, .liked .like-icon .heart-animation-2::after {
  width: 10px;
  height: 8px;
  visibility: hidden;
}
.liked .like-icon .heart-animation-2::before {
  -webkit-animation: heartFloatSub-3 1s 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatSub-3 1s 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
  opacity: 0.25;
}
.liked .like-icon .heart-animation-2::after {
  -webkit-animation: heartFloatSub-4 1s 0.15s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatSub-4 1s 0.15s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
  opacity: 0.4;
}

@-webkit-keyframes heartPulse {
  0% {
    transform: scale(1);
  }
  50% {
    transform: scale(1.5);
  }
}

@keyframes heartPulse {
  0% {
    transform: scale(1);
  }
  50% {
    transform: scale(1.5);
  }
}
@-webkit-keyframes heartUnlike {
  50% {
    transform: scale(0.75);
  }
}
@keyframes heartUnlike {
  50% {
    transform: scale(0.75);
  }
}
@-webkit-keyframes heartFloatMain-1 {
  0% {
    opacity: 0;
    transform: translate(0) rotate(0);
  }
  50% {
    opacity: 1;
    transform: translate(0, -25px) rotate(-20deg);
  }
}
@keyframes heartFloatMain-1 {
  0% {
    opacity: 0;
    transform: translate(0) rotate(0);
  }
  50% {
    opacity: 1;
    transform: translate(0, -25px) rotate(-20deg);
  }
}
@-webkit-keyframes heartFloatMain-2 {
  0% {
    opacity: 0;
    transform: translate(0) rotate(0) scale(0);
  }
  50% {
    opacity: 0.9;
    transform: translate(-10px, -38px) rotate(25deg) scale(1);
  }
}
@keyframes heartFloatMain-2 {
  0% {
    opacity: 0;
    transform: translate(0) rotate(0) scale(0);
  }
  50% {
    opacity: 0.9;
    transform: translate(-10px, -38px) rotate(25deg) scale(1);
  }
}
@-webkit-keyframes heartFloatSub-1 {
  0% {
    visibility: hidden;
    transform: translate(0) rotate(0);
  }
  50% {
    visibility: visible;
    transform: translate(13px, -13px) rotate(30deg);
  }
}
@keyframes heartFloatSub-1 {
  0% {
    visibility: hidden;
    transform: translate(0) rotate(0);
  }
  50% {
    visibility: visible;
    transform: translate(13px, -13px) rotate(30deg);
  }
}
@-webkit-keyframes heartFloatSub-2 {
  0% {
    visibility: hidden;
    transform: translate(0) rotate(0);
  }
  50% {
    visibility: visible;
    transform: translate(18px, -10px) rotate(55deg);
  }
}
@keyframes heartFloatSub-2 {
  0% {
    visibility: hidden;
    transform: translate(0) rotate(0);
  }
  50% {
    visibility: visible;
    transform: translate(18px, -10px) rotate(55deg);
  }
}
@-webkit-keyframes heartFloatSub-3 {
  0% {
    visibility: hidden;
    transform: translate(0) rotate(0);
  }
  50% {
    visibility: visible;
    transform: translate(-10px, -10px) rotate(-40deg);
  }
  100% {
    transform: translate(-50px, 0);
  }
}
@keyframes heartFloatSub-3 {
  0% {
    visibility: hidden;
    transform: translate(0) rotate(0);
  }
  50% {
    visibility: visible;
    transform: translate(-10px, -10px) rotate(-40deg);
  }
  100% {
    transform: translate(-50px, 0);
  }
}
@-webkit-keyframes heartFloatSub-4 {
  0% {
    visibility: hidden;
    transform: translate(0) rotate(0);
  }
  50% {
    visibility: visible;
    transform: translate(2px, -18px) rotate(-25deg);
  }
}
@keyframes heartFloatSub-4 {
  0% {
    visibility: hidden;
    transform: translate(0) rotate(0);
  }
  50% {
    visibility: visible;
    transform: translate(2px, -18px) rotate(-25deg);
  }
}
</style>
	<style>
/* component */

.star-rating {
  border:solid 1px #ccc;
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-rating input {
  display:none;
}

.star-rating label {
  color:#ccc;
  cursor:pointer;
}

.star-rating :checked ~ label {
  color:#f90;
}

.star-rating label:hover,
.star-rating label:hover ~ label {
  color:#fc0;
}

/* explanation */

article {
  background-color:#ffe;
  box-shadow:0 0 1em 1px rgba(0,0,0,.25);
  color:#006;
  font-family:cursive;
  font-style:italic;
  margin:4em;
  max-width:30em;
  padding:2em;
}
</style>
<style>
.star-rating1 {
  border:solid 1px #ccc;
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-rating1 label {
  color:#ccc;
}

/* explanation */
</style>
<style>
	.imgDiv1C{
		float:left;
		font-size:30px;
		 margin-top: -20px;
		margin-left: -200px;
		
	}
	.imgBtn{
	 	height:30px;
	 	
	}
	.myButton1{
		margin-top:-20px;
		 margin-left: 20px;
	}
	.btn {
  flex: 1 1 auto;
  margin-top: -250px;
  padding: 10px 40px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
 /* text-shadow: 0px 0px 10px rgba(0,0,0,0.2);*/
  box-shadow: 0 0 20px #eee;
  border-radius: 10px;
 }

/* Demo Stuff End -> */

/* <- Magic Stuff Start */

.btn:hover {
  background-position: right center; /* change the direction of the change here */
}
.btn-2 {
  background-image: linear-gradient(to right, #fbc2eb 0%, #a6c1ee 51%, #fbc2eb 100%);
}
</style>
<style>
/* <- Demo Stuff Start */

.containerE {
  display: flex;
  justify-content: center;
  align-items: center;
  align-content: center;
  flex-wrap: wrap;
  width: 80vw;
  margin: 0 auto;
  min-height: 100vh;
}
.btnE {
  flex: 1 1 auto;
  margin-left: 20px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
 /* text-shadow: 0px 0px 10px rgba(0,0,0,0.2);*/
  box-shadow: 0 0 20px #eee;
  border-radius: 10px;
 }

/* Demo Stuff End -> */

/* <- Magic Stuff Start */

.btnE:hover {
  background-position: right center; /* change the direction of the change here */
}

.btn-1 
  {
  background-image: linear-gradient(to right, #a1c4fd 0%, #c2e9fb 51%, #a1c4fd 100%);
}


</style>
<script>
	function commentInsert(id,rbnum){
		frm.u_id.value=id;
		if(!id){
			alert("로그인후 이용이 가능합니다");
			return;
		}
		var comment=$('#comment').val();
		console.log(rbnum);
		frm.rb_num.value=rbnum;
		frm.c_comment.value=comment;
		
		var temp = $('input:radio[name="rating"]:checked').val();
		frm.star.value=temp;
		console.log(temp);
		console.log(comment);
		if(!temp){
			alert("별점을 체크해주세요!");
			return;
		}if(!comment){
			alert("댓글을 입력해주세요!");
			return;
		}else{	
		alert("100 마일리지가 지급되었습니다!");
		frm.submit();
		}
	}
	</script>
	<script>
		function delRv(rbnum){
			delFrm.rb_num.value=rbnum;
			var check = confirm("정말 삭제 하시겠습니까?!");
			if(check ==true){
			delFrm.submit();
			}else{
				alert("취소되었습니다.");
			}
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
		 function dis1(rbnum){
			 console.log(rbnum);
			 imgDiv1.rb_num.value=rbnum;
			var fileCheck = document.getElementById("rb_image1").value;
			if(!fileCheck){
				alert("파일을 첨부해 주세요!");
			}else{
				imgDiv1.submit();
			}
			 
		 }
		 function dis2(rbnum){
			 console.log(rbnum);
			 imgDiv2.rb_num.value=rbnum;
			 var fileCheck = document.getElementById("rb_image2").value;
				if(!fileCheck){
					alert("파일을 첨부해 주세요!");
				}else{
					imgDiv2.submit();
				}
			 
		 }
		 function dis3(rbnum){
			 console.log(rbnum);
			 imgDiv3.rb_num.value=rbnum;
			 var fileCheck = document.getElementById("rb_image3").value;
				if(!fileCheck){
					alert("파일을 첨부해 주세요!");
				}else{
					imgDiv3.submit();
				}
			 
		 }
		 function dis4(rbnum){
			 console.log(rbnum);
			 imgDiv4.rb_num.value=rbnum;
			 var fileCheck = document.getElementById("rb_image4").value;
				if(!fileCheck){
					alert("파일을 첨부해 주세요!");
				}else{
					imgDiv4.submit();
				}
		 }
	
	</script>
	<script>
		function likeBtn(rbnum){
			reviewLikeUp.rb_num.value=rbnum;
		}
	</script>
</head>
<body style="width: 1000px;
    margin: auto;">
	<!-- Page Preloder -->	
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section -->
	<header class="header">
		<div class="container-fluid">
		<nav class="main__menu" style="margin-bottom:70px;">
			<ul class="nav__menu" id="udTitle">
					<li class="liClass1"><i class="fa fa-instagram"></i>&nbsp&nbsp<a href="#" class="menu--active">${Click.rb_title}</a></li>		
			</ul>
			<ul class="nav__menu" id="udTitle1" style="display:none;">
					<li class="liClass1"><i class="fa fa-instagram"></i>&nbsp&nbsp<input type="text" id="title" value="${Click.rb_title}"></li>
			</ul>
		</nav>
			<nav class="main__menu">
			
				
				<div class="text-item">
				<h4 class="headerA"align="right">Writer : ${Click.u_id }</h4>
			
				<div class="imgDiv1CE" style="float:left;"><button type="button" class="btn btn-2" onclick="imageOpen('${Click.u_id}','${id }');" style="font-size:30px;">이미지 파일 등록!</button></div>
				<div id="imgOpen" class="imgDiv1C" style="display:none;">
						<div class="imgDiv1">
							<c:if test="${Click.rb_image1 ne null }">
								<p  align="left"style="font-size:30px;">IMAGE 1 등록 되어 있음!<button class="myButton1"  type="button" onclick="imgDel1('${Click.rb_num}');">삭제</button></p>
							</c:if>
							<c:if test="${Click.rb_image1 eq null }">
							<form id="imgDiv1" name="imgDiv1" action="imgDiv1.do" method="post"  enctype="multipart/form-data" accept-charset="UTF-8">
								<span>&nbsp;IMAGE 1</span>
								<span style="float:left;"><input style ="width:100%;" type="file" id="rb_image1" name="rb_image1" class="form-control"placeholder="SFile"></span>
								<span style="float:left;margin-top:-10px;"><button class="myButton1" id="click" type="button" onclick="dis1('${Click.rb_num}');">등록</button></span>
								<input type="hidden" id="rb_num" name="rb_num" value="${Click.rb_num }">
								<span  style="clear:both; margin-left:10px;"></span>
							</form>
							</c:if>
						</div>
						<div class="imgDiv1">
							<c:if test="${Click.rb_image2 ne null }">
								<p align="left" style="font-size:30px;">IMAGE 2 등록 되어 있음!<button class="myButton1"  type="button" onc	lick="imgDel2('${Click.rb_num}');">삭제</button></p>
							</c:if>
							<c:if test="${Click.rb_image2 eq null }">
								<form id="imgDiv2" name="imgDiv2" action="imgDiv2.do" method="post"  enctype="multipart/form-data"accept-charset="UTF-8">
									<span style=" float:left;"><input style ="width:100%;" type="file"id="rb_image2" name="rb_image2" class="form-control"placeholder="SFile"></span>
									<span style="float:left;margin-top:-10px;"><button class="myButton1" id="click" type="button" onclick="dis2('${Click.rb_num}');">등록</button></span>
									<span  style="clear:both"></span>
									<input type="hidden" id="rb_num" name="rb_num" value="${Click.rb_num }">
									<span>&nbsp;IMAGE 2</span>
								</form>
							</c:if>
						</div>
						<div class="imgDiv1">
							<c:if test="${Click.rb_image3 ne null }">
								<p align="left" style="font-size:30px;">IMAGE 3 등록 되어 있음!<button class="myButton1"  type="button" onclick="imgDel3('${Click.rb_num}');">삭제</button></p>
							</c:if>
							<c:if test="${Click.rb_image3 eq null }">
								<form id="imgDiv3" name="imgDiv3" action="imgDiv3.do" method="post"  enctype="multipart/form-data"accept-charset="UTF-8">
									<span style="float:left;"><input style ="width:100%;" type="file" id="rb_image3" name="rb_image3" class="form-control"placeholder="SFile"></span>
									<span style="float:left;margin-top:-10px;"><button class="myButton1" id="click" type="button" onclick="dis3('${Click.rb_num}');">등록</button></span>
									<span  style="clear:both"></span>
									<input type="hidden" id="rb_num" name="rb_num" value="${Click.rb_num }">
									<span>&nbsp;IMAGE 3</span>
								</form>
							</c:if>
						</div>
						<div class="imgDiv1">
							<c:if test="${Click.rb_image4 ne null }">
								<p  align="left"style="font-size:30px;">IMAGE 4 등록 되어 있음!<button class="myButton1"  type="button" onclick="imgDel4('${Click.rb_num}');">삭제</button></p>
							</c:if>
							<c:if test="${Click.rb_image4 eq null }">
									<form id="imgDiv4" name="imgDiv4" action="imgDiv4.do" method="post"  enctype="multipart/form-data"accept-charset="UTF-8">
										<span style="float:left;"><input style ="width:100%;" type="file" id="rb_image4" name="rb_image4" class="form-control"placeholder="SFile"></span>
										<span style="float:left;margin-top:-10px;"><button class="myButton1" id="click" type="button" onclick="dis4('${Click.rb_num}');">등록</button></span>
										<span  style="clear:both"></span>
										<input type="hidden" id="rb_num" name="rb_num" value="${Click.rb_num }">
										<span>&nbsp;IMAGE 4</span>
									</form>
							</c:if>
						</div>
				</div>
				<c:if test="${Click.u_id eq id }">
				<div style="float:right">
				<button  class="myButton2"  type="button" onclick="delRv('${Click.rb_num}');" >삭제</button>
				<button class="myButton2" id="ClickT" type="button" onclick="UpdateRvE();">제목 수정</button>
				<button class="myButton2" id="UpdateT" type="button"  style="display:none;" onclick="UpdateRv('${Click.rb_num}');">제목 수정완료!</button>
	
				<button class="myButton2" id="ClickC" type="button" onclick="UpdateRvC();">내용 수정</button>
				<button class="myButton2" id="UpdateC" type="button"  style="display:none;" onclick="UpdateRv('${Click.rb_num}');">내용 수정완료!</button>
				<br><br><button id="reset1" style="float:right; display:none;"class="myButton2" type="button" onclick="reset();" >수정 취소</button>
				</div>
				</c:if>
				<br><br><br>
				<div style="clear:both;"></div>
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
				
				<a style="clear:both;" class="fresco" href="#"  data-fresco-group="projects">
					<img src="resources/reviewUpload/${Click.rb_image}">		
				</a>
			</div>
			<c:choose>
			<c:when test="${Click.rb_image1 eq null }">
				<div class="slide-item">
					<a class="fresco" href="#"  data-fresco-group="projects">
						<img src="resources/bin/BIN1.PNG" alt="">
						</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="slide-item">
					<a class="fresco" href="#"  data-fresco-group="projects">
						<img src="resources/reviewUpload/${Click.rb_image1}" alt="">
						</a>
				</div>
			</c:otherwise>
			</c:choose>
			
			<c:choose>
			<c:when test="${Click.rb_image2 eq null }">
				<div class="slide-item">
					<a class="fresco" href="#"  data-fresco-group="projects">
						<img src="resources/bin/BIN2.PNG" alt="">
						</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="slide-item">
					<a class="fresco" href="#"  data-fresco-group="projects">
						<img src="resources/reviewUpload/${Click.rb_image2}" alt="">
						</a>
				</div>
			</c:otherwise>
			</c:choose>
				
				
			<c:choose>
			<c:when test="${Click.rb_image3 eq null }">
				<div class="slide-item">
					<a class="fresco" href="#"  data-fresco-group="projects">
						<img src="resources/bin/BIN3.PNG" alt="">
						</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="slide-item">
					<a class="fresco" href="#"  data-fresco-group="projects">
						<img src="resources/reviewUpload/${Click.rb_image3}" alt="">
						</a>
				</div>
			</c:otherwise>
			</c:choose>
			
			
			<c:choose>
			<c:when test="${Click.rb_image4 eq null }">
				<div class="slide-item">
					<a class="fresco" href="#"  data-fresco-group="projects">
						<img src="resources/bin/BIN4.PNG" alt="">
						</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="slide-item">
					<a class="fresco" href="#"  data-fresco-group="projects">
						<img src="resources/reviewUpload/${Click.rb_image4}" alt="">
						</a>
				</div>
			</c:otherwise>
			</c:choose>
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
			<div class="text-item">
			</div>
		</div>
	</section>
	<!-- Hero Section end -->

	<!-- Content  -->
			<blockquote style="margin:auto;">
				<h4 class="h4b">'' Content ''</h4>
				<br><br>
						<textarea id="Udc"cols="100" rows="7" style="display:none;">${Click.rb_content }</textarea>
						<h6 id="UdcE"class="h4c" align="center" style="color:cadetblue;">${Click.rb_content }</h6>
			</blockquote>
	<!-- Comment Head Section -->
	<section  style="width:80%; margin:auto;">
		
		<div><p class="pC" style="float:left;" >LIKE :</p>
					
					    <a class='like-button' style="float:left; margin-left:20px;   margin-top: 10px;" onclick="likeBtn('${Click.rb_num}');">
					      <span class='like-icon'>
					        <div class='heart-animation-1'></div>
					        <div class='heart-animation-2'></div>
					      </span>
					       ${Click.rb_like }
					    </a>
		</div>
		<br>
		<div style="clear:both;"><p style="font-size:20px;">Comments .. ( ${count } )</p></div>
		<!-- Comment  -->
		
	<form  accept-charset="UTF-8" action="commentInsert.do" id="frm" method="post">
	<span class="star-rating">
		  <input type="radio" id="5-stars" name="rating" value="5" />
		  <label for="5-stars" class="star">&#9733;</label>
		  <input type="radio" id="4-stars" name="rating" value="4" />
		  <label for="4-stars" class="star">&#9733;</label>
		  <input type="radio" id="3-stars" name="rating" value="3" />
		  <label for="3-stars" class="star">&#9733;</label>
		  <input type="radio" id="2-stars" name="rating" value="2" />
		  <label for="2-stars" class="star">&#9733;</label>
		  <input type="radio" id="1-star" name="rating" value="1" />
		  <label for="1-star" class="star">&#9733;</label>
	</span>
	<div class="inCommentS" style="width:600px; margin:auto; height:70px; background-color:#EFEAEA;margin-top: -50px;margin-left: 140px; ">
	 <input type="hidden" id="c_comment" name="c_comment">
	 <input type="hidden" id="u_id" name="u_id">
	 <input type="hidden" id="rb_num" name="rb_num">
	 <input type="hidden" id="star" name="star">
	
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
			<c:if test="${comment.star == 1 }">
			<div class="star-rating1" style="border:none;">
			<c:if test="${comment.u_id eq Click.u_id }">
			 <a class="btnE btn-1" style="font-size: 20px;margin-right: -100px; font-family: 'Cute Font', cursive;font-weight:bold;height: 30px;margin-top: 7px;"> 작성자 </a>
			</c:if>	 
				  <label  class="star1">&#9733;</label>
				  <label  class="star1">&#9733;</label>
				  <label class="star1">&#9733;</label>
				  <label class="star1">&#9733;</label>
				  <label class="star1" style="color:#f90;">&#9733;</label>
			</div>
				<c:if test="${comment.u_id eq id }">	
					<button style="float:right;    margin-top: -35px;margin-left: 230px;"
					class="myButton1"  type="button" onclick="delComment1('${id}','${comment.c_num }',${Click.rb_num });">삭제</button>	
				</c:if>
			</c:if>
			
			
			<c:if test="${comment.star == 2 }">
			<div class="star-rating1" style="border:none;">
			<c:if test="${comment.u_id eq Click.u_id }">
			<a class="btnE btn-1" style="font-size: 20px;margin-right: -100px; font-family: 'Cute Font', cursive;font-weight:bold;height: 30px;margin-top: 7px;"> 작성자 </a>
			</c:if>
				  <label class="star1">&#9733;</label>
				  <label class="star1">&#9733;</label>
				  <label class="star1">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
			</div>		
				<c:if test="${comment.u_id eq id }">	
					<button style="float:right;    margin-top: -35px;margin-left: 230px;"
					class="myButton1"  type="button" onclick="delComment1('${id}','${comment.c_num }',${Click.rb_num });">삭제</button>	
				</c:if>
			</c:if>
			
			
			<c:if test="${comment.star == 3 }">
			<div class="star-rating1" style="border:none;">
			<c:if test="${comment.u_id eq Click.u_id }">
			<a class="btnE btn-1" style="font-size: 20px;margin-right: -100px; font-family: 'Cute Font', cursive;font-weight:bold;height: 30px;margin-top: 7px;"> 작성자 </a>
			</c:if>
				  <label class="star1">&#9733;</label>
				  <label class="star1">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
			</div>		
				<c:if test="${comment.u_id eq id }">	
					<button style="float:right;    margin-top: -35px;margin-left: 230px;"
					class="myButton1"  type="button" onclick="delComment1('${id}','${comment.c_num }',${Click.rb_num });">삭제</button>	
				</c:if>
			</c:if>
			
			
			<c:if test="${comment.star == 4 }">
			<div class="star-rating1" style="border:none;">
			<c:if test="${comment.u_id eq Click.u_id }">
			<a class="btnE btn-1" style="font-size: 20px;margin-right: -100px; font-family: 'Cute Font', cursive;font-weight:bold;height: 30px;margin-top: 7px;"> 작성자 </a>
			</c:if>
				  <label class="star1">&#9733;</label>
				  <label class="star1" style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
			</div>		
				<c:if test="${comment.u_id eq id }">	
					<button style="float:right;    margin-top: -35px;margin-left: 230px;"
					class="myButton1"  type="button" onclick="delComment1('${id}','${comment.c_num }',${Click.rb_num });">삭제</button>	
				</c:if>
			</c:if>
			
			
			<c:if test="${comment.star == 5 }">
			<div class="star-rating1" style="border:none;">
			<c:if test="${comment.u_id eq Click.u_id }">
			<a class="btnE btn-1" style="font-size: 20px;margin-right: -100px; font-family: 'Cute Font', cursive;font-weight:bold;height: 30px;margin-top: 7px;"> 작성자 </a>
			</c:if>
				  <label class="star1"style="color:#f90;">&#9733;</label>
				  <label class="star1" style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
				  <label class="star1"style="color:#f90;">&#9733;</label>
			</div>		
				<c:if test="${comment.u_id eq id }">	
					<button style="float:right;    margin-top: -35px;margin-left: 230px;"
					class="myButton1"  type="button" onclick="delComment1('${id}','${comment.c_num }',${Click.rb_num });">삭제</button>	
				</c:if>
			</c:if>
			
			
			<div class="btnClass1">		
				<div class="spanComment" style="height: 50px;margin-top: 10px;margin-bottom: 10px;">
				${comment.c_comment }</div>
			</div>
				<div><h4 class="h4Id" style="float:left;">${comment.u_id }&nbsp;&nbsp;</h4></div>
					<p style="font-size:15px; ">${comment.c_date }</p>
			
				
				
				<div class="btnClass1">		
					
				<!--
				<form name="commentReForm" method="post">			
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
				-->
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
	<script>
	 function delComment1(a,b,c){
			console.log(a,b);
			delComment.u_id.value=a;
			delComment.c_num.value=b;
			delComment.rb_num.value=c;
			var check = confirm("정말 삭제 하시겠습니까?!");
			if(check ==true){
				delComment.submit();
			}else{
				alert("취소되었습니다.");
			}
		}
	 /*
	 function reComment(cnum,id,rbnum){
		 console.log(cnum,id);
		 updateReComment.u_id.value=id;
		 updateReComment.c_num.value=cnum;
		 updateReComment.rb_num.value=rbnum;
		 var a=document.getElementById("reCommentText").value;
		 console.log(a);
		 updateReComment.re_comment.value=a;
		 updateReComment.submit();
	 }*/
	</script>


	<!-- hidden//  눌렀을때 나오는  script -->
	 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	 <script>
	 function dis(){
if($("#dis").css("display") == "none"){
    $("#dis").show();
} else {
    $("#dis").hide();
}
}
	function imageOpen(one,two){	
		if(one ==two){
			if($("#imgOpen").css("display") == "none"){
			    $("#imgOpen").show();
			} else {
			    $("#imgOpen").hide();
			}
		}else{
			alert("작성자만 수정이 가능합니다");
		}
		
		}
</script>
	<script>
	 function UpdateRvE(){
		 if($("#udTitle").css("display") == "block"){
		     $("#udTitle").hide();
		     $("#udTitle1").show();
		     $("#ClickT").hide();
		     $("#UpdateT").show();
		     $("#reset1").show();
		 } else {
		     $("#udTitle").show();
		     $("#udTitle1").hide();
		     $("#ClickT").show();
		     $("#UpdateT").hide();
		 }
	 }
		 
	 function UpdateRvC(){
		 if($("#UdcE").css("display") == "block"){
		     $("#UdcE").hide();
		     $("#Udc").show();
		     $("#ClickC").hide();
		     $("#UpdateC").show();
		     
		     $("#reset1").show();
		 } else {
		     $("#UdcE").show();
		     $("#Udc").hide();
		     $("#ClickC").show();
		     $("#UpdateC").hide();
		 }
		 }
	 
		function reset(){
			 if($("#ClickC").css("display") == "none" || $("#udTitle").css("display") == "none"){
				 $("#reset1").hide();
				 
				 $("#udTitle").show();
				 $("#UdcE").show();
				 $("#udTitle1").hide();
				 $("#Udc").hide();	
				 
				 $("#UpdateT").hide();
				 $("#UpdateC").hide();
				 $("#ClickC").show();
				 $("#ClickT").show();
			 }
		}
		function imgDel1(rbnum){
			imageDel1.rb_num.value=rbnum;
			var check = confirm("정말 삭제 하시겠습니까?!");
			if(check ==true){
				imageDel1.submit();
			}else{
				alert("취소되었습니다.");
			}
		}
		function imgDel2(rbnum){
			imageDel2.rb_num.value=rbnum;
			var check = confirm("정말 삭제 하시겠습니까?!");
			if(check ==true){
				imageDel2.submit();
			}else{
				alert("취소되었습니다.");
			}
		}
		function imgDel3(rbnum){
			imageDel3.rb_num.value=rbnum;
			var check = confirm("정말 삭제 하시겠습니까?!");
			if(check ==true){
				imageDel3.submit();
			}else{
				alert("취소되었습니다.");
			}
		}
		function imgDel4(rbnum){
			imageDel4.rb_num.value=rbnum;
			var check = confirm("정말 삭제 하시겠습니까?!");
			if(check ==true){
				imageDel4.submit();
			}else{
				alert("취소되었습니다.");
			}
		}
		
	</script>
	
	<script>
		
	</script>
	<footer class="footer__section">


	</footer>
	
		
	
	<!-- hidden form -->
		<form id="delFrm" name="delFrm" action="deleteReview.do" method="post">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		<form id="UdFrm" name="UdFrm" action="updateReview.do" method="post" accept-charset="UTF-8">
			<input type="hidden" id="rb_title" name="rb_title">
			<input type="hidden" id="rb_content" name="rb_content">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		
		<form id="imageDel1" name="imageDel1" action="imageDel1.do" method="post">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		<form id="imageDel2" name="imageDel2" action="imageDel2.do" method="post">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		<form id="imageDel3" name="imageDel3" action="imageDel3.do" method="post">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		<form id="imageDel4" name="imageDel4" action="imageDel4.do" method="post">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		<form id="reviewLikeUp" name="reviewLikeUp" action="reviewLikeUp.do" method="post">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		<form id="delComment" name="delComment" action="delComment.do" method="post">
			<input type="hidden" id="u_id" name="u_id">
			<input type="hidden" id="c_num" name="c_num">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>
		<!-- 
		<form id="updateReComment" name="updateReComment" action="updateReComment.do" method="post"  accept-charset="UTF-8">
			<input type="hidden" id="u_id" name="u_id">
			<input type="hidden" id="c_num" name="c_num">
			<input type="hidden" id="re_comment" name="re_comment">
			<input type="hidden" id="rb_num" name="rb_num">
		</form>  -->
 		
	
	<!--====== Javascripts & Jquery ======-->
	<script src="resources/reviewbootstrap/js/vendor/jquery-3.2.1.min.js"></script>
	<script src="resources/reviewbootstrap/js/jquery.slicknav.min.js"></script>
	<script src="resources/reviewbootstrap/js/slick.min.js"></script>
	<script src="resources/reviewbootstrap/js/main.js"></script>
<script>

$('a.like-button').on('click', function(e) {
		
	  $(this).toggleClass('liked');
	  $(e.target).removeClass('liked')
	  setTimeout(() => {
		  reviewLikeUp.submit();
	  }, 900)
	});
</script>
	</body>
</html>
    
    