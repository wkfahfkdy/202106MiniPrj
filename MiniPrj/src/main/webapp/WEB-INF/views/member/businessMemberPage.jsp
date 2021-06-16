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
	<div align="center" >
		<h2>[사업자 관리 페이지]</h2>
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
					<th>비고</th>
				
				</tr>
					<tr>
						<td>${sPay.u_id }</td>
						<td>${sPay.u_name }</td>
						<td>${sPay.u_adr }</td>
						<td>${sPay.u_adrcode }</td>
						<td>${sPay.u_tel }</td>
						<td>${sPay.u_mail }</td>
						<td><button class="dk-btn dk-btn-md" onclick="adminDelete('${sPay.u_id }')">회원삭제</button></td>			
					</tr>
			</table>
			
		</div>
		<br>
		<br>
		<div>
			<h3>서비스부분</h3>
			<table  style="width:1200px;text-align:center;" class="table">
				<tr>
					<th>이용중인 서비스</th>
					<th>서비스 유효기간</th>
					<th>이용 가격</th>
				
				</tr>
				<c:forEach items="${memberList }" var="member">
					<tr>
						<td>${member.i_name }</td>
						<td>${member.e_date }</td>
						<td>${member.i_pay }</td>			
					</tr>
				</c:forEach>
				<tr>
					<td colspan="3">총 가격 : ${sPay.s_pay } </td>
				</tr>
			</table>
		</div>
		<br>
		<br>
		<div class="col-12 col-md-6 dk-gallery">
			<h3>상점 정보</h3>
			<table  style="width:1200px;text-align:center;" class="table">
				<tr>
					<th>사업자 등록번호</th>
					<td>${store.s_id }</td>
					<th>사업자등록증</th>
					<td><a href="resources/upload/${sPay.s_file }" class="dk-gallery-item" style="width:150px;height:150px;">
							<img class="dk-img" src="resources/upload/${sPay.s_file }" />
						</a>
					</td>
				</tr>
				<tr>	
					<th>상호</th>
					<td>${store.s_name }</td>
					<th>대표자명</th>
					<td>${store.u_name }</td>
				</tr>
				<tr>	
					<th>전화번호</th>
					<td>${store.s_tel }</td>
					<th>주소</th>
					<td>${store.s_adr }</td>
					
				</tr>
				<tr>	
					<th>등록날짜</th>
					<td colspan="3">${store.s_opendate }</td>			
				</tr>
			</table>
		</div>
		작성글이있으면 표시
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
						<div class="dk-numbers-text">문의사항</div>
					</div>

				</div>
				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">612</div>
						<div class="dk-numbers-text">피드백</div>
					</div>

				</div>
				<div class="col-sm-6 col-lg-3">

					<div class="dk-numbers dk-count" data-count-speed="1000">
						<div class="dk-numbers-title dk-count-number">735</div>
						<div class="dk-numbers-text">즐겨찾는 고객</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	

</body>
</html>