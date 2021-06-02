<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
.carousel-item .imghome{
	margin: 0;
	padding: 0;
	width: 100vw;
	height: 100vh;
	opacity: 0.7;
}

.carousel-caption .d-none .d-md-block {
	line-height: 3;
}

.main-img {
	align: center;
	width: 100px;
	height: 100px;
}

.section {
	width: 100vw;
	height: 100vh;
}

.cover {
    width: 100%;
    height: 100%;
    opacity: 0.9;
}
.cover1 {
    background-image: linear-gradient(241deg, #f77706, #f5c45a);
}

.cover2 {
    background-color: #79d5ba;
}

.cover3 {
    background-color: #f2dfc0
}

.static-head {
	font-weight: 700;
    font-size: 25px;
    line-height: 2;
    position: relative;
    padding-bottom: 20px;
    margin-bottom: 30px;
    text-align: center;
    color: #333;
}

.donation-head {
	font-weight: 700;
    font-size: 25px;
    line-height: 2;
    position: relative;
    padding-bottom: 20px;
    margin-bottom: 30px;
    text-align: center;
    color: #333;
}

.petsit-head {
	font-weight: 700;
    font-size: 25px;
    line-height: 2;
    position: relative;
    padding-bottom: 20px;
    margin-bottom: 30px;
    text-align: center;
    color: #333;
}

.store-head {
	font-weight: 700;
    font-size: 25px;
    line-height: 2;
    position: relative;
    padding-bottom: 20px;
    margin-bottom: 30px;
    text-align: center;
    color: #333;
}

.btn {
    text-transform: uppercase;
    padding: 10px 20px;
    margin-bottom: 10px;
    text-align: center;
    border: 2px solid #fff;
    font-weight: 500;
    font-size: 20px;
    line-height: 100%;
    border-radius: 2rem;
}

.img-content {
	font-size: 17px;
	font-weight: 400;
}

.card {
	display: inline-block;
	float: left;
	margin: 10px;
	padding: 10px;
	width: 15rem;
}

.card-title {
	font-size: 18px;
	font-weight: 700;
}


.container {
	text-align: center;
}

.store-content {
	font-weight: 700;
    font-size: 25px;
    height: 50px;
}

.store-content > h2 {
	line-height: 50px;
}

</style>

<script type="text/javascript">
var scrollEvent = false;
var count = 0;

$("html").on('mousewheel', function(c) {
	c.preventDefault();
	var m = c.originalEvent.wheelDelta;
	var sb = $(".window1").height();
	
	if(m > 1 && scrollEvent == false && count >= 1) {
		console.log(count);
		scrollEvent = true;
		count--;
		 $("html").stop().animate({scrollTop:sb*count},
			{duration:300, complete: function () {
				scrollEvent = false;}
			});
	} else if (m < 1 && scrollEvent == false && count < 4) {
		console.log(count);
		scrollEvent = true;
		count++;
		 $("html").stop().animate({scrollTop:sb*count},
			{duration:300, complete: function () {
				scrollEvent = false;}
			});
	}
});

</script>

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
			        <h2>Adopt Animals Adopt Family</h2>
			        <p class="img-content">유기동물들은 여러분들의 도움이 필요해요</p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img class="imghome" src="${pageContext.request.contextPath}/resources/images/home/home_ani2.jpg" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <a href="#" class="btn btn-outline-light">Donation</a>
			        <p class="img-content">여러분의 후원금은 유기동물의 처우개선을 위해 사용됩니다</p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img class="imghome" src="${pageContext.request.contextPath}/resources/images/home/home_ani3.png" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <a href="#" class="btn btn-outline-light">Pet Sitter</a>
			        <p class="img-content">검증된 펫시터들을 만나보세요</p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img class="imghome" src="${pageContext.request.contextPath}/resources/images/home/home_ani4.jpg" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <a href="#" class="btn btn-outline-light">Store</a>
			        <p class="img-content">스토어 수익금의 50%는 유기동물 보호단체에 기부됩니다</p>
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
		<div >
		
		</div>
		<h2 class="static-head">
			유기동물 통계
		</h2> 
	</div>
</div>
	
<div class="section window3">
	<div class="cover cover2">
		<div >
		
		</div>
		<h2 class="donation-head">
			후원은 유기동물에게 큰 도움이 됩니다
		</h2> 
	</div>
</div>

<div class="section window4">
	<div class="cover cover3">
		<h2 class="petsit-head">
			검증된 펫시터들을 만나보세요
		</h2> 
		<div class="container mainpetsit">
			<div class="main-button petsit-button">
				<button type="button" class="btn btn-light btnstore">펫시터 예약</button>
			</div>
			<div class="card">
			  <img class="main-img imgpetsit" src="${pageContext.request.contextPath}/resources/images/home/main_petsit.jfif" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">후기제목</h5>
			    <p class="card-text">후기내용</p>
			  </div>
			</div>
			<div class="card">
			  <img class="main-img imgpetsit" src="${pageContext.request.contextPath}/resources/images/home/main_petsit.jfif" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">후기제목</h5>
			    <p class="card-text">후기내용</p>
			  </div>
			</div>
			<div class="card">
			  <img class="main-img imgpetsit" src="${pageContext.request.contextPath}/resources/images/home/main_petsit.jfif" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">후기제목</h5>
			    <p class="card-text">후기내용</p>
			  </div>
			</div>
			<div class="card">
			  <img class="main-img imgpetsit" src="${pageContext.request.contextPath}/resources/images/home/main_petsit.jfif" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">후기제목</h5>
			    <p class="card-text">후기내용</p>
			  </div>
			</div>
		</div>
	</div>
</div>

<div class="section window5">
	<div class="cover cover3">
		<h2 class="store-head">
			유기동물과 함께 나누는 개묘개묘 스토어
		</h2> 
		<div class="container mainstore">
			<div class="store-button">
				<button type="button" class="btn btn-light btnstore">스토어 바로가기</button>
			</div>
			<div class="store-content">
				<h2>인기상품을 만나보세요</h2>
			</div>
		</div>
		<div class="container mainstore">
			<div class="card">
			  <img class="main-img imgproduct" src="${pageContext.request.contextPath}/resources/images/home/main_product.jfif" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">상품이름</h5>
			    <p class="card-text">상품설명</p>
			    <a href="#" class="btn btn-primary">상품 바로가기</a>
			  </div>
			</div>
			<div class="card">
			  <img class="main-img imgproduct" src="${pageContext.request.contextPath}/resources/images/home/main_product.jfif" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">상품이름</h5>
			    <p class="card-text">상품설명</p>
			    <a href="#" class="btn btn-primary">상품 바로가기</a>
			  </div>
			</div>
			<div class="card">
			  <img class="main-img imgproduct" src="${pageContext.request.contextPath}/resources/images/home/main_product.jfif" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">상품이름</h5>
			    <p class="card-text">상품설명</p>
			    <a href="#" class="btn btn-primary">상품 바로가기</a>
			  </div>
			</div>
			<div class="card">
			  <img class="main-img imgproduct" src="${pageContext.request.contextPath}/resources/images/home/main_product.jfif" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">상품이름</h5>
			    <p class="card-text">상품설명</p>
			    <a href="#" class="btn btn-primary">상품 바로가기</a>
			  </div>
			</div>
		</div>
	</div>
</div>
