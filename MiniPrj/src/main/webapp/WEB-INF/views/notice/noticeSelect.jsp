<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/fmt_rt" %>
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
	
	// 공지사항 삭제
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
	
	// 클릭 시 대댓글창 출력
	function showComment(ntr_num){
		var ntr_num = ntr_num; // 변수명들은 VO에 설명
		
		// 클릭 부분의 display를 바꿔주기 전에 나머지를 전부 숨긴다
		var areaList = document.getElementsByName('addCommentsArea');
		areaList.forEach(function(item){
			item.style.display = "none";
		});
		
		// 만약에 클릭한 부분의 display가 none이면 show로 바꾸어라
		if(document.getElementById(ntr_num).style.display == "none"){
			document.getElementById(ntr_num).style.display = "block";
		}	
	}
	
	// 댓글 작성
	function newComment(ntb_num, id){
		var ntb_num = ntb_num;
		var ntr_content = document.getElementById('newCommentsArea').value;
		// 줄넘김을 표시하기 위한 것
		ntr_content = ntr_content.replace(/(\n|\r\n)/g, '<br>');
		var u_id = id;
		
		$.ajax({
			url:'ntAddComment.do',
			type:'post',
			data:{
				ntb_num:ntb_num,
				u_id:u_id,
				ntr_content:ntr_content,
				want:'new'
			},
			success:function(result){
				console.log('입력됨');
				location.reload();
			}
		});
	}
	
	// 대댓글 작성
	function addComment(ntr_num, ntb_num, ntr_depth, id){
		
		var ntb_num = ntb_num;
		var u_id = id;
		var ntr_depth = ntr_depth +1;
		var ntr_content = document.getElementById(ntr_num).value;
		// 줄넘김을 표시하기 위한 것
		ntr_content = ntr_content.replace(/(\n|\r\n)/g, '<br>');
		var ntr_num = ntr_num;
		
		console.log(ntb_num, u_id, ntr_depth, ntr_content, ntr_num);
		
		$.ajax({
			url:'ntAddComment.do',
			type:'post',
			data:{
				ntb_num:ntb_num,
				u_id:u_id,
				ntr_depth:ntr_depth,
				ntr_content:ntr_content,
				ntr_num:ntr_num,
				want:'add'
			},
			success:function(result){
				console.log('입력됨');
				location.reload();
			}
		});
	}
</script>
<style>
	.inRp {
		text-align : left;
		width : 842px;
	}
	
	.iddiv {
		text-align : center;
		width : 15%;
		float : left;
	}
	
	.condiv {
		width : 60%;
		float : left;
	}
	
	
	th {
		text-align: center;
	}
	
</style>
<body>
	<div align="center" style="margin-top: 150px;">
	
		<div align="center" style=" width: 60%;">
			<h4>Notice</h4>
		</div><br>
	
		<div style="width: 60%;">
			<form id = "frm" action = "noticeUpdate.do" method = "POST">
				<table border = "1">
					<tr align="center">
						<th>순번</th>
						<td><input type = "hidden" id = "nt_num" name = "nt_num" value = "${vo.nt_num }">${vo.nt_num }</td>
						<th>작성일자</th>
						<td>
							<x:formatDate value="${vo.nt_regdate }" pattern="yyyy-MM-dd"/>
						</td>
						<th>작성자</th>
						<td>${vo.u_id }</td>
						<th>조회수</th>
						<td><input type = "hidden" id = "nt_hit" name = "nt_hit" value = "${vo.nt_hit }">${vo.nt_hit }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan = "7">
							<c:if test = "${id eq vo.u_id || id eq 'admin' }">
								<input style="border: 0px " size="90" name = "nt_title" 
										type = "text" value = "${vo.nt_title }">
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
								<textarea name = "nt_content" rows = "3" cols = "90">${vo.nt_content }</textarea>
							</c:if>
							<c:if test = "${id ne vo.u_id && id ne 'admin' }">
								<textarea name = "nt_content" rows = "3" cols = "90" readonly>${vo.nt_content }</textarea>
							</c:if>
						</td>
					</tr>
				</table><br>
				<!-- 댓글 -->
				<div class = "inRp">
					<table style="width:100%; border-bottom: 1px solid;">
						<tr><td><h5>댓글</h5></td></tr>
					</table>
					<!-- 댓글 리스트 출력 -->
					<c:forEach items="${replyList }" var="rlist">
						<!-- 대댓글 입력창은 기본적으로 숨겨져있게 만들었음. 클릭할 시에 나타나게 함 -->
						<div style="clear:both;" onclick="showComment(${rlist.ntr_num })">
							<div style="padding: 7px" class = "iddiv">
								${rlist.u_id }
							</div>
							<div style="padding: 7px" class = "condiv">
								<c:if test="${rlist.ntr_depth != 0 }">
									<!-- 댓글의 깊이(몇번째 자식 댓글인지)에 따라 화살표 개수 추가 -->
									<c:forEach begin="1" end="${rlist.ntr_depth }"><img src = "resources/image/up.png" width = "15px" height = "15px" /></c:forEach>
								</c:if>
								${rlist.ntr_content }
								<c:if test="${id != null }">
									<!-- enter, shift 키 먹히도록 -->
									<textarea style="display:none;" rows="1" cols="70" name="addCommentsArea" id="${rlist.ntr_num }" onkeypress="javascript:if(event.keyCode==13&&!event.shiftKey)addComment(${rlist.ntr_num }, ${rlist.ntb_num }, ${rlist.ntr_depth }, '${id }')"></textarea>
								</c:if>
							</div>
						</div><br><br>
					</c:forEach><br>
					<c:if test="${id != null }">
						<h6>새 댓글 쓰기</h6>
						<textarea  rows="2" cols="102" id="newCommentsArea" onkeypress="javascript:if(event.keyCode==13&&!event.shiftKey)newComment(${vo.nt_num }, '${id }')"></textarea>
					</c:if>
				</div><br>
				<div>
					<button type = "button" onclick = "location.href = 'noticeListPaging.do'">목록</button>
					<c:if test = "${id eq 'admin' }">
						<button type = "submit">수정</button>
						<button type = "button" onclick = "noticeDelete('${vo.nt_num}')">삭제</button>
					</c:if>
				</div>
			</form>
		</div>
	</div><br><br>
</body>
</html>