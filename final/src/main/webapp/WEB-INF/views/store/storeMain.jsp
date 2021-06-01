<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
/*
상품의 경우 들어올때마다 추가 될때마다 floatleft를 하고 5번째는 clearboth와 floatleft같이 줌
*/

.body-container{
	margin: 0;
	padding: 0;
}

.productTitle{
	font-size: 30px;
    text-align: center;
    margin-top: 100px;
    margin-bottom: 30px;
}

.imgstore{
	height: 500px;
}

.imgstore > img{
    position: absolute;
    left : 0;
    width: 100%;

}

.img img{
	width: 230px;
    height: 280px;
}

.img{
	width: 230px;
    height: 280px;
}

/*
.popularImg1 td, .popularImg2 td, .newImg1 td, .newImg2 td, .totalImg1 td, .totalImg2 td{
	width: 170px;
	height: 200px;
}
*/

.cardBoarder{
    margin-top: 130px;
    margin-bottom: 30px;
    text-align: center;
}


.pproduct, .ttproduct{
    float: left;
    margin-right: 30px;

}
.banner > img{
    width: 100%;
 	
}
.banner{
	clear: both;
	margin-top: 30px;
	margin-bottom: 30px;
}

.donation{
	background: gray;
}

.name{
	width: 170px;
	height: 30px;
}

.price{
	width: 170px;
	height: 50px;
}
#imgStore{
	width: 100%;
}
.popularProduct, .totalProduct{
	width: 100%;
	padding-left: 50px;
}
</style>

<div class="body-container">
	<div class="body-main">

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
		        <h5>입맛이 까다로운 아이들에게도 딱!</h5>
		        <p>여러식성에 맞는 다양한 사료가 구비되어있습니다. 나이만 알고 오세요!</p>
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
	
		<div class="popularProductText productTitle">
			인기상품
		</div>
		
			<div class="popularProduct">
				<c:forEach var="dto" items="$">
					<div class="pproduct">
						<div class="popularImg1 img">
						<a><img alt="" src="${pageContext.request.contextPath}/resources/images/food.jpg"></a>
						</div>
						<div class="popularName1 name">
							<a>어쩌구사료1</a>
						</div>
						<div class="popularPrice1 price">
							2000원
						</div>
					</div>
				</c:forEach>
					<div class="pproduct">
						<div class="popularImg1 img">
							<a>
								<img alt="" src="${pageContext.request.contextPath}/resources/images/food.jpg">
							</a>						
						</div>
						<div class="popularName1 name">
							<a>
							어쩌구장난감
							</a>
						</div>
						<div class="popularPrice1 price" >
							2000원
						</div>
					</div>
					<div class="pproduct">
						<div class="popularImg1 img">
							<a>
								<img alt="" src="${pageContext.request.contextPath}/resources/images/food.jpg">
							</a>	
						</div>
						<div class="popularName1 name">
						<a>
							어쩌구장난감2						
						</a>
						</div>
						<div class="popularPrice1 price">
							2000원
						</div>
					</div>
					<div class="pproduct">
						<div class="popularImg1 img">
							<a>
								<img alt="" src="${pageContext.request.contextPath}/resources/images/food.jpg">
							</a>
						</div>
						<div class="popularName1 name">
							<a>
								어쩌구의류
							</a>
						</div>
						<div class="popularPrice1 price">
							2000원
						</div>
					</div>													
			</div>
	<!-- 
			<table class="popularProduct">
				<tr class="popularImg1">
					<td>
						<img alt="" src="${pageContext.request.contextPath}/resources/images/food.jpg">
					</td>
					<td>이미지2</td>
					<td>이미지3</td>
					<td>이미지4</td>
				</tr>
				<tr class="popularName1">
					<td>어쩌구사료1</td>
					<td>어쩌구사료2</td>
					<td>어쩌구사료3</td>
					<td>어쩌구사료4</td>
				</tr>			
				<tr class="popularPrice1">
					<td>2000원</td>
					<td>2000원</td>
					<td>2000원</td>
					<td>2000원</td>
				</tr>			
				
				<tr class="popularImg2">
					<td>5</td>
					<td>6</td>
					<td>7</td>
					<td>8</td>
				</tr>
				<tr class="popularName2">
					<td>5</td>
					<td>6</td>
					<td>7</td>
					<td>8</td>
				</tr>
				<tr class="popularPrice2">
					<td>5</td>
					<td>6</td>
					<td>7</td>
					<td>8</td>
				</tr>											
			</table>	
		 -->
	
		<div class="banner donation">
			<img src="${pageContext.request.contextPath}/resources/images/storeMain/do3.jpg" class="d-block w-100 " alt="...">
		</div>	
		<!-- 
		<div class="card border-light text-white banner">
		  <img src="${pageContext.request.contextPath}/resources/images/catcat.jpg" class="card-img" alt="...">
		  <div class="card-img-overlay">
		    <a class="card-title">개묘개묘 이벤트에 참여하고 스토어 할인 쿠폰을 받아보세요! </a>
		  </div>
		</div>			
		 -->
		<div class="newProductText productTitle">
			신상품
		</div>			

		<div class="card-deck">
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
	
		<div class="totalProductText productTitle">
			전체상품
		</div>			
	
			<div class="totalProduct">
				<c:forEach var="dto" items="$">
					<div class="ttproduct">
						<div class="totalImg1 img">
							<img alt="" src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
						</div>
						<div class="totalName1 name">
							사료1
						</div>
						<div class="totalPrice1 price">
							2000원
						</div>
					</div>
				</c:forEach>
					<div class="ttproduct">
						<div class="totalImg1 img">
							<img alt="" src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
						</div>
						<div class="totalName1 name">
							장난감1
						</div>
						<div class="totalPrice1 price" >
							2000원
						</div>
					</div>		
					<div class="ttproduct">
						<div class="totalImg1 img">
							<img alt="" src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
						</div>
						<div class="totalName1 name">
							장난감2
						</div>
						<div class="totalPrice1 price" >
							2000원
						</div>
					</div>	
					<div class="ttproduct">
						<div class="totalImg1 img">
							<img alt="" src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
						</div>
						<div class="totalName1 name">
							장난감3
						</div>
						<div class="totalPrice1 price" >
							2000원
						</div>
					</div>	
			</div>	

		<div class="card border-light text-white banner">
		  <img src="${pageContext.request.contextPath}/resources/images/storeMain/donation.jpg" class="card-img" alt="...">
		  <div class="card-img-overlay">
		    <h5 class="card-title">개묘개묘는 동물과 사람이 함께하는 문화를 만듭니다</h5>
		    <p class="card-text"></p>
		    <p class="card-text"></p>
		  </div>
		</div>				
		
	</div>
</div>



