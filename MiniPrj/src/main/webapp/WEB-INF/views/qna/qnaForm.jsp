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
<body>
	<div align = "center">
		<div style="margin-top: 150px">
			<form id = "frm" action = "qnaInsert.do" method = "POST">
				<input type = "hidden" name = "u_id" id = "u_id" value = "${id }">
				<div>
					<table border = "1">
						<tr>
							<th width = "150">제목</th>
							<td width = "300"><input type = "text" id = "qn_title" name = "qn_title"></td>
						</tr>
						<tr>
							<th width = "150">내용</th>
							<td width = "300"><textarea id = "qn_content" name = "qn_content"></textarea></td>					
						</tr>
					</table>
				</div>
				<div>
					<button type = "button" onclick = "formCheck()">등록</button>
					<button type = "button" onclick = "location.href = 'qnaListPaging.do'">뒤로 가기</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>