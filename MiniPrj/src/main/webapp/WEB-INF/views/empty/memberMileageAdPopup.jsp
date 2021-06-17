<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>회원정보</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<script>
  function showPopup() { window.open("ad_popup2.jsp", "a", "width=400, height=300, left=100, top=50"); }
  
  

  </script>
<!-- END: Scripts -->


<body>
	<div align="center">
		<h1>마일리지 확인창</h1>
		<table class="table">
			<tr>
				<th>QnA작성 건수</th>
				<th>리뷰 작성</th>		
				<th>마일리지</th>	
				<th>마일리지</th>	
			</tr>
			<tr>
				<td>${qna }</td>
				<td>${review }</td>		
				<td>${member.mileage }</td>	
				<td>마일리지</td>	
				
			</tr>
			
		</table>
	</div>
	
</body>

