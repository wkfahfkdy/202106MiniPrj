<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript">
	function FormSubmit(str) {
		frm.u_id.value=str;
		frm.submit();
	}
	function MileageDown(down){
		frm1.u_id.value=down;
		frm1.submit();
	}
</script>
<style>
	#td1{
		text-align:center;
		
	}
</style>
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
							<th>마일리지</th>
							<th id="td1">마일리지+1000UP</th>
							<th id="td1">마일리지-1000DOWN</th>		
							<th>마일리지+ 수동</th>
							<th>마일리지- 수동</th>			
						</tr>
					<c:forEach items="${mileage }" var="member">
						<tr>
							<td>${member.u_id }</td>
							<td>${member.u_name }</td>
							<td>${member.mileage }</td>
							
							<td id="td1"><button type="button"  onclick="FormSubmit('${member.u_id }')">UP</button></td>
							<td id="td1"><button type="button" onclick="MileageDown('${member.u_id}')">DOWN</button></td>
							<td id="td1"><button onclick="window.open('memberMileage.do','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">button</button></td>
							<td id="td1"></td>
							</tr>
					</c:forEach>
		</table>
	</div>
	<div>
		<form id="frm" name="frm" action="memberMileageUp.do" method="post">
			<input type="hidden" id="u_id" name="u_id">
		</form>
	</div>
	<div>
		<form id="frm1" name="frm1" action="memberMileageDown.do" method="post">
			<input type="hidden" id="u_id" name="u_id">
		</form>
	</div>
	
	</div>
</body>
</html>