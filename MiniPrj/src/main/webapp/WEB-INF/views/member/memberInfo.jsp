<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>회원정보</title>



<script type="text/javascript">
	function goPage(page){
		location.href = "memberInfoListPaging.do?page=" + page;
	}
	function memberPage(id) {
		location.href="memberPage.do?id=" + id;
	}
</script>
<style type="text/css">
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}
</style>

</head>
<body>
	<div>
		<div class="dk-box-1 dk-padding-top">
			<div class="container">
				<ul class="dk-isotope-filter text-center">
					<li class="active"
						onclick="location.href='memberInfoListPaging.do'">All</li>
					<li onclick="location.href='memberInfoWaitPaging.do'">가입승인대기</li>
					<li onclick="location.href='memberInfoBMPaging.do'">사업자</li>
					<li onclick="location.href='memberInfoMPaging.do'">회원</li>
				</ul>
			</div>
		</div>
		
		<div align="center">
			<table style="width: 1400px; text-align: center;" class="table">
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>주소</th>
					<th>우편번호</th>
					<th>전화번호</th>
					<th>메일</th>
					<th>가입일자</th>
					<th>비고</th>

				</tr>
				<c:forEach items="${members }" var="member">
					<tr>
						<td>${member.u_id }</td>
						<td>${member.u_name }</td>
						<td>${member.u_adr }</td>
						<td>${member.u_adrcode }</td>
						<td>${member.u_tel }</td>
						<td>${member.u_mail }</td>
						<td><x:formatDate value="${member.regdate }" pattern="yyyy-MM-dd [E] a hh:mm:ss" /></td>
						<c:if test="${member.joinwait eq 'N' and member.s_reg eq 'N'  }">
							<th><button class="dk-btn dk-btn-md"
									onclick="memberPage('${member.u_id }')">회원관리</button></th>
						</c:if>
						<c:if test="${member.joinwait eq 'Y' }">
							<th><button class="dk-btn dk-btn-md"
									onclick="location.href='memberJoinWait.do?id=${member.u_id }'">가입승인</button></th>
						</c:if>
						<c:if test="${member.s_reg eq 'Y' }">
							<th><button class="dk-btn dk-btn-md"
									onclick="location.href='businessMemberPage.do?id=${member.u_id }'">사업자관리</button></th>
						</c:if>
					</tr>
				</c:forEach>
			</table> <br>
			<div align="center">
				<jsp:include page="../common/paging.jsp" flush="true">
					<jsp:param value="${paging.firstPageNo }" name="firstPageNo" />
					<jsp:param value="${paging.prevPageNo }" name="prevPageNo" />
					<jsp:param value="${paging.startPageNo }" name="startPageNo" />
					<jsp:param value="${paging.pageNo }" name="pageNo" />
					<jsp:param value="${paging.endPageNo }" name="endPageNo" />
					<jsp:param value="${paging.nextPageNo }" name="nextPageNo" />
					<jsp:param value="${paging.finalPageNo }" name="finalPageNo" />
				</jsp:include>
			</div>
		</div>
	</div> <br><br>
</body>
</html>