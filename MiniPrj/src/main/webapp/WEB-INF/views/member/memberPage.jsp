<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script>
	function adminDelete(id) {
		let result = confirm("삭제하시겠습니까?") 
		if(result) {
			location.href="adminDelete.do?id=" + id;
			alert("삭제되었습니다.");
		}else {
			alert("취소되었습니다.");
		}
	}
	
	function FormSubmit(str) {
		frm.u_id.value=str;
		frm.submit();
	}
	
	function  MileageDown(down){
		frm1.u_id.value=down;
		frm1.submit();
	}
	
	function manualUp(id){
		
		frm2.u_id.value=id;
		var manualUpVal = $('#manualU').val();
		
		intVal = parseInt(manualUpVal);
		frm2.mileageU.value=intVal;
		
		if($('#manualU').val()==""){
	 			alert('값을 입력해주세요.');
		}else{
		
		
		var result= confirm('* '+id+' *'+'님 +'+intVal+' (마일리지) 지급 하시겠습니까?');
		if(result){
			frm2.submit();
		}else{  //취소
			
			
		}
		}
	}
	function manualUp2(id){
		frm2.u_id.value=id;
		var inputMileageDownVal = prompt('값을 입력하세요','');
		
		frm2.mileageU.value=parseInt(inputMileageDownVal);
		console.log(inputMileageDownVal);
		if(!inputMileageDownVal){
 			alert('값을 입력해주세요.');
		}else{

		var result= confirm('* '+id+' *'+'님 +'+inputMileageDownVal+' (마일리지) 지급 하시겠습니까?');
		if(result){
		frm2.submit();
		}else{  //취소
			
		
		}
		}
	}
	
	function manualDown2(id){
		frm3.u_id.value=id;
		var inputMileageDownVal = prompt('값을 입력하세요','');
		
		frm3.mileageD.value=parseInt(inputMileageDownVal);
		console.log(inputMileageDownVal);
		if(	!inputMileageDownVal){
 			alert('값을 입력해주세요.');
		}else{
		
		var result= confirm('* '+id+' *'+'님 -'+inputMileageDownVal+' (마일리지) 차감 하시겠습니까?');
		if(result){
		frm3.submit();
		}else{  //취소
		
		}
		}
	}

</script>
<title>회원정보</title>
</head>
<body>
	<br>
	<br>
	<br>
	<div align="center">
		<h2>[회원 관리]</h2>
		<div>
			<br>
		<div>
			<h3>회원 정보</h3>
			<table  style="width:1200px;text-align:center;" class="table">
				<tr>
					<th>회원아이디</th>
					<th>이름</th>
					<th>주소</th>
					<th>우편번호</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>비고</th>
				</tr>
					<tr>
						<td>${member.u_id }</td>
						<td>${member.u_name }</td>
						<td>${member.u_adr }</td>
						<td>${member.u_adrcode }</td>
						<td>${member.u_tel }</td>
						<td>${member.u_mail }</td>
						<td><button class="dk-btn dk-btn-md" onclick="adminDelete('${member.u_id }')">회원삭제</button></td>
					</tr>
			</table>
			
		</div>		
		</div>
		<div>
			<br>
		<div>
			<h3>마일리지 적립내역</h3>
			<table  style="width:1200px;text-align:center;" class="table">
				<tr>
					<th>작성한 글(QnA작성글 수 / 건당 20p)</th>
					<th>작성한 리뷰(Main Review 수 / 건당 200p)</th>
					<th>적립된 마일리지</th>
					
				</tr>
					<tr>
						<td>${qna }</td>
						<td>${review }</td>
						<td>${member.mileage }</td>
					</tr>
			</table>
			<!-- 리뷰작성 200p, 댓글20p,  -->
		</div>		
		</div>
	</div>
	
	<div align="center">
	
		<table style="width:1200px;text-align:center;" class="table">
						<tr>
							<th id="td1">마일리지+1000UP</th>
							<th id="td1">마일리지-1000DOWN</th>		
							<th>마일리지+ 수동</th>
							<th>마일리지- 수동</th>			
						</tr>
						<c:set var="Di" value="${Di+1 }"/>
						<tr>
							<td id="td1"><button class="dk-btn dk-btn-md" type="button"  onclick="FormSubmit('${member.u_id }')">UP</button></td>
							<td id="td1"><button class="dk-btn dk-btn-md" type="button" onclick="MileageDown('${member.u_id}')">DOWN</button></td>
							<td id="td2"><button class="dk-btn dk-btn-md" type="button" id="button"onclick="manualUp2('${member.u_id }')">+수동!</button></td>
							<td id="td2"><button class="dk-btn dk-btn-md" type="button" id="button" onclick="manualDown2('${member.u_id }')">-수동!</button></td>
							</tr>
		</table>
	</div>
	<div>
		<form id="frm" name="frm" action="memberMileageUp.do" method="post">
			<input type="hidden" id="u_id" name="u_id">
		</form>
	</div>
	<div>
		<form id="frm1" name="frm1" action="memberMileageDown.do" method="post">
			<input type="hidden" id="u_id" name="u_id">
		</form>
	</div>
	<div>
		<form id="frm2" name="frm2" action="mileAgeManualUp.do" method="post">
			<input type="hidden" id="u_id" name="u_id">
			<input type="hidden" id="mileageU" name="mileageU">
		</form>
	</div>
	<div>
		<form id="frm3" name="frm3" action="mileAgeManualDown.do" method="post">
			<input type="hidden" id="u_id" name="u_id">
			<input type="hidden" id="mileageD" name="mileageD">
		</form>
	</div>
	
</body>
</html>