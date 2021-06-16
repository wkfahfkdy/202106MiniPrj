<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script>
	function adminDelete(id) {
		let result = confirm("삭제하시겠습니까?") 
		if(result) {
			location.href="adminDelete.do?id=" + id;
			alert("삭제되었습니다.");
		}else {
			alert("취소되었습니다.");
		}
	}
	
</script>
<title>회원정보</title>
</head>
<body>
	<br>
	<br>
	<br>
	<div align="center">
		<h2>[회원 관리]</h2>
		<div>
			<br>
		<div>
			<h3>회원 정보</h3>
			<table  style="width:1200px;text-align:center;" class="table">
				<tr>
					<th>회원아이디</th>
					<th>이름</th>
					<th>주소</th>
					<th>우편번호</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>마일리지</th>
					<th>비고</th>
				
				</tr>
					<tr>
						<td>${member.u_id }</td>
						<td>${member.u_name }</td>
						<td>${member.u_adr }</td>
						<td>${member.u_adrcode }</td>
						<td>${member.u_tel }</td>
						<td>${member.u_mail }</td>
						<td>${member.mileage }</td>
						<td><button class="dk-btn dk-btn-md" onclick="adminDelete('${member.u_id }')">회원삭제</button></td>			
					</tr>
			</table>
			
		</div>		
		</div>
		<div>
			<br>
		<div>
			<h3>마일리지 적립내역</h3>
			<table  style="width:1200px;text-align:center;" class="table">
				<tr>
					<th>작성한 글</th>
					<th>작성한 댓글</th>
					<th>작성한 리뷰</th>
					<th>적립된 마일리지</th>
					
				</tr>
					<tr>
						<td>${member.mileage }</td>
						
					</tr>
			</table>
			
		</div>		
		</div>
	</div>
	
	
	
	<div class="dk-box-1">
		<div class="bg-image bg-pattern">
			<div
				style="background-color: #202020; background-image: url(assets/images/bg-pattern.png);"></div>
		</div>
		<div class="container">
			<div class="row justify-content-center vertical-gap mnt-40 mnb-10">

				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">548</div>
						<div class="dk-numbers-text">페이지 방문수</div>
					</div>

				</div>
				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">1465</div>
						<div class="dk-numbers-text">#</div>
					</div>

				</div>
				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">612</div>
						<div class="dk-numbers-text">작성글</div>
					</div>

				</div>
				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">735</div>
						<div class="dk-numbers-text">마일리지</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	
	
	

</body>
</html>