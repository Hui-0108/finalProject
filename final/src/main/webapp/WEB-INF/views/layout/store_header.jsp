<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="storeHeader">

<div class="top-bar fixed-top">
	<div class="container flex-center">
		<div class="top-info">
		             <a href="${pageContext.request.contextPath}/" class="headTitleA" style="text-decoration: none;">
                <span class="titleTop">개묘개묘아이콘</span></a>
		</div>
		<div class="top-links">
			<c:choose>
				<c:when test="${not empty sessionScope.member}">
	                <span class="headerUserName">${sessionScope.member.mNick}</span>님
	                &nbsp;|&nbsp;
	                <a href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
	                &nbsp;|&nbsp;				
                </c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/member/login" title="로그인">로그인</a>			
				<a href="${pageContext.request.contextPath}/"><i class="fas fa-user-alt"></i>
            	</a>
            	&nbsp;&nbsp;|
            	<a class="headerIcon" href="${pageContext.request.contextPath}/"><i class="fas fa-shopping-cart"></i>
        		</a>
					<c:if test="${sessionScope.member.userId=='admin'}">
						<a href="${pageContext.request.contextPath}/admin" title="관리자"><i class="fas fa-user-secret"></i></a>
					</c:if>
			</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>

<div class="headerBottom">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand title" href="${pageContext.request.contextPath}/product/main">개묘개묘스토어</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto"> 
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       	 사료
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">강아지 사료</a>
          <a class="dropdown-item" href="#">고양이 사료</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       	   간식
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">강아지 간식</a>
          <a class="dropdown-item" href="#">고양이 간식</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       	   외출용품
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">강아지 외출용품</a>
          <a class="dropdown-item" href="#">고양이 외출용품</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       	   장난감
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">강아지 외출용품</a>
          <a class="dropdown-item" href="#">고양이 외출용품</a>
          </div>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">전체상품 <span class="sr-only">(current)</span></a>
      </li>      
		<li class="nav-item active item ">
	        <a class="nav-link color"   href="#">고객센터 <span class="sr-only">(current)</span></a>
	    </li>                    
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="상품검색" aria-label="Search">
      <button class="btn btn-outline-warning my-2 my-sm-0" type="submit">검색</button>
    </form>
  </div>
</nav>
</div>
</div>
