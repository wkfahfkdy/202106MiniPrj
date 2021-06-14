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

	<div id="ehead"></div>
	<div id="ebody">
	<tiles:insertAttribute name="content1"></tiles:insertAttribute>
	</div>
</body>
</html>