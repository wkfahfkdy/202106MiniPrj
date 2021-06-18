<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
// 클릭 시 대댓글창 출력
function showComment(str_num){
	var str_num = str_num; // 변수명들은 VO에 설명
	
	// 클릭 부분의 display를 바꿔주기 전에 나머지를 전부 숨긴다
	var areaList = document.getElementsByName('addCommentsArea');
	areaList.forEach(function(item){
		item.style.display = "none";
	});
	
	// 만약에 클릭한 부분의 display가 none이면 show로 바꾸어라
	if(document.getElementById(str_num).style.display == "none"){
		document.getElementById(str_num).style.display = "block";
	}	
}

// 댓글 작성
function newComment(stb_id, id){
	var stb_id = stb_id;
	var str_content = document.getElementById('newCommentsArea').value;
	// 줄넘김을 표시하기 위한 것
	str_content = str_content.replace(/(\n|\r\n)/g, '<br>');
	var u_id = id;
	
	$.ajax({
		url:'stAddComment.do',
		type:'post',
		data:{
			stb_id:stb_id,
			u_id:u_id,
			str_content:str_content,
			want:'new'
		},
		success:function(result){
			console.log('입력됨');
			location.reload();
		}
	});
}

// 대댓글 작성
function addComment(str_num, stb_id, str_depth, id){
	
	var str_num = str_num;
	var u_id = id;
	var str_depth = str_depth +1;
	var str_content = document.getElementById(str_num).value;
	// 줄넘김을 표시하기 위한 것
	str_content = str_content.replace(/(\n|\r\n)/g, '<br>');
	var str_num = str_num;
	
	console.log(stb_id, u_id, str_depth, str_content, str_num);
	
	$.ajax({
		url:'stAddComment.do',
		type:'post',
		data:{
			stb_id:stb_id,
			u_id:u_id,
			str_depth:str_depth,
			str_content:str_content,
			str_num:str_num,
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
</head>
<body>
			<div class="container">
				<div>
					<img src="">
				<h1>댓글창 가져오기</h1>
				</div>
				
				<div>
					<div>
							<!-- 댓글 -->
						<div class = "inRp">
							<table style="width:100%; border-bottom: 1px solid;">
								<tr><td><h5>댓글123</h5></td></tr>
							</table>
							<!-- 댓글 리스트 출력 -->
							<c:forEach items="${replyList }" var="rlist">
								<!-- 대댓글 입력창은 기본적으로 숨겨져있게 만들었음. 클릭할 시에 나타나게 함 -->
								<div  style="clear:both;" onclick="showComment(${rlist.str_num })">
									<div style="padding: 7px" class = "iddiv">
										${rlist.u_id }
									</div>
									<div style="padding: 7px" class = "condiv">
										<c:if test="${rlist.str_depth != 0 }">
											<!-- 댓글의 깊이(몇번째 자식 댓글인지)에 따라 화살표 개수 추가 -->
											<c:forEach begin="1" end="${rlist.str_depth }"><img src = "resources/image/up.png" width = "15px" height = "15px" /></c:forEach>
										</c:if>
										${rlist.str_content }
										<c:if test="${id != null }">
											<!-- enter, shift 키 먹히도록 -->
											<textarea style="display:none;" rows="1" cols="70" name="addCommentsArea" id="${rlist.str_num }" onkeypress="javascript:if(event.keyCode==13&&!event.shiftKey)addComment(${rlist.str_num }, ${rlist.stb_id }, ${rlist.str_depth }, '${id }')"></textarea>
										</c:if>
									</div>
								</div><br>
							</c:forEach><br>
							<c:if test="${id != null }">
								<h6>새 댓글 쓰기</h6>
								<textarea rows="2" cols="102" id="newCommentsArea" onkeypress="javascript:if(event.keyCode==13&&!event.shiftKey)newComment(${bid } ,'${id }')"></textarea>
							</c:if>
						</div>
					</div>
				
				
				</div>
			
			</div>
</body>
</html>