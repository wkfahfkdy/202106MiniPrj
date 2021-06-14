<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<script>
	$(function(){
		CKEDITOR.replace('nt_content',{
			filebrowserUploadUrl : '${pageContext.request.contextPath }/fileUpload',
			height : '600px',
			width : '800px'
		});
	});
	
	function noticeDelete(nt_num){
		
		$.ajax({
			url : 'noticeDelete.do',
			data : {nt_num: nt_num},
			type : 'POST',
			success : function(resp){
				location.href = "noticeListPaging.do";
			},
			error : function(err){
				console.log(err);
			}
		});
	}
</script>
<body>
	<div align = "center">
		<div style="margin-top: 150px">
			<form id = "frm" action = "noticeUpdate.do" method = "POST">
				<table border = "1">
					<tr>
						<th>순번</th>
						<td><input type = "hidden" id = "nt_num" name = "nt_num" value = "${vo.nt_num }">${vo.nt_num }</td>
						<th>작성일자</th>
						<td>${vo.nt_regdate }</td>
						<th>작성자</th>
						<td>${vo.u_id }</td>
						<th>조회수</th>
						<td><input type = "hidden" id = "nt_hit" name = "nt_hit" value = "${vo.nt_hit }">${vo.nt_hit }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan = "7">
							<c:if test = "${id eq vo.u_id || id eq 'admin' }">
								<input name = "nt_title" type = "text" value = "${vo.nt_title }">
							</c:if>
							<c:if test = "${id ne vo.u_id && id ne 'admin' }">
								${vo.nt_title }
							</c:if>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan = "7">
							<c:if test = "${id eq vo.u_id || id eq 'admin' }">
								<textarea name = "nt_content" rows = "6" cols = "90">${vo.nt_content }</textarea>
							</c:if>
							<c:if test = "${id ne vo.u_id && id ne 'admin' }">
								<textarea name = "nt_content" rows = "6" cols = "90" readonly>${vo.nt_content }</textarea>
							</c:if>
						</td>
					</tr>
				</table><br>
				<div>
					<button type = "button" onclick = "location.href = 'noticeListPaging.do'">목록 보기</button>
					<c:if test = "${id eq vo.u_id || id eq 'admin' }">
						<button type = "submit">수정</button>
						<button type = "button" onclick = "noticeDelete('${vo.nt_num}')">삭제</button>
					</c:if>
				</div>
			</form>
		</div>
	</div>
</body>
</html>