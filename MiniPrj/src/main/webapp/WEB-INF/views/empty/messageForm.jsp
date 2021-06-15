<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

<script>

	$(".texta");.on('keydown', checkTextareaNum50);
	$(".texta");.on('keyup', checkTextareaNum50);
	
	function checkTextareaNum50(){
	    var _msgContent = $(this).val();

	    if ( _msgContent.length > 51 ){
	         $texta.val(_msgContent.substring(0,50));
	    }else if( _msgContent.length <= 50 ){
	         $texta.siblings('span').find('em').text(_msgContent.length);
	    }
	    
</script>

<br>
<div align="center" style="padding: 10px;" >
	<div align="left" style="width:80%; height: 70px;" > 
		<h5>쪽지보내기</h5>
		<hr size="5" noshade>
	</div>
	
	<div>
	<table align="center" style="width:80%; height: 250px; ">
		<tr>
			<td> 
				<input style="border: 0px;" type="text" name="sender_name" id="sender_name" value="보내는사람">
			</td>
			<td align="right">
				<select name="store">
					<option value="">store1</option>	
					<option value="">store2</option>	
					<option value="">store3</option>	
					<option value="">store4</option>	
					<option value="">store5</option>	
					<option value="">store6</option>	
					<option value="">store7</option>	
					<option value="">store8</option>	
					<option value="">store9</option>	
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea id="texta" name="texta" rows="7" cols="50" style="resize: none;" maxlength="50" placeholder="최대 50자 까지 등록 가능합니다." ></textarea>
				<div align="right"><span>(<em>0</em>/50)</span></div>
			</td>
		</tr>
	</table>
	</div>
	<br>
	<input type="submit" value="보내기" onclick="window.close()">
	<input type="button" value="창닫기" onclick="window.close()">
</div>