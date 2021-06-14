<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript">
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
	/* function manualDown(id){
		
		frm3.u_id.value=id;
		var manualDownVal = $('#manualD').val();
		
		frm3.mileageD.value=manualDownVal;
		
		if($('#manualD').val()==""){
 			alert('값을 입력해주세요.')
		}else{
		
	
		var result= confirm('* '+id+' *'+'님 -'+manualDownVal+' (마일리지) 차감 하시겠습니까?');
		if(result){
		frm3.submit();
		}else{  //취소
			
		
		}
		}

	}*/
	
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
<style>
	#td1{
		text-align:center;
		
	}
	input[type='number']{
	text-align:center;
		width:150px;
	}

	#button{
		margin-left:20px;
		width:100px;
	}
	#divM{
		margin-bottom:130px;
	}
</style>
</head>
<body style="align:center">
<div id="divM">
	<div class="dk-box-1 dk-padding-top">
		<div class="container">
			<ul class="dk-isotope-filter text-center">
				<li class="active" onclick="location.href='memberInfo.do'">All</li>
				<li onclick="location.href='memberInfoWait.do'">가입승인대기</li>
				<li onclick="location.href='memberInfoBM.do'">사업자</li>
				<li onclick="location.href='memberInfoM.do'">회원</li>
				<li onclick="location.href='memberMileage.do'">마일리지관리</li>
				
			</ul>
		</div>
	</div>
		<div align="center">
	
		<table  class="table">
						<tr>
							<th id="th1">아이디</th>
							<th>이름</th>
							<th>마일리지</th>
							<th id="td1">마일리지+1000UP</th>
							<th id="td1">마일리지-1000DOWN</th>		
							<th>마일리지+ 수동</th>
							<th>마일리지- 수동</th>			
						</tr>
					<c:forEach items="${mileage }" var="member">
						<c:set var="Di" value="${Di+1 }"/>
						<tr>
							<td id="memId">${member.u_id }</td>
							<td>${member.u_name }</td>
							<td>${member.mileage }</td>
							
							<td id="td1"><button type="button"  onclick="FormSubmit('${member.u_id }')">UP</button></td>
							<td id="td1"><button type="button" onclick="MileageDown('${member.u_id}')">DOWN</button></td>
							<td id="td2"><button type="button" id="button"onclick="manualUp2('${member.u_id }')">+수동!</button></td>
							<td id="td2"><button type="button" id="button" onclick="manualDown2('${member.u_id }')">-수동!</button></td>
							</tr>
					</c:forEach>
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
	
	
	</div>
</body>
</html>