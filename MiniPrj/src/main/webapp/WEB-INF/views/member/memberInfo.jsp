<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>회원정보</title>

<script type="text/javascript">
	function joinWait() {
		
	}
</script>

<script type="text/javascript">
	function businessMemberPage() {
		
	}
</script>

</head>
<body>
<div >
	<div class="dk-box-1 dk-padding-top">
		<div class="container">
			<ul class="dk-isotope-filter text-center">
				<li class="active" data-filter="*">All</li>
				<li data-filter=".branding">가입승인대기</li>
				<li data-filter=".photography">사업자승인대기</li>
				<li data-filter=".design">사업자</li>
				<li data-filter=".mockups">회원</li>
				
			</ul>
		</div>
	</div>
	

	
	<div >
		<div class="row no-gutters vertical-gap dk-isotope-grid">
			<c:forEach items="${members }" var="member">
			<c:if test="${member.joinwait eq 'Y' }">
			<div class="col-12 col-sm-6 col-md-4 col-lg-3 dk-isotope-grid-item branding">	
				<div class="dk-portfolio-item dk-portfolio-item-style-6 dk-portfolio-item-center dk-portfolio-item-light">
						
						<table  class="table">
						<tr>
							<th>아이디</th>
							<td>${member.u_id }</td>
							<th>이름</th>
							<td colspan="3">${member.u_name }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${member.u_adr }</td>
							<th>우편번호</th>
							<td colspan="3">${member.u_adrcode }</td>
						</tr>
						<tr>	
							<th>전화번호</th>
							<td>${member.u_tel }</td>
							<th>메일</th>
							<td>${member.u_mail }</td>
							<th>가입일자</th>
							<td>${member.regdate }</td>
						</tr>
							<tr>
								<td colspan="6"><button onclick="joinWait()">가입승인</button></td>
							</tr>
						</table>	
						
  				</div>	
				
            </div>		
            </c:if>
            </c:forEach>
          
          	<c:forEach items="${members }" var="member">
          	<c:if test="${member.s_reg eq 'Y' }">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 dk-isotope-grid-item photography">
				<div class="dk-portfolio-item dk-portfolio-item-style-6 dk-portfolio-item-center dk-portfolio-item-light">
						
						<table  class="table">
						<tr>
							<th>아이디</th>
							<td>${member.u_id }</td>
							<th>이름</th>
							<td colspan="3">${member.u_name }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${member.u_adr }</td>
							<th>우편번호</th>
							<td colspan="3">${member.u_adrcode }</td>
						</tr>
						<tr>	
							<th>전화번호</th>
							<td>${member.u_tel }</td>
							<th>메일</th>
							<td>${member.u_mail }</td>
							<th>가입일자</th>
							<td>${member.regdate }</td>
						</tr>
							<tr>
								<td colspan="6"><button onclick="businessMemberPage()">사업자관리</button></td>
							</tr>
						</table>
				</div>
            </div>	
            </c:if>
            </c:forEach>
				
				<c:forEach items="${members }" var="member">
				<c:if test="${member.s_reg eq 'Y' }">
				<div class="col-12 col-sm-6 col-md-4 col-lg-3 dk-isotope-grid-item design">
					<div class="dk-portfolio-item dk-portfolio-item-style-6 dk-portfolio-item-center dk-portfolio-item-light">
						
						<table  class="table" >
						<tr>
							<th>아이디</th>
							<td>${member.u_id }</td>
							<th>이름</th>
							<td colspan="3">${member.u_name }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${member.u_adr }</td>
							<th>우편번호</th>
							<td colspan="3">${member.u_adrcode }</td>
						</tr>
						<tr>	
							<th>전화번호</th>
							<td>${member.u_tel }</td>
							<th>메일</th>
							<td>${member.u_mail }</td>
							<th>가입일자</th>
							<td>${member.regdate }</td>
						</tr>
							<tr>
								<td colspan="6"><button onclick="location.href='businessMemberPage.do'">사업자관리</button></td>
							</tr>
						</table>
				</div>
            </div>	
            </c:if>
			</c:forEach>	
			
			<c:forEach items="${members }" var="member">
			<div class="col-12 col-sm-6 col-md-4 col-lg-3 dk-isotope-grid-item mockups">
				<div class="dk-portfolio-item dk-portfolio-item-style-6 dk-portfolio-item-center dk-portfolio-item-light">
					<table  class="table">
						<tr>
							<th>아이디</th>
							<td>${member.u_id }</td>
							<th>이름</th>
							<td colspan="3">${member.u_name }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${member.u_adr }</td>
							<th>우편번호</th>
							<td colspan="3">${member.u_adrcode }</td>
						</tr>
						<tr>	
							<th>전화번호</th>
							<td>${member.u_tel }</td>
							<th>메일</th>
							<td>${member.u_mail }</td>
							<th>가입일자</th>
							<td>${member.regdate }</td>
						</tr>
						<tr>
							<td colspan="6"><button>회원관리</button></td>
						</tr>
					
					</table>
				</div>
			</div>
			</c:forEach>
		</div>
		</div>
	</div>
	<div class="text-center">
    	<a href="#" class="dk-btn dk-btn-md dk-btn-load dk-btn-work mt-50">Load More</a>
   	</div>
	

</body>
</html>