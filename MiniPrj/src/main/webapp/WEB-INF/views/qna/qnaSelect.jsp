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
		CKEDITOR.replace('qn_content',{
			filebrowserUploadUrl : '${pageContext.request.contextPath }/fileUpload',
			height : '600px',
			width : '800px'
		});
	});
	
	// 공지사항 삭제
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
	
	// 클릭 시 대댓글창 출력
	function showComment(qnr_num){
		var qnr_num = qnr_num; // 변수명들은 VO에 설명
		
		// 클릭 부분의 display를 바꿔주기 전에 나머지를 전부 숨긴다
		var areaList = document.getElementsByName('addCommentsArea');
		areaList.forEach(function(item){
			item.style.display = "none";
		});
		
		// 만약에 클릭한 부분의 display가 none이면 show로 바꾸어라
		if(document.getElementById(qnr_num).style.display == "none"){
			document.getElementById(qnr_num).style.display = "block";
		}	
	}
	
	// 댓글 작성
	function newComment(qnb_num, id){
		var qnb_num = qnb_num;
		var qnr_content = document.getElementById('newCommentsArea').value;
		// 줄넘김을 표시하기 위한 것
		qnr_content = qnr_content.replace(/(\n|\r\n)/g, '<br>');
		var u_id = id;
		
		$.ajax({
			url:'qnAddComment.do',
			type:'post',
			data:{
				qnb_num:qnb_num,
				u_id:u_id,
				qnr_content:qnr_content,
				want:'new'
			},
			success:function(result){
				console.log('입력됨');
				location.reload();
			}
		});
	}
	
	// 대댓글 작성
	function addComment(qnr_num, qnb_num, qnr_depth, id){
		
		var qnr_num = qnr_num;
		var u_id = id;
		var qnr_depth = qnr_depth +1;
		var qnr_content = document.getElementById(qnr_num).value;
		// 줄넘김을 표시하기 위한 것
		qnr_content = qnr_content.replace(/(\n|\r\n)/g, '<br>');
		var qnr_num = qnr_num;
		
		console.log(qnb_num, u_id, qnr_depth, qnr_content, qnr_num);
		
		$.ajax({
			url:'qnAddComment.do',
			type:'post',
			data:{
				qnb_num:qnb_num,
				u_id:u_id,
				qnr_depth:qnr_depth,
				qnr_content:qnr_content,
				qnr_num:qnr_num,
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
		width : 15%;
		float : left;
	}
	
	.condiv {
		width : 80%;
		float : left;
	}
	
	th {
		text-align: center;
	}
	
</style>
<body>
	<div align="center" style="margin-top: 150px;">
	
		<div align="center" style=" width: 60%;">
			<h4>Q & A</h4>
		</div><br>
	
		<div style="width: 60%;">
			<form id = "frm" action = "qnaUpdate.do" method = "POST">
				<table border = "1">
					<tr align="center">
						<th>순번</th>
						<td><input type = "hidden" id = "qn_num" name = "qn_num" value = "${vo.qn_num }">${vo.qn_num }</td>
						<th>작성일자</th>
						<td><x:formatDate value="${vo.qn_regdate }" pattern="yyyy-MM-dd"/>
							</td>
						<th>작성자</th>
						<td>${vo.u_id }</td>
						<th>조회수</th>
						<td><input type = "hidden" id = "qn_hit" name = "qn_hit" value = "${vo.qn_hit }">${vo.qn_hit }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan = "7">
							<c:if test = "${id eq vo.u_id || id eq 'admin' }">
								<input size="90" style="border:0px" name = "qn_title" 
										type = "text" value = "${vo.qn_title }">
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
				<!-- 댓글 -->
				<div class = "inRp">
					<table style="width:100%; border-bottom: 1px solid;">
						<tr><td><h5>댓글</h5></td></tr>
					</table>
					<!-- 댓글 리스트 출력 -->
					<c:forEach items="${replyList }" var="rlist">
						<!-- 대댓글 입력창은 기본적으로 숨겨져있게 만들었음. 클릭할 시에 나타나게 함 -->
						<div  style="clear:both;" onclick="showComment(${rlist.qnr_num })">
							<div style="padding: 7px" class = "iddiv">
								${rlist.u_id }
							</div>
							<div style="padding: 7px" class = "condiv">
								<c:if test="${rlist.qnr_depth != 0 }">
									<!-- 댓글의 깊이(몇번째 자식 댓글인지)에 따라 화살표 개수 추가 -->
									<c:forEach begin="1" end="${rlist.qnr_depth }"><img src = "resources/image/up.png" width = "15px" height = "15px" /></c:forEach>
								</c:if>
								${rlist.qnr_content }
								<c:if test="${id != null }">
									<!-- enter, shift 키 먹히도록 -->
									<textarea style="display:none;" rows="1" cols="70" name="addCommentsArea" id="${rlist.qnr_num }" onkeypress="javascript:if(event.keyCode==13&&!event.shiftKey)addComment(${rlist.qnr_num }, ${rlist.qnb_num }, ${rlist.qnr_depth }, '${id }')"></textarea>
								</c:if>
							</div>
						</div><br>
					</c:forEach><br>
					<c:if test="${id != null }">
						<h6>새 댓글 쓰기</h6>
						<textarea rows="2" cols="102" id="newCommentsArea" onkeypress="javascript:if(event.keyCode==13&&!event.shiftKey)newComment(${vo.qn_num }, '${id }')"></textarea>
					</c:if>
				</div><br>
				<div>
					<button type = "button" onclick = "location.href = 'qnaListPaging.do'">목록</button>
					<c:if test = "${id eq vo.u_id || id eq 'admin' }">
						<button type = "submit">수정</button>
						<button type = "button" onclick = "qnaDelete('${vo.qn_num}')">삭제</button>
					</c:if>
				</div>
			</form>
		</div>
	</div><br><br>
</body>
</html>