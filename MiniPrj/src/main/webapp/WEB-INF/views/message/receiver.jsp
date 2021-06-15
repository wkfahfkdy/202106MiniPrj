
<%@ page session="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	th {
		color: white;
		padding: 8px 15px;
	}
	
	td {
		padding: 5px;
	}

	.pagination {
		display : inline-block;
	} 
	
	.pagination a {
		color : black;
		float : left;
		padding : 8px 16px;
		text-decoration : none;
	}
	
	.but {
		border: 0;
		background-color: #fff;
	}
</style>


<div align="center" style="margin-top: 150px;">

	<div align="left" style=" width: 60%;">
		<h5 style="align:left; ">&nbsp;내 쪽지함</h5>
	</div>

	<div align="left" style="width: 60%; background-color: #474747;">
		<table>
			<tr>
				<th>
					<a href="messageReceiverList.do" style="color: #fff;">받은쪽지</a></th>
				<th>
					<a href="messageSelectSenderList.do" style="color: #fff;">보낸쪽지</a></th>
				<th>
					<a href="javascript:popup()" target = "_blank" style="color: #fff;">쪽지쓰기</a></th>
			</tr>
		</table>
	</div>
	<div style="height: 10px;"></div>
	
	<div align="left" style="width: 60%; height: 450px;">
		<table style="text-align: center;">
			<tr style="border-bottom: 1px solid;">
				<td width="9%">보낸사람</td>
				<td width="62%">내용</td>
				<td width="18%">보낸시간</td>
				<td width="8%">관리</td>
			</tr>
			<tr style="height: 10px;"></tr>
			<c:forEach items="${list }" var="vo">
			<tr>
				<td>${vo.sender_name }</td>
				<td style="text-align: left;">${vo.content }</td>
				<td>${vo.ms_date }</td>
				<td>
				<button type = "button" class="but" onclick = "location.href ='messageDelete.do(${vo.ms_num})'">삭제</button>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	
	<br><br>
	
	
</div>

<!-- 쪽지쓰기 -->

<script type="text/javascript">

	var openWin;

	function openChild() {
		window.name = "receiver";
		
		window.open = ("insert.jsp", "insert", "width=450, height = 320, resizable=no,scrollbars=no");
		
	}
</script>



<!-- 페이징 -->
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
<br><br>


