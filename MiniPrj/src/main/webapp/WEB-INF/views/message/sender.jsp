
<%@ page session="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	// 페이지 넘기기
	function goPage(page){
		location.href = "senderPaging.do?page=" + page;
	}
	

	function messageDelete(ms_num){
		
		$.ajax({
			url : 'messageDelete.do',
			data : {ms_num: ms_num},
			type : 'POST',
			success : function(resp){
				location.href = "senderPaging.do";
			},
			error : function(err){
				console.log(err);
			}
		});
	}
	

	function frmSubmit(ms_num) {
		
		frm.ms_num.value = ms_num;
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

	<form id="frm"> 
		<!-- noticeSelect, hitCount paremater 보내기 용도 -->
		<input type="hidden" id="ms_num" name="ms_num">
	</form>


<div align="center" style="margin-top: 150px;">

	<div align="left" style=" width: 60%;">
		<h5 style="align:left; ">&nbsp;내 쪽지함</h5>
	</div>

	<div align="left" style="width: 60%; background-color: #474747;">
		<table>
			<tr>
				<th>
					<a href="receiverPaging.do" style="color: #fff;">받은쪽지</a></th>
				<th>
					<a href="senderPaging.do" style="color: #fff;">보낸쪽지</a></th>
				<th>
					<a onclick="window.open('form.do','MS','width=550,height=450,location=no,status=no,scrollbars=no');"
					style="color: #fff; cursor:pointer">쪽지쓰기</a></th>
			</tr>
		</table>
	</div>
	<div style="height: 10px;"></div>
	
	<div align="left" style="width: 60%; height: 450px;">
		<table style="text-align: center;">
			<tr style="border-bottom: 1px solid;">
				<td width="9%">받는사람</td>
				<td width="62%">내용</td>
				<td width="18%">보낸시간</td>
				<td width="8%">관리</td>
			</tr>
			<tr style="height: 10px;"></tr>
			<c:forEach items="${bolist }" var="vo">
			<tr>
				<td  onclick="window.open('msSender.do?ms_num=${vo.ms_num}','MS','width=550,height=450,location=no,status=no,scrollbars=no')" style="cursor:pointer">
					${vo.sender_name }</td>
				<td style="text-align: left; cursor:pointer"  onclick="window.open('msSender.do?ms_num=${vo.ms_num}','MS','width=550,height=450,location=no,status=no,scrollbars=no')" >
					${vo.content }</td>
				<td onclick="window.open('msSender.do?ms_num=${vo.ms_num}','MS','width=550,height=450,location=no,status=no,scrollbars=no')" style="cursor:pointer">
					${vo.ms_date }</td>
				<td>
				<button style="cursor:pointer" type = "button" class="but" onclick = "messageDelete('${vo.ms_num}')">삭제</button>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	
	<br><br>
	
	
</div>



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

