<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.top-bar{
	background: #f3ac29;
}

</style>


<div class="storeHeader">

<div class="top-bar fixed-top">
	<div class="container flex-center">
		<div class="top-info">
		             <a href="${pageContext.request.contextPath}/" class="headTitleA" style="text-decoration: none;">
                <span class="titleTop">
                <img alt=""  width="100px" src="${pageContext.request.contextPath}/resources/images/product/logoWW.png">                         
                </span>
            </a>
		</div>
		<div class="top-links">
			<c:choose>
				<c:when test="${not empty sessionScope.member}">
					<c:choose>
						<c:when test="${sessionScope.member.mRole eq 0}">
			                <span class="headerUserName">${sessionScope.member.mNick}</span>님
			                &nbsp;|&nbsp;
			                <a href="${pageContext.request.contextPath}/member/logout"><span>로그아웃</span></a>
			                &nbsp;|&nbsp;             
							<a href="${pageContext.request.contextPath}/admin"><i class="fas fa-user-secret"></i></a>
						</c:when>
						<c:otherwise>
			                <span class="headerUserName">${sessionScope.member.mNick}</span>님
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

<div class="headerBottom">
<nav class="navbar navbar-expand-lg navbar-light ">


  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto"> 
      <li class="nav-item active item">
	        <a class="nav-link" href="#">유기동물 통계 <span class="sr-only">(current)</span></a>
	      </li>
		<li class="nav-item active item">
	        <a class="nav-link" href="#">정기후원 <span class="sr-only">(current)</span></a>
	    </li>   
		<li class="nav-item active item">
	        <a class="nav-link" href="${pageContext.request.contextPath}/product/main">개묘개묘 스토어 <span class="sr-only">(current)</span></a>
	    </li>
		<li class="nav-item active item">
	        <a class="nav-link" href="${pageContext.request.contextPath}/petsit/main">개묘개묘 펫시터 <span class="sr-only">(current)</span></a>
	    </li>
      <li class="nav-item dropdown item">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       	   고객센터
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">공지사항</a>
  	      <a class="dropdown-item" href="#">이벤트</a>
          <a class="dropdown-item" href="#">FAQ</a>
        </div>
      </li> 	       	                              
    </ul>

  </div>
</nav>
</div>
</div>
