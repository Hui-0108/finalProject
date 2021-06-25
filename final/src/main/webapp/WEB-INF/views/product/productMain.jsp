<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<div class="storeBody">
		<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
		    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active imgstore">
		      <img src="${pageContext.request.contextPath}/resources/images/storeMain/dogPlay.jpg" class="d-block w-100 " alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>활동량이 많은 강아지를 위한 장난감</h5>
		        <p>집에서도 신나게 놀아볼까요</p>
		      </div>
		    </div>
		    <div class="carousel-item imgstore">
		      <img src="${pageContext.request.contextPath}/resources/images/storeMain/catPlay.jpg" class="d-block w-100 " alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>굴려보고 만져보고 호기심을 자극시켜봐요</h5>
		        <p>고양이에게 놀이는 선택이 아니라 필수! 고양이를 위한 장난감들 구경해보세요</p>
		      </div>
		    </div>
		    <div class="carousel-item imgstore">
		      <img src="${pageContext.request.contextPath}/resources/images/storeMain/dogEating.jpg" class="d-block w-100 "  alt="...">
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
			인기상품
		</div>
			
				<c:forEach var="dto" items="${listBestProduct}">
					<div class="">
						<a href="${pageContext.request.contextPath}/product/article?category=${dto.pCateNum}&page=1&pNum=${dto.pNum}"><img class="main-img imgstore" src="${pageContext.request.contextPath}/resources/images/home/main_product.jfif" class="" alt="..."></a>
						<div class="">
							<fmt:parseNumber value="${(dto.pPrice + dto.pDetailPrice)*(1-(dto.pDiscountRate/100))}" var="price" type="number" integerOnly="true"/>
				    		<h5 class=""> ${price} 원</h5>
			    			<p class="">${dto.pName}</p>					
						</div>
					</div>
				</c:forEach>												
			
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
			신상품
		</div>			

		<div class="card-deck storeCard">
		  <div class="card">
		    <img src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg" class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg" class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg" class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		</div>

		<div class="card border-light cardBoarder">
		  <img src="${pageContext.request.contextPath}/resources/images/storeMain/dogRun.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">가족과 함께하는 시간</h5>
		    <p class="card-text">가벼운 소재부터 여러 색상의 장난감을 통해 반려동물과 즐거운 시간을 보내보세요</p>
		    <a href="#" class="btn btn-primary">구매하기</a>
		  </div>
		</div>
	
		
		<div id="totalProductWhole">
		<div class="totalProductText productTitle">
			전체상품
		</div>			
	
			<div class="totalProduct">
				<c:forEach var="dto" items="$">
					<div class="ttproduct">
						<div class="totalImg1 img">
							<a class="storeClick">
								<img alt="" src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
							</a>
						</div>
						<div class="totalName1 name">
							<a class="storeClick">
								사료1
							</a>
						</div>
						<div class="totalPrice1 price">
							2000원
						</div>
					</div>
				</c:forEach>
					<div class="ttproduct">
						<div class="totalImg1 img">
							<a class="storeClick">
								<img alt="" src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
							</a>
						</div>
						<div class="totalName1 name">
							<a class="storeClick">						
								장난감1
							</a>
						</div>
						<div class="totalPrice1 price" >
							2000원
						</div>
					</div>		
					<div class="ttproduct">
						<div class="totalImg1 img">
							<a class="storeClick">
							<img alt="" src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
							</a>
						</div>
						<div class="totalName1 name">
							<a class="storeClick">							
							장난감2
							</a>
						</div>
						<div class="totalPrice1 price" >
							2000원
						</div>
					</div>	
					<div class="ttproduct">
						<div class="totalImg1 img">
							<a class="storeClick">
							<img alt="" src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
							</a>
						</div>
						<div class="totalName1 name">
							<a class="storeClick">
							장난감3
							</a>
						</div>
						<div class="totalPrice1 price" >
							2000원
						</div>
					</div>	
			</div>	
		</div>	
			
			<div class="card border-light text-white banner">
			  <img src="${pageContext.request.contextPath}/resources/images/storeMain/ban.jpg" class="card-img" alt="...">
			  <div class="card-img-overlay">
			    <h5 class="card-title">개묘개묘는 동물과 사람이 함께하는 문화를 만듭니다</h5>
			    <p class="card-text"></p>
			    <p class="card-text"></p>
			  </div>
			</div>				
		</div>
</div>



