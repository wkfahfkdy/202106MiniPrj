<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function submit() {
		let result = confirm("승인하시겠습니까?");
		if(result){
			
			frm.submit();
		    alert("승인완료");
		}else{
		    alert("취소");
		}
	}
</script>

</head>

<body>
	<br>
	<br>
	<br>
	
	<form action="memberJoinWaitUpdate.do" id="frm" method="post" >
		<h1 align="center">가입승인대기</h1>
		<input type="hidden" id="u_id" name="u_id" value="${member.u_id }">
		<div align="center" >
			<table border="1" class="table">
				<tr>
					<th>아이디</th>
					<td>${member.u_id }</td>
				</tr>
				<tr>	
					<th>이름</th>
					<td>${member.u_name }</td>
				</tr>
				<tr>	
					<th>사업자 등록증</th>
					<td>
						<img src="resources/upload/${member.s_file }" width="600px" height="300px"/>
					</td>
				</tr>
			</table>		
		</div>
	</form>
	<div align="center">
		<button onclick="submit()">승인</button>
		<button onclick="location.href='memberInfoWait.do'" >취소</button>
	</div>
</body>
</html>