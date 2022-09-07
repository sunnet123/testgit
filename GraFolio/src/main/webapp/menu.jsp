<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- core태그 라이브러리를 사용하기위해 반드시 선언 -->
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand	navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId }">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/addMember.jsp"/>">회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId %>님]</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">ººº</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">피드</a>
					<a class="dropdown-item" href="#">작품</a>
					<a class="dropdown-item" href="#">배경화면</a>
					<a class="dropdown-item" href="#">스토리</a>
					<a class="dropdown-item" href="#">콜라보레이션</a>
				</div>
				</li>
			</ul>
		</div>
	</div>
</nav>