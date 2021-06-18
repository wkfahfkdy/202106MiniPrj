<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/fmt_rt" %>
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
	
	td {
		padding: 15px;
	}
	
	.tdcnt {
		text-align : center;
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
		<div align="center" style="margin-top: 150px;">
		
			<div align="center" style=" width: 60%;">
				<h4>Q & A</h4>
			</div><br>
		
			<div style="width: 60%;">
				<table>
					<tr  style="border-bottom: 1px solid;">
						<th width="5%">번호</th>
						<th width="60%">제목</th>
						<th width="10%">작성자</th>
						<th width="10%">작성일자</th>
						<th width="5%">조회수</th>
					</tr>
					<c:forEach items="${bolist }" var="vo">
						<tr>
							<td class="tdcnt">${vo.qn_num }</td>
							<td style="text-align:left;" onclick="frmSubmit('${vo.qn_num}', '${vo.qn_hit }')">${vo.qn_title }</td>
							<td>${vo.u_id }</td>
							<td><x:formatDate value="${vo.qn_regdate }" pattern="yyyy-MM-dd"/>
							</td>
							<td class="tdcnt">${vo.qn_hit }</td>
						</tr>
					</c:forEach>
				</table> <br>
				<div align="right">
					<c:if test="${!empty id }" >
						<button style="border:0px solid; border-radius: 10px; "
								type="button" onclick="location.href='qnaForm.do'">등록</button>
					</c:if> 
				</div> <br><br>
				
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
				
			</div>
		</div>
	</div> <br><br>
</body>
</html>