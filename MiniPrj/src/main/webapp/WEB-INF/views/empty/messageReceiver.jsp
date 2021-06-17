<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script>

function messageDelete(ms_num){
	
	$.ajax({
		url : 'messageDelete.do',
		data : {ms_num: ms_num},
		type : 'POST',
		success : function(resp){
			location.href = "receiverPaging.do";
			opener.parent.location.reload();
			window.close();
		},
		error : function(err){
			console.log(err);
		}
	});
}

</script>


<br>
<div align="center" style="padding: 10px;" >
	<div align="left" style="width:80%; height: 70px;" > 
		<h5>받은쪽지</h5>
		<hr size="5" noshade>
	</div>
	
	<form id="frm" action = "messageInsert.do" method="post">
	<div>
	<table align="center" style="width:80%; height: 250px; ">
		<tr>
			<td> 
				발신 : ${vo.sender_name }
			</td>
			<td align="right">
				 ${vo.ms_date }
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea id="content" name="content" rows="7" cols="50" style="resize: none;" maxlength="100" placeholder="${vo.content}" readonly></textarea>
			</td>
		</tr>
	</table>
	</div>
	<br>
	<button type="button" onclick="window.open('msReply.do','MS','width=550,height=450,location=no,status=no,scrollbars=no')" style="cursor:pointer">답장</button>
	<button type = "button" class="but" onclick = "messageDelete('${vo.ms_num}')">삭제</button>
	<input type="button" value="닫기" onclick="window.close()">
	</form>
</div>
