<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style>
	body{
		
	}
	#ehead{
		height:100px;
	}
	#ebody{
		margin-left:80px;
	}
	</style>
</head>
<body>
	<tiles:insertAttribute name="content1"></tiles:insertAttribute>
</body>
</html>