<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
						
						<c:forEach items="${bread }" var="vo">
							<tr>
								<td>${vo.b_image }</td>
								<td>${vo.b_name }</td>
								<td>${vo.b_like }</td>
								</tr>
						</c:forEach>
					</table>
</body>
</html>