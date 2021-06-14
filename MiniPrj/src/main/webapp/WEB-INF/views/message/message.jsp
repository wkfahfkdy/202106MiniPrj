
<%@ page session="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script>	
	function frmSubmit(ms_uum) {
		
		frm.ms_num.value = ms_num;
		frm.submit();
		
	}
</script>


<form id="frm" action="messageSelect.do" method="post"> 
	<input type="hidden" id="ms_num" name="ms_num">
</form>
	
<div align="center" style="margin-top: 150px; height: 700px; ">
	<div class="dk-box dk-header">
		<div>
			<form>
				<button type = "button" onclick = "location.href = 'messageReceiverList.do'">받은메세지</button>
				<button type = "button" onclick = "location.href = 'messageSelectSenderList.do'">보낸메세지</button>
			</form>
		</div>
       	<div class="container">
			<c:forEach items="${list }" var="vo">
	           	<div class="row no-gutters" style="background-color: #f3f3f3;">
	              	<div style="height: 100px;"></div>
					<a onclick="frmSubmit('${vo.ms_num }')">${vo.sender_name }<br>
							제목 : ${vo.title } <br>
							날짜 : ${vo.ms_date } <br></a>
			    </div>
			</c:forEach>
		</div>
	</div>
</div>

