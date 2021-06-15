<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function showPopup() { window.open("ad_popup2.jsp", "a", "width=400, height=300, left=100, top=50"); }
	
	function purchaseUpdate(icode) {
		let result = confirm("서비스를 연장하시겠습니까?")
		if(result) {
			location.href="#";
			alert("연장되었습니다.");
		}else {
			alert("취소되었습니다.");
		}
	}
</script>
</head>
<body>
	<div align="center">
		<div>
		<h1>이용중인 서비스</h1>	
		<table class="table">
			<tr>
				<th>서비스이름</th>
				<th>가격</th>
				<th>서비스 시작 일자</th>
				<th>서비스 종료 일자</th>
				<th>서비스 연장</th>
			</tr>
			<c:forEach items="${purchaseList }" var="purchase">
			<tr>
				<td>${purchase.i_name }</td>
				<td>${purchase.i_pay }</td>
				<td>${purchase.i_regdate }</td>
				<td>${purchase.e_date }</td>
				<td><button class="dk-btn dk-btn-md" onclick="purchaseUpdate('${purchase.i_code}')">서비스 연장</button></td>
			</tr>	
			</c:forEach>
		</table>
		</div>
		<div>
			<button class="dk-btn dk-btn-md" onclick="window.close()">창닫기</button>
		</div>
	</div>
</body>
</html>