<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>revBoardList</title>
<script>
	// 페이지 넘기기
	function goPage(page){
		location.href = "inqBoardList.do?page=" + page;
	}
</script>
</head>
<body>
	<h3>review</h3>
	<form id="frm" action="frmSubmit.do" method="post">
		<div align="center">
			<table>
				<tr>
					<th>게시글 번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일자</th>
					<th>조회수</th>
				</tr>
				<c:forEach items="" var="vo">
					<tr>
						<td>${ }</td>
						<td onclick="frmSubmit('${}')">${ }</td>
						<td>${ }</td>
						<td>${ }</td>
						<td>${ }</td>
					</tr>
				</c:forEach>
			</table>
			<div>
				<!-- c:if 로 조건 달기 -->
				<button type="button" onclick="location.href='revBoardForm.do'">작성하기</button>
			</div>
			<!-- paging -->
			<jsp:include page="../common/paging.jsp" flush="true">
				<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
				<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
				<jsp:param name="startPageNo" value="${paging.startPageNo}" />
				<jsp:param name="pageNo" value="${paging.pageNo}" />
				<jsp:param name="endPageNo" value="${paging.endPageNo}" />
				<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
				<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
			</jsp:include>
		</div>
	</form>
</body>
</html>