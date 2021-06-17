<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script>
	alert("차감되었습니다!");
	let id = '${uid}';
	location.href="memberPage.do?id="+id;
</script>