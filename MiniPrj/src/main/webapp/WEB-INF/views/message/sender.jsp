<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div align="center" style="margin-top: 150px; height: 700px; ">
	<div class="dk-box dk-header">
		<div>
			<form>
				<button type = "button" onclick = "location.href = 'message.do'">전체보기</button>
				<button type = "button" onclick = "location.href = 'messageReceiverList.do'">받은메세지</button>
				<button type = "button" onclick = "location.href = 'messageSelectSenderList.do'">보낸메세지</button>
			</form>
		</div>
       	<div class="container">
			<c:forEach items="${list }" var="vo">
	           	<div class="row no-gutters" style="background-color: #f3f3f3;">
	              	<div style="height: 100px;"></div>
					<h5>${vo.receiver_name }님! 사장님들과 자유롭게 소통하세요!</h5>
							<a>${vo.title } <br>
							${vo.ms_date } <br></a>
			    </div>
			</c:forEach>
		</div>
	</div>
</div>