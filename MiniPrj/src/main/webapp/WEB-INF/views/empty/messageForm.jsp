<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
<div align="center">
	<h3>쪽지쓰기</h3>
	<div>
		<input type="text" name="sender_name" id="sender_name" value="${receiver_name}">
		<input type="text" name="receiver_name" id="receiver_name" > <br><br>
		<textarea style= "border: 1px solid #000; resize: none; width: 80%; height: 200px;" name="content" id="content"></textarea>
	</div>
	
	<input type="submit" value="보내기" onclick="window.close()">
	<input type="button" value="창닫기" onclick="window.close()">
</div>
 -->

<div align="center">
	<br><br>
	<h3>쪽지쓰기</h3>
	<table>
		<tr>
			<td> 
				<input type="text" name="sender_name" id="sender_name" value="${receiver_name}">
			</td>
			<td>
				<select name="받는사람">
				<!--<c:forEach items="${list }" var="vo">-->
					<option value="">store1</option>	
					<option value="">store2</option>	
					<option value="">store3</option>	
					<option value="">store4</option>	
					<option value="">store5</option>	
					<option value="">store6</option>	
					<option value="">store7</option>	
					<option value="">store8</option>	
					<option value="">store9</option>	
				<!--</c:forEach>-->
				</select>
			</td>
		</tr>
		<tr>
			<td>
			</td>
		</tr>
	</table>

</div>