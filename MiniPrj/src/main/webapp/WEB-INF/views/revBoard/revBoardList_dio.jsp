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
		location.href = "revBoardList.do?page=" + page;
	}
	
	function frmSubmit() {
		
		frm.id.value = revBoardID;
		frm.submit();
		
		return;
	}
</script>
</head>
<body>
	<h3>review</h3>
	<form id="frm" action="frmSubmit.do" method="post">
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
						<td>${vo.rb_num }</td>
						<td onclick="frmSubmit('${vo.rb_num}')">${vo.rb_title }</td>
						<td>${vo.u_id }</td>
						<td>${vo.rb_regdate }</td>
						<td>${vo.rb_hit }</td>
					</tr>
				</c:forEach>
			</table>
			
			
			<%-- <div>
				<jsp:include page="../common/paging.jsp" flush="true">
					<jsp:param value="${paging.firstPageNo }" name="firstPageNo"/>
					<jsp:param value="${paging.prevPageNo }" name="prevPageNo"/>
					<jsp:param value="${paging.startPageNo }" name="startPageNo"/>
					<jsp:param value="${paging.PageNo }" name="pageNo"/>
					<jsp:param value="${paging.endPageNo }" name="endPageNo"/>
					<jsp:param value="${paging.nextPageNo }" name="nextPageNo"/>
					<jsp:param value="${paging.finalPageNo }" name="finalPageNo"/>
				</jsp:include>
				
			
			
			</div> --%>
			
						<jsp:include page = "../common/paging.jsp" flush = "true">
				<jsp:param value="${bolist.firstPageNo }" name="firstPageNo"/>
				<jsp:param value="${bolist.prevPageNo }" name="prevPageNo"/>
				<jsp:param value="${bolist.startPageNo }" name="startPageNo"/>
				<jsp:param value="${bolist.pageNo }" name="pageNo"/>
				<jsp:param value="${bolist.endPageNo }" name="endPageNo"/>
				<jsp:param value="${bolist.nextPageNo }" name="nextPageNo"/>
				<jsp:param value="${bolist.finalPageNo }" name="finalPageNo"/>
			</jsp:include>
			
			
			<!-- <div>
				c:if 로 조건 달고 작성하기 버튼 만들기? - 다른 경로를 통해 리뷰를 작성한다면 필요x
				<button type="button" onclick="location.href='revBoardForm.do'">작성하기</button>
			</div> -->
			<!-- paging -->
			<%-- <c:forEach items="${bolist }" var="list">
				${list.rb_num }
				${list.rb_title }
				${list.u_id }
				${list.rb_regdate }
				${list.rb_hit }<br>
			</c:forEach> --%>
			<%-- <c:if test="${!empty id }">
					나중에 session에 있는 id 값 뭔지 보고 empty 뒤에 지정. 이후에 아래의 등록 버튼 여기에 위치
			</c:if> --%>
			<button onclick="location.href = 'revBoardForm.do'">등록</button>
		</div>
	</form>
</body>
</html>