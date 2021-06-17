<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/fmt_rt" %>  
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
			location.href="purchaseUpdate.do?i_code="+icode;
			alert("결제완료 및 서비스가 연장되었습니다.");
			window.close();
		}else {
			alert("취소되었습니다.");
		}
	}
	
	function purchaseUpload(){
		let result = confirm("-----경고----- \n 1300X800 사이즈의 사진만 업로드 가능합니다.\n 확인하셨습니까? ")
		if(result) {
			alert("파일이 등록되었습니다.");
			frm.submit();
			window.close();
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
		<form action="purchaseUpload.do" class="dk-form" method="post" id="frm" enctype="multipart/form-data" >
			
		<table class="table">
			<tr>
				<th>서비스이름</th>
				<th>누적결제금액</th>
				<th>서비스 시작 일자</th>
				<th>서비스 종료 일자</th>
				<th>사진 파일</th>
				<th>업로드</th>
				<th>서비스 연장</th>
			</tr>
			<c:forEach items="${purchaseList }" var="purchase">
				<input type="hidden" id="p_id" name="p_id" value="${purchase.p_id}">
			<tr>
				<td>${purchase.i_name }</td>
				<td><x:formatNumber type="currency" value="${purchase.i_pay }"></x:formatNumber></td>
				<td><x:formatDate value="${purchase.i_regdate }" pattern="yyyy-MM-dd [E] a hh:mm:ss" /></td>
				<td><x:formatDate value="${purchase.e_date }" pattern="yyyy-MM-dd [E] a hh:mm:ss" /></td>
				<td><input  type="file" id="p_image" name="p_image" style="width:300px;" /></td>
				<td><button class="dk-btn dk-btn-md" onclick="purchaseUpload()">업로드</button></td>
				<td><button class="dk-btn dk-btn-md" onclick="purchaseUpdate('${purchase.i_code}')">서비스 연장</button></td>
			</tr>	
			</c:forEach>
		</table>
		</form>
		</div>
		<div>
			<button class="dk-btn dk-btn-md" onclick="window.close()">창닫기</button>
		</div>
	</div>
</body>
</html>