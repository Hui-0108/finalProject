<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
@font-face {/*본문 내용*/
    font-family: 'Cafe24SsurroundAir';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {/*강조하는 곳*/
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.storeBody .productTitle{
	font-size: 30px;
    text-align: center;
    margin-top: 100px;
    margin-bottom: 30px;
	color: #023047; 
	font-family: Cafe24Ssurround;

}
.popularCard{
	 height: 350px;
}
.toycardImg{
	width: 1000px;
	margin: auto;
}
.card-title{
	font-family: GmarketSansMedium;
}
.card-text{
	font-family: Cafe24SsurroundAir;
}
.btn{
	color: white;
	background: #219ebc;
}
.btn:hover{
	color: white;
	background: #023047;
}
.storeBody .imgstore{
	height: 300px;
}

</style>

<div class="storeBody">
		<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
		    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active imgstore">
		      <img src="${pageContext.request.contextPath}/resources/images/storeMain/slide1.png" class="d-block w-100 " alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>활동량이 많은 강아지를 위한 장난감</h5>
		        <p>집에서도 신나게 놀아볼까요</p>
		      </div>
		    </div>
		    <div class="carousel-item imgstore">
		      <img src="${pageContext.request.contextPath}/resources/images/storeMain/slide4.png" class="d-block w-100 " alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>굴려보고 만져보고 호기심을 자극시켜봐요</h5>
		        <p>고양이에게 놀이는 선택이 아니라 필수! 고양이를 위한 장난감들 구경해보세요</p>
		      </div>
		    </div>
		    <div class="carousel-item imgstore">
		      <img src="${pageContext.request.contextPath}/resources/images/storeMain/slide3.png" class="d-block w-100 "  alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>입맛이 까다로운 동물들도</h5>
		        <p>식성에 맞는 다양한 사료가 구비되어있습니다. </p>
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
		
		<div class="storebody-main">
		
		<div id="popularWhole">
		<div class="popularProductText productTitle">
			떼껄룩의 인기상품들을 만나보세요
		</div>	
			<div class="card-deck ">
				<c:forEach var="dto" items="${listBestProduct}">
					<div class="card popularCard">
						<a href="${pageContext.request.contextPath}/product/article?category=${dto.pCateNum}&page=1&pNum=${dto.pNum}"><img src="${pageContext.request.contextPath}/uploads/product/${dto.pImgName}" class="main-img " alt="..."></a>
						<div class="card-body">
							<fmt:parseNumber value="${(dto.pPrice + dto.pDetailPrice)*(1-(dto.pDiscountRate/100))}" var="price" type="number" integerOnly="true"/>
				    		<h5 class="card-text"> ${price} 원</h5>
			    			<p class="card-text">${dto.pName}</p>					
						</div>
					</div>
				</c:forEach>	
			</div>														
		</div>
		<div class="card border-light cardBoarder">
		  <img src="${pageContext.request.contextPath}/resources/images/storeMain/dogRun.jpg" class="card-img-top toycardImg">
			  <div class="card-body">
			    <h5 class="card-title">가족과 함께하는 시간</h5>
			    <p class="card-text">가벼운 소재부터 여러 색상의 장난감을 통해 반려동물과 즐거운 시간을 보내보세요</p>
			    <a href="${pageContext.request.contextPath}/product/cateList/3" class="btn" style="color: white;">구매하기</a>
			  </div>
		</div>		
		
		
		<div class="banner donation">
			<a class="storeClick">
				<img src="${pageContext.request.contextPath}/resources/images/storeMain/eventImg.jpg" class="d-block w-100 " alt="...">
			</a>
		</div>				
		<div class="banner donation">
			<img src="${pageContext.request.contextPath}/resources/images/storeMain/do3.jpg" class="d-block w-100 " alt="...">
		</div>
		<div class="newProductText productTitle">
			새로 들어온 상품들을 어떠세요?
		</div>			
			<div class="card-deck ">
				<c:forEach var="dto" items="${listBestProduct}">
					<div class="card popularCard">
						<a href="${pageContext.request.contextPath}/product/article?category=${dto.pCateNum}&page=1&pNum=${dto.pNum}"><img src="${pageContext.request.contextPath}/uploads/product/${dto.pImgName}" class="main-img " alt="..."></a>
						<div class="card-body">
							<fmt:parseNumber value="${(dto.pPrice + dto.pDetailPrice)*(1-(dto.pDiscountRate/100))}" var="price" type="number" integerOnly="true"/>
				    		<h5 class="card-text"> ${price} 원</h5>
			    			<p class="card-text">${dto.pName}</p>					
						</div>
					</div>
				</c:forEach>	
			</div>


	
		
		<div id="totalProductWhole">
		<div class="totalProductText productTitle">
			전체상품
		</div>			
	
			<div class="card-deck ">
				<c:forEach var="dto" items="${listBestProduct}">
					<div class="card popularCard">
						<a href="${pageContext.request.contextPath}/product/article?category=${dto.pCateNum}&page=1&pNum=${dto.pNum}"><img src="${pageContext.request.contextPath}/uploads/product/${dto.pImgName}" class="main-img " alt="..."></a>
						<div class="card-body">
							<fmt:parseNumber value="${(dto.pPrice + dto.pDetailPrice)*(1-(dto.pDiscountRate/100))}" var="price" type="number" integerOnly="true"/>
				    		<h5 class="card-text"> ${price} 원</h5>
			    			<p class="card-text">${dto.pName}</p>					
						</div>
					</div>
				</c:forEach>	
			</div>
		</div>	
		<div class="banner donation">
			<a class="storeClick">
				<img src="${pageContext.request.contextPath}/resources/images/storeMain/bannerBottom.jpg" class="card-img" alt="...">
			</a>
		</div>								
	</div>
</div>



