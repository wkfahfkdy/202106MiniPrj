<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<nav class="dk-navbar dk-navbar-fixed dk-navbar-transparent dk-navbar-white dk-navbar-lg-fullscreen">
<!-- 화면작아졌을때 서브메뉴 -->

    <div class="container">
        <div class="dk-nav-content">
            
            <a href="home.do" class="dk-nav-logo">BbangMan</a>
            
            
            
            <ul class="dk-nav dk-nav-align-right">
                
        <li class="dk-drop-item">
            <a href="home.do">
                Home
            </a>
        </li>
        <li>
            <a href="bread.do">
                Bbang
            </a>
        </li>
        <li>
            <a href="review2.do">
                Review
            </a>
        </li>
        <c:if test="${id eq null }">
        <li>
            <a href="memberLogin.do">
                Login
            </a>
        </li>    
        </c:if>
        <c:if test="${id ne null and id eq 'admin'}">
        <li>
        	<a href="memberInfo.do">
                MyPage
            </a>
        </li>   
        <li>
        	<a href="message.do">
                MS
            </a>
        </li>  
        <li>
        	<a href="memberLogOut.do">
                Logout
            </a>
        </li>    
        </c:if>
         <c:if test="${id ne null and id ne 'admin'}">
        <li>
        	<a href="memberMypage.do">
                MyPage
            </a>
        </li>   
        <li>
        	<a href="message.do">
                MS
            </a>
        </li>  
        <li>
        	<a href="memberLogOut.do">
                Logout
            </a>
        </li>    
        </c:if>
        
          </ul>
            
        </div>
    </div>
</nav>

<!-- 
<style>



.thin { font-weight: 300; }
.thick { font-weight: 900; }

.headA {
  text-transform: uppercase;
  font-size: 36px;
  color: cornsilk;
  text-decoration: none;
  position: relative;
  display: block;
}
	
.wrapper {
  display: table;
  height: 100%; width: 100%;
}

.stage {
  display: table-cell;
  vertical-align: middle;
}

.tabled, .middled {
  text-align: center;
  margin: 0 auto;
}
[class^="link-"] {
  display: inline-block;
  margin: 2em
}

/* linkone */
.link-1 .headA:before, .link-1 .headA:after {
  content: '';
  border-bottom: solid 1px cornsilk;
  position: absolute;
  bottom: 0;
  width: 0;
}
.link-1{
font-family: ui-serif;
}

.link-1 .headA:before { left: 0; }
.link-1 .headA:after { right: 0; }

.link-1 .headA:hover:before, .link-1 .headA:hover:after {
  width: 50%;
}

.link-1 .headA:before, .link-1 .headA:after {
  -webkit-transition: all 0.2s ease;
          transition: all 0.2s ease;
}



</style>
</head>
<body>

        
            


    START: Navbar

    Additional Classes:
        .dk-navbar-sticky
        .dk-navbar-transparent
        .dk-navbar-white
        .dk-navbar-fullscreen || .dk-navbar-(xl, lg, md, sm)-fullscreen


         

<nav class="dk-navbar dk-navbar-fixed dk-navbar-transparent dk-navbar-white dk-navbar-lg-fullscreen">
   <div class="link-1">
        <div class="headA" >     
          <span class="thin">BREAD</span><span class="thick">MEN</span>
        </div>
      </div>
    <div class="container">
        <div class="dk-nav-content">
            
            
           
            
            
            <ul class="dk-nav dk-nav-align-right">
                
        <li class="dk-drop-item">
            <a href="home.do">
                Home
            </a>
        </li>
         
        <li class="dk-drop-item">
            <a href="about-us.html">
               리스트
            </a>
        </li>
        <li class="dk-drop-item">
            <a href="memberInfo.do">
                멤버정보
            </a></li>
        <li class="dk-drop-item">
            <a href="revBoardListPaging.do">
                게시판
            </a></li>
             <li class="dk-drop-item">
            <a href="revBoardList_dio.do">
                게시판2
            </a></li>
        <li class="dk-drop-item">
            <a href="review.do">
                리뷰
            </a></li>
        <li class="dk-drop-item">
            <a href="memberMypage.do">
                마이페이지
            </a></li>
              <li class="dk-drop-item">
            <a href="bread.do">
                빵
            </a></li>
        <li class="dk-drop-item">
            <a href="businessMemberPage.do">
                사업자정보
            </a></li>
            <c:if test="${id eq null }">
            <li class="dk-drop-item">
            <a href="memberLogin.do">
                Login
            </a></li>    
        	</c:if>
        	 <c:if test="${id ne null }">
            <li class="dk-drop-item">
            <a href="memberLogOut.do">
                Logout
            </a></li>    
        	</c:if>
            </ul>
            
        </div>
    </div>
</nav>
<div class="dk-navbar dk-navbar-fullscreen">
    <div class="container">
        <div class="d-block"></div>
        <div class="dk-nav-content">

        </div>
    </div>
</div>


-->