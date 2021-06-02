<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="header-top">
    <div class="header-left">
        <p  class="headTitleP">
            <a href="${pageContext.request.contextPath}/" class="headTitleA" style="text-decoration: none;">
                <span class="headTitlespan">개묘개묘</span>
            </a>
        </p>
    </div>
    <div class="header-right">
        <div class="headerUser">
            <c:if test="${not empty sessionScope.member}">
                <span class="headerUserName">${sessionScope.member.userName}</span>님
                &nbsp;|&nbsp;
                <a href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
                &nbsp;|&nbsp;
            </c:if>
            	<a href="">
            	<i class="fas fa-user-alt"></i>
            	</a>
            	&nbsp;|&nbsp;
            	<a href="">
            	<i class="fas fa-shopping-cart"></i>
        		</a>
        
        </div>
    </div>
</div>


	<div class="headerBottom">
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
	</div>  

