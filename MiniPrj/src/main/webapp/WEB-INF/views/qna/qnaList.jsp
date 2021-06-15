<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	// 페이지 넘기기
	function goPage(page){
		location.href = "qnaListPaging.do?page=" + page;
	}
	
	function frmSubmit(qnaNum, qnaHit) {
		
		frm.qn_num.value = qnaNum;
		frm.qn_hit.value = qnaHit;
		frm.submit();
		
	}
</script>
<style>
.pagination {
	display : inline-block;
} 

.pagination a {
	color : black;
	float : left;
	padding : 8px 16px;
	text-decoration : none;
}
th {
	padding-bottom : 5px;
}
th,td {
	text-align : center;
}
.tdcnt {
	text-align : right;
	padding-right : 10px;
}
</style>
</head>
<body>
	<form id="frm" action="qnaSelect.do" method="post">
		<!-- qnaSelect, hitCount paremater 보내기 용도 -->
		<input type="hidden" id="qn_num" name="qn_num">
		<input type="hidden" id="qn_hit" name="qn_hit">
	</form>
	<div>
		<div style="margin-top: 150px">
			<div align="center">
				<table>
					<tr  style="border-bottom: 1px solid;">
						<th width="50px">번호</th>
						<th width="300px">제목</th>
						<th width="100px">작성자</th>
						<th width="250px">작성일자</th>
						<th width="55px">조회수</th>
					</tr>
					<c:forEach items="${bolist }" var="vo">
						<tr>
							<td class="tdcnt">${vo.qn_num }</td>
							<td onclick="frmSubmit('${vo.qn_num}', '${vo.qn_hit }')">${vo.qn_title }</td>
							<td>${vo.u_id }</td>
							<td>${vo.qn_regdate }</td>
							<td class="tdcnt">${vo.qn_hit }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div align="center">
				<jsp:include page = "../common/paging.jsp" flush = "true">
					<jsp:param value="${paging.firstPageNo }" name="firstPageNo"/>
					<jsp:param value="${paging.prevPageNo }" name="prevPageNo"/>
					<jsp:param value="${paging.startPageNo }" name="startPageNo"/>
					<jsp:param value="${paging.pageNo }" name="pageNo"/>
					<jsp:param value="${paging.endPageNo }" name="endPageNo"/>
					<jsp:param value="${paging.nextPageNo }" name="nextPageNo"/>
					<jsp:param value="${paging.finalPageNo }" name="finalPageNo"/>
				</jsp:include>
				
			<c:if test="${!empty id }">
				<button type="button" onclick="location.href='qnaForm.do'">등록</button>
			</c:if> 
			</div>
		</div>
	</div>
</body>
</html>