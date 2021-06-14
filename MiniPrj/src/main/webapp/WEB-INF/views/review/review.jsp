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
		float:right;
	}
	</style>
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
           
			 
			
                <div class="col-12 col-md-6 col-lg-4 dk-isotope-grid-item mockups">
					<a href="reviewDetail.do" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-light">
					    <span class="dk-portfolio-item-image">
					   
					        <span class="dk-portfolio-item-image-size" data-portfolio-size="90%"></span>
					        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .35)"></span>
					        <img src="resources/bootstrap/mimilism/assets/images/portfolio-2-md.png" alt="">
					    </span>
					    
					   	<span class="dk-portfolio-item-info">
						        <span class="h3 dk-portfolio-item-title">USER1</span>
						        <span class="dk-portfolio-item-category">
					            	<span>very good bread!</span>
					        	</span>
					    </span>
					    
					</a>
					
				</div>
              
         
			
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
                 
					<a href="reviewDetail.do" class="dk-portfolio-item dk-portfolio-item-style-2 dk-portfolio-item-light">
					    <span class="dk-portfolio-item-image">
					        <span class="dk-portfolio-item-image-size" data-portfolio-size="90%"></span>
					        <span class="dk-portfolio-item-overlay" style="background-color: rgba(255, 255, 255, .35)"></span>
					        <img src="${pageContext.request.contextPath }/resources/css/mimilism/assets/images/portfolio-2-md.png" alt="">
					    </span>
					    
					   	<span class="dk-portfolio-item-info">
						        <span class="h3 dk-portfolio-item-title">${list.rb_title }</span>
						        <span class="dk-portfolio-item-category">
					            	<span>${list.u_id }</span>
					        	</span>
					    </span>
					</a>
					   
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

  </div>