<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
// 삭제
function messageDelete(ms_num){
	
	$.ajax({
		url : 'messageDelete.do',
		data : {ms_num: ms_num},
		type : 'POST',
		success : function(resp){
			//location.href = "receiverPaging.do";
			opener.parent.location.reload();
			window.close();
		},
		error : function(err){
			console.log(err);
		}
	});
}


function formCheck(){
	
	let receiver_name = $('#receiver_name').val();
	let sender_name = $('#sender_name').val();
	let content = $('#content').val();
	
	if(frm.content.value == ""){
		alert("내용을입력해주세요!");
		frm.content.focus();
		return false;
	}
	
	$.ajax({
		url : 'messageInsert.do',
		data : {receiver_name: receiver_name, sender_name: sender_name, content: content},
		type : 'POST',
		success : function(resp){
			opener.parent.location.reload();
			window.close();
		},
		error : function(err) {
			console.log(err)
		}
	});
}


</script>


<br>
<div align="center" style="padding: 10px;" >
	<div align="left" style="width:80%; height: 70px;" > 
		<h5>보낸쪽지확인</h5>
		<hr size="5" noshade>
	</div>
	
	<form id="frm" action = "messageInsert.do" method="post">
	<div>
	<table align="center" style="width:80%; height: 250px; ">
		<tr>
			<td> 
				수신 : ${vo.receiver_name }
			</td>
			<td align="right">
				 ${vo.ms_date }
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea id="content" name="content" rows="7" cols="50" style="resize: none;" maxlength="100" placeholder="${vo.content}" ></textarea>
				<!-- <div align="right"><span>(<em>0</em>/50)</span></div> -->
			</td>
		</tr>
	</table>
	</div>
	<br>
	<button type = "button" class="but" onclick = "messageDelete('${vo.ms_num}')">삭제</button>
	<input type="button" value="닫기" onclick="window.close()">
	</form>
</div>
