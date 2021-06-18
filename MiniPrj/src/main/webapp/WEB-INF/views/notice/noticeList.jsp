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
		location.href = "noticeListPaging.do?page=" + page;
	}
	
	function frmSubmit(noticeNum, noticeHit) {
		
		frm.nt_num.value = noticeNum;
		frm.nt_hit.value = noticeHit;
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
	<form id="frm" action="noticeSelect.do" method="post"> 
		<!-- noticeSelect, hitCount paremater 보내기 용도 -->
		<input type="hidden" id="nt_num" name="nt_num">
		<input type="hidden" id="nt_hit" name="nt_hit">
	</form>
	
	
<div align="center" style="margin-top: 150px;">

	<div align="center" style=" width: 60%;">
		<h4>Notice</h4>
	</div><br>

		<div style="width: 60%; ">
			<div align="center">
				<table>
					<tr style="border-bottom: 1px solid;">
						<th width="5%">번호</th>
						<th width="60%">제목</th>
						<th width="10%">작성자</th>
						<th width="10%">작성일자</th>
						<th width="5%">조회수</th>
					</tr>
					<c:forEach items="${bolist }" var="vo">
						<tr>
							<td class="tdcnt">${vo.nt_num }</td>
							<!-- noticeSelect -->
							<td style="text-align: left;" onclick="frmSubmit('${vo.nt_num}', '${vo.nt_hit}')">${vo.nt_title }</td>
							<td>${vo.u_id }</td>
							<td><x:formatDate value="${vo.nt_regdate }" pattern="yyyy-MM-dd"/>
							</td>
							<td class="tdcnt">${vo.nt_hit }</td>
						</tr>
					</c:forEach>
				</table> <br>
				<div align="right">
					<c:if test="${id eq 'admin' }">
						<button style="border:0px solid; border-radius: 10px; "
								type="button" onclick="location.href='noticeForm.do'"><b>등록</b></button>
					</c:if>
				</div>
			</div> <br><br>
			
			
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
	</div><br><br>
</body>
</html>