﻿<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
@font-face {
    font-family: 'Cafe24Ssurround';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.fixed-top {
	position: absolute;
	width: 100%;
	height: 61px;
	z-index: 6;
	color: white;
	position: fixed;
	font-family: Cafe24Ssurround, sans-serif;
}

.flex-center {
	display: flex;
	align-items: center;
	font-size: 20px;
}
.justify-content-center  {
	justify-content: center;
}

.clear {
	clear: both;
}

.top-bar {
  border-bottom: 2px solid white;
  padding: 10px 0;
  font-size: 14px;
  color: #fff;
  width: 100%;
  line-height: 2;
}
.top-bar .top-info{
	margin-right: auto;
}
.top-bar .top-links a {
    color: rgba(255, 255, 255);
    padding-left: 15px;
    display: inline-block;
    line-height: 1px;
    transition: 0.3s;
}
.top-bar .top-links a:hover {
  	color: #fff;
}
.top-bar.topbar-scrolled {
  	top: -40px;
}

.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
@media (min-width: 576px) {
	.container {
	    max-width: 540px;
	}
}
@media (min-width: 768px) {
	.container {
	    max-width: 720px;
	}
}
@media (min-width: 992px) {
	.container {
		max-width: 960px;
	}
}
@media (min-width: 1200px) {
	.container {
	    max-width: 1140px;
	}
}

.titleTop{
    color: rgba(255, 255, 255);
}

</style>

<header>
<div class="top-bar fixed-top">
	<div class="container flex-center">
		<div class="top-info">
		             <a href="${pageContext.request.contextPath}/" class="headTitleA" style="text-decoration: none;">
                <span class="titleTop"><img class="imgLogo" src="${pageContext.request.contextPath}/resources/images/home/logoWhite.png" style="height:44px;"></span>
            </a>
		</div>
		<div class="top-links">
			<c:choose>
				<c:when test="${not empty sessionScope.member}">
					<c:choose>
						<c:when test="${sessionScope.member.mRole eq 0}">
			                <a class="headerUserName" href="${pageContext.request.contextPath}/admin"><span>${sessionScope.member.mNick}님</span></a>
			                &nbsp;|&nbsp;
			                <a href="${pageContext.request.contextPath}/member/logout"><span>로그아웃</span></a>
			                &nbsp;|&nbsp;             
							<a href="${pageContext.request.contextPath}/admin"><i class="fas fa-user-secret"></i></a>
						</c:when>
						<c:otherwise>
			                <a class="headerUserName" href="${pageContext.request.contextPath}/mypage/profile"><span>${sessionScope.member.mNick}님</span></a>
			                &nbsp;|&nbsp;
			                <a href="${pageContext.request.contextPath}/member/logout"><span>로그아웃</span></a>
			                &nbsp;|&nbsp;
						</c:otherwise>
					</c:choose>
                </c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/member/login" title="로그인">로그인</a>			
					<a href="${pageContext.request.contextPath}/"><i class="fas fa-user-alt"></i>
	            	</a>
	            	&nbsp;&nbsp;|
	            	<a class="headerIcon" href="${pageContext.request.contextPath}/"><i class="fas fa-shopping-cart"></i>
	        		</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
</header>