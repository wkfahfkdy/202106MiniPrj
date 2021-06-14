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
	
	function frmSubmit(qnaID) {
		
		frm.qn_num.value = qnaID;
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
</style>
</head>
<body>
	<form id="frm" method="post"> <!-- action="noticeSelect.do" -->
		<div>
			<div style="margin-top: 150px">
				<div align="center">
					<table>
						<tr>
							<th width="50px">번호</th>
							<th width="300px">제목</th>
							<th width="100px">작성자</th>
							<th width="250px">작성일자</th>
							<th width="100px">조회수</th>
						</tr>
						<c:forEach items="${bolist }" var="vo">
							<tr>
								<td>${vo.qn_num }</td>
								<td onclick="frmSubmit('${vo.qn_num}')">${vo.qn_title }</td>
								<td>${vo.u_id }</td>
								<td>${vo.qn_regdate }</td>
								<td>${vo.qn_hit }</td>
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
					
					<%-- <c:if test="${!empty id }">
						나중에 session에 있는 id 값 뭔지 보고 empty 뒤에 지정. 이후에 아래의 등록 버튼 여기에 위치
				</c:if> --%>
					<button type="button" onclick="location.href='qnaForm.do'">등록</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>