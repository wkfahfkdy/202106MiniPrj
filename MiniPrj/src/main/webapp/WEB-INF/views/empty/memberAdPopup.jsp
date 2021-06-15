<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>회원정보</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<script>
  function showPopup() { window.open("ad_popup2.jsp", "a", "width=400, height=300, left=100, top=50"); }
  
  function iamport(){
      //가맹점 식별코드
      IMP.init('imp07808434');
      IMP.request_pay({
          pg : 'kcp',
          pay_method : 'card',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : '상품1' , //결제창에서 보여질 이름
          amount : 100, //실제 결제되는 가격
          buyer_email : 'iamport@siot.do',
          buyer_name : 'admin',
          buyer_tel : '010-1234-5678',
          buyer_addr : 'yedam',
          buyer_postcode : '123-456'
      }, function(rsp) {
         console.log(rsp);
          if ( rsp.success ) {
             var msg = '결제가 완료되었습니다.';
              msg += '고유ID : ' + rsp.imp_uid;
              msg += '상점 거래ID : ' + rsp.merchant_uid;
              msg += '결제 금액 : ' + rsp.paid_amount;
              msg += '카드 승인번호 : ' + rsp.apply_num;
              opener.parent.location.href="purchaseInsert.do?i_code"+icode;
              window.close();
          } else {
              var msg = '결제에 실패하였습니다.';
               msg += '에러내용 : ' + rsp.error_msg;
          }
          alert(msg);
      });
      
   }
  function purchase(icode) {
	  let result = confirm("결제하시겠습니까?")
	  if(result) {
		  opener.parent.location.href="purchaseInsert.do?i_code="+icode;
		  alert("결제완료 되었습니다.");
	      window.close();
	  }else {
		  alert("결제가 취소되었습니다.");
	  }
	  
  }

  </script>
<!-- END: Scripts -->


<body>
	<div align="center">
		<h1>서비스</h1>
		<table class="table">
			<tr>
				<th>상품이름</th>
				<th>상품가격</th>
				<th>서비스기간</th>
				<th>비고</th>
				<th>test</th>			
			</tr>
			<c:forEach items="${service }" var="service">
			<tr>
				<td>${service.i_name} </td>
				<td>${service.i_pay}원 </td>
				<td>${service.week}주 </td>
				<td><button class="dk-btn dk-btn-md" style="width:100%" 
				onclick="iamport()">API결제</button></td>
				<td><button class="dk-btn dk-btn-md" style="width:100%" 
				onclick="purchase('${service.i_code}')">가상결제</button></td>
				
			</tr>
			</c:forEach>
		</table>
	</div>
	
</body>

