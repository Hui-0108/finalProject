<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="home">
<div class="section window1">
	<div class="cover cover1">
			<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			    <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
			  </ol>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img class="imghome" src="${pageContext.request.contextPath}/resources/images/home/home_ani1.jpg" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h2 class="carousel-title">Adopt Animals Adopt Family</h2>
			        <p class="carousel-content">유기동물들은 여러분들의 도움이 필요해요</p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img class="imghome" src="${pageContext.request.contextPath}/resources/images/home/home_ani2.jpg" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <a href="${pageContext.request.contextPath}/stat/stat"><button type="button" class="btn btn-outline-light btn-main">Statistics</button></a>
			        <p class="carousel-content">여러분의 후원금은 유기동물의 처우개선을 위해 사용됩니다</p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img class="imghome" src="${pageContext.request.contextPath}/resources/images/home/home_ani3.png" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <a href="${pageContext.request.contextPath}/petsit/list"><button type="button" class="btn btn-outline-light btn-main">Pet Sitter</button></a>
			        <p class="carousel-content">검증된 펫시터들을 만나보세요</p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img class="imghome" src="${pageContext.request.contextPath}/resources/images/home/home_ani4.jpg" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <a href="${pageContext.request.contextPath}/product/main"><button type="button" class="btn btn-outline-light btn-main">Store</button></a>
			        <p class="carousel-content">스토어 수익금의 50%는 유기동물 보호단체에 기부됩니다</p>
			      </div>
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
	</div>
</div>

<div class="section window2">
	<div class="cover cover2">
		<h2 class="home-head donation-head">
			Take A Look !
		</h2> 
		<div class="container maindonation" style=" text-align: center;">
			<div>
				<img class="donaimg" style="height: 60%; margin-top: 100px; margin-bottom:20px; float: left;" src="${pageContext.request.contextPath}/resources/images/home/dona_ani.jpg" class="card-img-top" alt="...">
			</div>
			<div>
				<div style="margin-top: 100px; width: 40%; float: right; color: #4C4C4C; font-size: 25px;">
					안녕하세요 <br>
					펫시터 예약 & 반려동물 스토어 <br>
					<span style="font-size: 35px">Take A Look</span> 입니다 <br><br>
					매년 10만마리 이상의 유기동물이<br>
					보호소로 구조되고 있습니다<br>
					안타깝게도 이 중 절반에 가까운 동물들이<br>
					안락사되거나 자연사하고 있습니다
				</div>
				<div style="width: 100%; margin-top:10px; float:left; color: white; font-size: 31px;">
					Take A Look 스토어 수익금의 50%는 유기동물의 처우개선을 위해 사용됩니다
				</div>
			</div>
		</div>
	</div>
</div>
	
<div class="section window3">
	<div class="cover cover2">
		<h2 class="home-head static-head">
			유기동물 통계
		</h2> 
		<div class="container mainstatic">
			<div class="mainchart" style="margin-top: 70px">
				데이터를 받아서 차트 1
			</div>
			<div class="mainchart" style="margin-top: 70px">
				데이터를 받아서 차트 2
			</div>
		</div>
	</div>
</div>

<div class="section window4">
	<div class="cover cover3">
		<h2 class="home-head petsit-head">
			검증된 펫시터들을 만나보세요
		</h2> 
		<div class="container mainpetsit">
			<div class="store-content">
				<h2>가장 인기있는 펫시터</h2>
			</div>
			<c:forEach var="dto" items="${bestPetsit}">
				<div class="card">
					<a href="${pageContext.request.contextPath}/petsit/reservation?page=1&condition=all&petNum=${dto.petNum}"><img class="main-img imgpetsit" src="${pageContext.request.contextPath}/resources/images/home/main_petsit.jfif" class="card-img-top" alt="..."></a>
			  		<div class="card-body">
			    		<h5 class="card-title">${dto.mNick} 님</h5>
			    		<p class="card-text">${dto.petTitle}</p>
			  		</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

<div class="section window5">
	<div class="cover cover3">
		<h2 class="home-head store-head">
			유기동물과 함께하는 떼껄룩 스토어
		</h2> 
		<div class="container mainstore">
			<div class="store-content">
				<h2>인기상품을 만나보세요</h2>
			</div>
			
			<c:forEach var="dto" items="${bestStore}">
				<div class="card">
					<a href="${pageContext.request.contextPath}/product/article?category=${dto.pCateNum}&page=1&pNum=${dto.pNum}"><img class="main-img imgstore" src="${pageContext.request.contextPath}/resources/images/home/main_product.jfif" class="card-img-top" alt="..."></a>
			  		<div class="card-body">
			  			<fmt:parseNumber value="${(dto.pPrice + dto.pDetailPrice)*(1-(dto.pDiscountRate/100))}" var="price" type="number" integerOnly="true"/>
			    		<h5 class="card-title"> ${price} 원</h5>
			    		<p class="card-text">${dto.pName}</p>
			  		</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
</div>