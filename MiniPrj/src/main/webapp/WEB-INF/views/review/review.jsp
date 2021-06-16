<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	    
<!DOCTYPE html>
<head>
	<style>
		.hr1{
			border-top: 3px solid rgba(0,0,0,.1);
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
	
	 function showPopup(num) {
		 console.log(num);
		 
		 window.open("reviewClick.do?rb_num="+num, "리뷰클릭페이지", "width=900, height=1200, left=300, top=100"); 
		 }
	</script>
	
	
</head>
        
<div style="margin-top: 150px">

<div align="center">
	<h1>Review</h1>
	<br><br>
		<c:if test="${id ne null}">
		<a href="revBoardEnrollment.do" class="dk-btn dk-btn-r">리뷰 등록</a>
		</c:if>
	<br><br>
</div>
</div>
<div class="endDiv">
	 
<div>

              
 <div class="dk-box-2 dk-padding-bot">
  <hr class="hr1">
        <div class="container">
        <h4 align="center"> &nbsp; Best Review</h4> 
            <div class="row vertical-gap dk-isotope-grid dk-box-2-r">
           
			 
			<c:forEach items="${top }" var="top">
				<c:set var="i" value="${i+1 }"/>
                <div class="col-12 col-md-6 col-lg-4 dk-isotope-grid-item mockups">
                	<h2>TOP ${i }</h2>
					<div class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-light">
					    <span class="dk-portfolio-item-image">
					   
					        <span class="dk-portfolio-item-image-size" data-portfolio-size="90%"></span>
					        <a href="#" onclick="showPopup('${top.rb_num}');"class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .35)"></a>
					        <img src="resources/reviewUpload/${top.rb_image }" alt="">
					    </span>
					    
					   	<span class="dk-portfolio-item-info">
						        <span class="h3 dk-portfolio-item-title">${top.rb_title }</span>
						        <span class="dk-portfolio-item-category">
					            	<span>${top.u_id }</span>
					        	</span>
					    </span>
					    
					</div>
					
				</div>
              
         
				</c:forEach>
            </div>

        </div>
        <hr class="hr1">
    </div>
				

</div>
        
        
    <div class="dk-box-2 dk-padding-bot ">
        <div class="container">
        <h4 align="center"> &nbsp; Review!!</h4>
            <div class="row vertical-gap dk-isotope-grid">
			
			<c:forEach items="${list }" var="list">
                <div class="col-12 col-md-6 col-lg-4 dk-isotope-grid-item mockups">
                 
					<div class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-light">
					    <span class="dk-portfolio-item-image">
					        <span class="dk-portfolio-item-image-size" data-portfolio-size="90%"></span>
					        <a href="#" onclick="showPopup();"class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .35)"></a>
					        <img src="resources/reviewUpload/${list.rb_image }" alt="">
					    </span>
					    
					    
					   	<span class="dk-portfolio-item-info">
						        <span class="h3 dk-portfolio-item-title">${list.rb_title }</span>
						        <span class="dk-portfolio-item-category">
					            	<span>${list.u_id }</span><span><button type="button" onclick="likeBtn('${list.rb_like}','${id}','${list.rb_num }');">좋아요&nbsp&nbsp&nbsp ${list.rb_like }</button></span>
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
	<form id="frm2" name="frm2" action="#" method="post">
		<input type="hidden" id="rb_num" name="rb_num">
	</form>
  </div>
