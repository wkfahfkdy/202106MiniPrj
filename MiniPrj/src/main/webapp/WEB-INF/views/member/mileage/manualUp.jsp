<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script>
	alert("지급되었습니다!");
	let id = '${uid}';
	location.href="memberPage.do?id="+id;
</script>