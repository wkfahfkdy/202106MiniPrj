<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>회원정보</title>

<script type="text/javascript">
	function joinWait(id) {
		console.log(id)
		location.href="#"
	}
</script>

<script type="text/javascript">
	function businessMemberPage() {
		
	}
</script>

</head>
<body style="align:center">
<div >
	<div class="dk-box-1 dk-padding-top">
		<div class="container">
			<ul class="dk-isotope-filter text-center">
				<li class="active" onclick="location.href='memberInfo.do'">All</li>
				<li onclick="location.href='memberInfoWait.do'">가입승인대기</li>
				<li onclick="location.href='memberInfoBM.do'">사업자</li>
				<li onclick="location.href='memberInfoM.do'">회원</li>
				<li onclick="location.href='memberMileage.do'">마일리지관리</li>
				
			</ul>
		</div>
	</div>
		<div align="center">
		<table  class="table">
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>주소</th>
							<th>우편번호</th>
							<th>전화번호</th>
							<th>메일</th>
							<th>가입일자</th>
							<th>비고</th>
							
						</tr>
					<c:forEach items="${members }" var="member">
						<tr>
							<td>${member.u_id }</td>
							<td>${member.u_name }</td>
							<td>${member.u_adr }</td>
							<td>${member.u_adrcode }</td>
							<td>${member.u_tel }</td>
							<td>${member.u_mail }</td>
							<td>${member.regdate }</td>
						
							<c:if test="${member.joinwait eq 'Y' }">
							<th><button onclick="joinWait(${member.u_id })">가입승인</button></th>
							</c:if>
						
							
						</tr>
					</c:forEach>
		</table>
	</div>
	</div>
</body>
</html>