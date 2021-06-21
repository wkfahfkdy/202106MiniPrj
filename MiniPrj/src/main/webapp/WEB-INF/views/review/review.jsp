<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	    
<!DOCTYPE html>
<head>
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Single+Day&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Mate+SC&family=Nanum+Pen+Script&display=swap" rel="stylesheet">

<style>
.butt1 {
font-family: 'Single Day', cursive;
    border: none;
  flex: 1 1 auto;
  margin: 10px;
  padding: 5px 30px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
 /* text-shadow: 0px 0px 10px rgba(0,0,0,0.2);*/
  box-shadow: 0 0 20px #eee;
  border-radius: 10px;
  font-size: 30px;
 }

/* Demo Stuff End -> */

/* <- Magic Stuff Start */

.butt1:hover {
  background-position: right center; /* change the direction of the change here */
}

.butt1 {
margin-left: 120px;
margin-bottom: 20px;
  background-image: linear-gradient(to right, #f6d365 0%, #fda085 51%, #f6d365 100%);
}


	.row.vertical-gap {
    margin-top: -0px;
}
	.dk-box-2-r{
		margin-left:-100px;
	}
	.dk-btn-r{
		margin-right:100px;
		float:right;
	}
	
	.btn5 {
  flex: 1 1 auto;
  margin: 10px;
  padding: 30px;
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

.btn5:hover {
  background-position: right center; /* change the direction of the change here */
}

.btn-5 {
  background-image: linear-gradient(to right, #ffecd2 0%, #fcb69f 1%, #ffecd2 100%);
  padding: 0 50px;
  font-size: 35px;
  border: none;
}
	
	</style>
	<style>
	.like-button {
  border: 2px solid #ff6e6f;
  border-radius: 40px;
  padding: 0.45rem 0.75rem;
  color: #ff6e6f;
  font-weight: bold;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
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

.like-icon {
  -webkit-animation: heartPulse 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartPulse 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}
.like-icon [class^=heart-animation-] {
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
 .like-icon [class^=heart-animation-]::before, .like-icon [class^=heart-animation-]::after {
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
 .like-icon .heart-animation-1 {
  -webkit-animation: heartFloatMain-1 1s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatMain-1 1s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}
 .like-icon .heart-animation-1::before, .like-icon .heart-animation-1::after {
  width: 12px;
  height: 10px;
  visibility: hidden;
}
 .like-icon .heart-animation-1::before {
  opacity: 0.6;
  -webkit-animation: heartFloatSub-1 1s 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatSub-1 1s 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}
 .like-icon .heart-animation-1::after {
  -webkit-animation: heartFloatSub-2 1s 0.15s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatSub-2 1s 0.15s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
  opacity: 0.75;
}
.like-icon .heart-animation-2 {
  -webkit-animation: heartFloatMain-2 1s 0.1s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatMain-2 1s 0.1s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
}
 .like-icon .heart-animation-2::before,  .like-icon .heart-animation-2::after {
  width: 10px;
  height: 8px;
  visibility: hidden;
}
 .like-icon .heart-animation-2::before {
  -webkit-animation: heartFloatSub-3 1s 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
          animation: heartFloatSub-3 1s 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) both;
  opacity: 0.25;
}
 .like-icon .heart-animation-2::after {
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
	  <script>
	function likeBtn(rblike,id,rbnum){
		console.log(rbnum);
		console.log(id);
		if(!id){
			alert("로그인후 이용이 가능합니다!");
		}else{
		frm.rb_like.value=rblike;
		frm.rb_num.value=rbnum;
		frm.submit();
		}
	}
	/*
	 function showPopup(num) {
			 window.open("reviewClick.do?rb_num="+num, "리뷰클릭페이지", "width=900, height=1200, left=300, top=100"); 

		 }
	*/
	 function showPopup(num) {
		var myForm = document.popForm;
		var url="reviewClick.do";
		 window.open("", "popForm", "width=1000, height=1200, left=300, top=100"); 
		myForm.action=url;
		myForm.method="post";
		myForm.target="popForm";
		myForm.rb_num.value=num;
		myForm.submit();
	 }
	 
	</script>
	
	
</head>
 <div class="main">
 <div><img src="resources/bin/CC.PNG" style=" width:100%;height:300px;"></div> 
<div>
	
<div align="center" >
	<br><br>
		<c:if test="${id ne null}">
		<button type="button" style="float:right;font-family: 'Nanum Pen Script', cursive;" onclick="location.href='revBoardEnrollment.do'" class="btn5 btn-5">리뷰 등록</button>
		</c:if>
	<br><br>
</div>
</div>

<div class="endDiv">
	 
<div>
 <div class="dk-box-2 dk-padding-bot">
        <div class="container" style="margin-left: 400px; margin-bottom:100px;">
        <h1 align="center" style="font-family: 'Single Day'; font-size:140px; margin-left:-50px; margin-bottom: 200px;color:lightsalmon;">BEST Review ! ! </h1>
            <div class="row vertical-gap dk-isotope-grid dk-box-2-r">
           <div  style="margin-top:-200px;margin-left:20px;"><img src="resources/bin/q.png" style="margin-top: 80px; margin-left: 50px;width: 300px;"></div>
			<div  style="margin-top:-200px;margin-left:20px;width: 300px;"><img src="resources/bin/w.PNG" style="margin-left: 120px;margin-top: 90px;width:300px;"></div>
			<div  style="margin-top:-200px;margin-left:20px;width: 300px;"><img src="resources/bin/f.PNG" style="margin-left: 250px; margin-top: 120px; width: 250px;"></div> 
			<c:forEach items="${top }" var="top">
				<c:set var="i" value="${i+1 }"/>
                <div class="col-12 col-md-6 col-lg-4 dk-isotope-grid-item mockups">
                	<button class="butt1" style="visibility:hidden;"> BEST ${i }</button>
					<div class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-light">
					    <span class="dk-portfolio-item-image" >
					   
					        <span class="dk-portfolio-item-image-size" data-portfolio-size="90%"></span>
					        <a href="#" onclick="showPopup('${top.rb_num}');"class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .35)"></a>
					        <img src="resources/reviewUpload/${top.rb_image }" alt="">
					    </span>
					    
					   	<span class="dk-portfolio-item-info">
						       <span style="font-family: 'Single Day', cursive; font-size:28px;"class="h3 dk-portfolio-item-title">${top.rb_title }</span>
						        <span class="dk-portfolio-item-category">
					            	<span style="font-family: 'Mate SC', serif;float:left; font-size:25px;">${top.u_id }</span>
					            	<a class='like-button' style=" float:left;margin-left:20px;">
							      <span class='like-icon'>
							        <div class='heart-animation-1'></div>
							        <div class='heart-animation-2'></div>
							      </span>
					     		  ${top.rb_like }
						   		 </a>
					        	</span>
					    </span>
					    
					</div>
					
				</div>
              
         
				</c:forEach>
				
            </div>

        </div>
    </div>
				

</div>
        
        
    <div class="dk-box-2 dk-padding-bot " style="background-image:url(resources/bin/e.jpg);">
        <div class="container">
        <br><br>
        <h4 align="center" style="font-family: 'Single Day', cursive; font-size:58px; margin-top:30px;"> &nbsp; Review!!</h4>
            <div class="row vertical-gap dk-isotope-grid">
			
			<c:forEach items="${list }" var="list">
                <div class="col-12 col-md-6 col-lg-4 dk-isotope-grid-item mockups">
                 
					<div class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-light">
					    <span class="dk-portfolio-item-image">
					        <span class="dk-portfolio-item-image-size" data-portfolio-size="90%"></span>
					        <a href="#" onclick="showPopup('${list.rb_num}');"class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .35)"></a>
					        <img src="resources/reviewUpload/${list.rb_image }" alt="">
					    </span>
					    
					    
					   	<span class="dk-portfolio-item-info">
						        <span style="font-family: 'Single Day', cursive; font-size:28px;"class="h3 dk-portfolio-item-title">${list.rb_title }</span>
						        <span class="dk-portfolio-item-category">
					            	<span style="font-family: 'Mate SC', serif;float:left; font-size:25px;">${list.u_id }</span>
					        	<a class='like-button' style=" float:left;margin-left:20px;">
							      <span class='like-icon'>
							        <div class='heart-animation-1'></div>
							        <div class='heart-animation-2'></div>
							      </span>
					       ${list.rb_like }
						    </a>
					        	</span>
					    </span>
					
					   </div>
				</div>
              
               </c:forEach>
              	
				
				
            </div>
 				
            <div class="text-center">
                <a href="#" class="dk-btn dk-btn-md dk-btn-load dk-btn-work mt-50">Load More</a>              
                 <table border="1">
                 </table>                
     	   </div>
    
    </div>
    </div>

	<form id="frm" name="frm" action="reviewLike.do" method="post">
		<input type="hidden" id="rb_like" name="rb_like">
		<input type="hidden" id="rb_num" name="rb_num">
	</form>
	<form id="popForm" name="popForm">
		<input type="hidden" id="rb_num" name="rb_num">
	</form>
  </div>
</div>