<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<script>
	$(function(){
		CKEDITOR.replace('qn_content',{
			filebrowserUploadUrl : '${pageContext.request.contextPath }/fileUpload',
			height : '600px',
			width : '800px'
		});
	});
	
	function qnaDelete(qn_num){
		
		$.ajax({
			url : 'qnaDelete.do',
			data : {qn_num: qn_num},
			type : 'POST',
			success : function(resp){
				location.href = "qnaListPaging.do";
			},
			error : function(err){
				console.log(err);
			}
		});
	}
</script>
</head>
<body>
	<div align = "center">
		<div style="margin-top: 150px">
			<form id = "frm" action = "qnaUpdate.do" method = "POST">
				<table border = "1">
					<tr>
						<th>순번</th>
						<td><input type = "hidden" id = "qn_num" name = "qn_num" value = "${vo.qn_num }">${vo.qn_num }</td>
						<th>작성일자</th>
						<td>${vo.qn_regdate }</td>
						<th>작성자</th>
						<td>${vo.u_id }</td>
						<th>조회수</th>
						<td><input type = "hidden" id = "qn_hit" name = "qn_hit" value = "${vo.qn_hit }">${vo.qn_hit }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan = "7">
							<c:if test = "${id eq vo.u_id || id eq 'admin' }">
								<input name = "qn_title" type = "text" value = "${vo.qn_title }">
							</c:if>
							<c:if test = "${id ne vo.u_id && id ne 'admin' }">
								${vo.qn_title }
							</c:if>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan = "7">
							<c:if test = "${id eq vo.u_id || id eq 'admin' }">
								<textarea name = "qn_content" rows = "6" cols = "90">${vo.qn_content }</textarea>
							</c:if>
							<c:if test = "${id ne vo.u_id && id ne 'admin' }">
								<textarea name = "qn_content" rows = "6" cols = "90" readonly>${vo.qn_content }</textarea>
							</c:if>
						</td>
					</tr>
				</table><br>
				<div>
					<button type = "button" onclick = "location.href = 'qnaListPaging.do'">목록 보기</button>
					<c:if test = "${id eq vo.u_id || id eq 'admin' }">
						<button type = "submit">수정</button>
						<button type = "button" onclick = "qnaDelete('${vo.qn_num}')">삭제</button>
					</c:if>
				</div>
			</form>
		</div>
	</div>
</body>
</html>