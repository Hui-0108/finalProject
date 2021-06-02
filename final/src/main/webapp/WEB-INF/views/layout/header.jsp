<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="header">
	<div class="headTitle">
		<a class="headBrand">개묘개묘</a>	
	</div>
	<div class="navItemMenu">
		<div class="navItem">
			<a href="#">소개</a>
		</div>
		<div class="navItem">
			<a href="#">유기동물 통계</a>
		</div>
		<div class="navItem">
			<a href="#">정기후원</a>
		</div>
		<div class="navItem">
			<a href="#">개묘개묘스토어</a>
		</div>
		<div class="navItem">
			<a href="#">개묘개묘펫시터</a>
		</div>	
		<div class="navItem">
			<a href="#">공지사항</a>
		</div>						
	</div>
	
	
	<div class="headItemMenu">
		<div class="headItem">
			<c:if test="${not empty sessionScope.member}">
				<span class="headItem">${sessionScope.member.mNick}</span>님
				<a class="logout" href="${pageContext.request.contextPath}/member/logout"> 로그아웃 </a>
			</c:if>
			
		</div>
		<div class="headItem">
			<a class="headLink" href="#">
			<i class="fas fa-user"></i>
		</a>
		</div>	
		<div class="headItem">
			<a class="headLink" href="#">
			<i class="fas fa-shopping-cart"></i>			
			</a>
		</div>			
	</div>

</div>
