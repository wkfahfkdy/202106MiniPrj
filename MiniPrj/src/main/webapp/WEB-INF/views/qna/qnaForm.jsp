<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src = "${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>

<script>
	$(function(){
		CKEDITOR.replace('qn_content',{
			filebrowserUploadUrl : '${pageContext.request.contextPath}/imageUpload.do',
			height : '600px',
			width : '800px'
		});
	});
	
	function formCheck(){
		
		if(frm.title.value == ""){
			alert("제목 입력.");
			frm.title.focus();
			
			return false;
		}
		
		frm.submit();
	}
</script>
</head>
<style>
	th {
		text-align: center;
	}

</style>
<body>
	<div align="center" style="margin-top: 150px;">
	
		<div align="center" style=" width: 60%;">
			<h4>Q & A Writer</h4>
		</div><br>
		
		<div style="width: 45%;">
			<form id = "frm" action = "qnaInsert.do" method = "POST">
				<input type = "hidden" name = "u_id" id = "u_id" value = "${id }">
				<div>
					<table border = "1">
						<tr>
							<th width = "15%">제목</th>
							<td width = "60%">
								<input style="border:0px" size="90" type = "text" id = "qn_title" name = "qn_title"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
							<textarea style="border:0px" cols="90" rows="15" id = "qn_content" name = "qn_content"></textarea></td>					
						</tr>
					</table><br><br>
				</div>
				<div>
					<button type = "button" onclick = "formCheck()">등록</button>
					<button type = "button" onclick = "location.href = 'qnaListPaging.do'">목록</button>
				</div>
			</form>
		</div>
	</div><br><br>
</body>
</html>