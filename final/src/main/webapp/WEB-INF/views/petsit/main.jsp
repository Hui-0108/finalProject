<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
div {
	font-size: 15px;
	font-family: "Spoqa Han Sans", "Noto Sans KR", sans-serif !important;
	color: black;
}
input {
	width: 475px;
    height: 59px;
	display: flex;
	border: 1.5px solid rgb(223, 227, 234);
	border-radius: 3px;
	box-shadow: rgb(0 0 0 / 3%) 0px 2px 3px 0px;
}
input:focus {
	outline: none;
	border: 1.5px solid rgb(113, 162, 255);
}
.search ul, .search li {
	list-style: none;
	padding-left: 0px;
	padding-right: 15px;
	float: left;
}

.search {
	width: 100%;
	height: 322px;
	padding: 25px;
	border-bottom: 1px solid rgb(231, 233, 235);
	box-shadow: rgb(0 0 0 / 5%) 0px 2px 20px;
}
.searchAddr {
	float: left;
	width: 50%;
	padding: 25px;
	text-align: left;
}
.searchDate {
	float: left;
	width: 50%;
	padding: 25px;
	text-align: left;
}
.searchCondition {
	float: left;
	width: 70%;
	padding: 25px;
	text-align: left;
}
.condition {
	width: 122px;
    height: 55px;
    line-height: 52px;
    display: flex;
	border: 1.5px solid rgb(223, 227, 234);
	border-radius: 28px;
	box-shadow: rgb(0 0 0 / 3%) 0px 2px 3px 0px;
	text-align:center;
	vertical-align:middle;
    justify-content: center;
}
.condition p {
	font-size: 15px;
    font-weight: 500;
    color: rgb(187, 193, 204);
}
.searchButton {
	float: left;
	width: 30%;
	padding: 33px;
	padding-right: 0px;
}
.button {
	width: 250px;
    height: 60px;
    line-height: 60px;
    background: rgb(113, 162, 255);
    margin-top: 25px;
    border-radius: 7px;
    display: flex;
	text-align:center;
	vertical-align:middle;
    justify-content: center;
    box-shadow: rgb(0 0 0 / 3%) 0px 2px 3px 0px;
}

.petList {
	width: 100%;
	height: 450px;
	padding: 25px;
	margin-top: 50px;
	border-bottom: 1px solid rgb(231, 233, 235);
}

.petListTitle {
	width: 70%;
	float: left;
	text-align: left;
	font-size: 20px;
	padding-left: 25px;
}

.petListMore {
	width: 30%;
	float: left;
}

.petListMore div {
	width: 83px;
    height: 38px;
    line-height: 34px;
    display: flex;
	border: 1.5px solid gray;
	border-radius: 6px;
	box-shadow: rgb(0 0 0 / 3%) 0px 2px 3px 0px;
	text-align:center;
	vertical-align:middle;
    justify-content: center;
}

.petListMore div p {
	font-size: 15px;
    font-weight: 500;
    color: rgb(105, 105, 105);
}

.petListItem {
	width: 100%;
	float: left;
	text-align: left;
}
.info {
	width: 25%;
	float: left;
}
.info img {
	width: 245px;
    height: 170px;
    border-radius: 3px;
}

.petListItem ul, .petListItem li {
	list-style: none;
	padding-left: 0px;
}
.grade {
	font-size: 8px;
	color: rgb(113, 162, 255);
}
.grade span {
	font-size: 10px;
	font-weight: 700;
	color: black;
}


</style>

<body>

<!-- 검색영역 -->
<div class="search" align="center">
	<form name="searchForm">
		<div style="width: 1000px;">
			<div class="searchAddr">
				<p><i class="fas fa-paper-plane"></i>&nbsp;<b>어디에 사시나요?</b></p>
				<input type="text" name="addr" placeholder=" 동 이름을 검색하세요(예.논현동)">
			</div>
			<div class="searchDate">
				<p><i class="fas fa-calendar-alt"></i>&nbsp;<b>언제 맡기시나요?</b></p>
				<input type="text" placeholder=" checkin, checkout 두칸으로 만들고 텍스트형식이 아니어야함">	
			</div>
			<div class="searchCondition">
				<p><i class="fas fa-check"></i>&nbsp;<b>원하는 조건을 설정하세요</b></p>
				<ul>
					<li><div class="condition"><p>없음</p></div></li>
					<li><div class="condition"><p>대형견</p></div></li>
					<li><div class="condition"><p>소형견</p></div></li>
					<li><div class="condition"><p>반려묘</p></div></li>
				</ul>
			</div>
			<div class="searchButton">
				<div class="button">
					<p style="color: white;"><i class="fas fa-search"></i>&nbsp;<b>검색하기</b></p>
				</div>
			</div>
		</div>
	</form>
</div>
<!-- 펫시터 리스트 -->
<div class="petList" align="center">
	<div style="width: 1000px;">
		<div class="petListTitle"><p><b>평점이 높은 전문가들을 만나보세요</b></p></div>
		<div class="petListMore">
			<div><p>더보기&nbsp;<i class="fas fa-chevron-right" style="color: gray;"></i></p></div>
		</div>
		<div class="petListItem">
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			
		</div>
	</div>
</div>
<!-- 펫시터 리스트 -->
<div class="petList" align="center">
	<div style="width: 1000px;">
		<div class="petListTitle"><p><b>가까운 펫시터들을 만나보세요</b></p></div>
		<div class="petListMore">
			<div><p>더보기&nbsp;<i class="fas fa-chevron-right" style="color: gray;"></i></p></div>
		</div>
		<div class="petListItem">
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			
		</div>
	</div>
</div>
<!-- 펫시터 리스트 -->
<div class="petList" align="center">
	<div style="width: 1000px;">
		<div class="petListTitle"><p><b>모든 펫시터를 만나보세요</b></p></div>
		<div class="petListMore">
			<div><p>더보기&nbsp;<i class="fas fa-chevron-right" style="color: gray;"></i></p></div>
		</div>
		<div class="petListItem">
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			<div class="info">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/petsit/testdog.jpg"></li>
					<li>서울 서초구 서초동</li>
					<li>믿고맡기세요 경력12년베테</li>
					<li class="grade">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="far fa-star"></i>
						<span>(12)</span>
					</li>					
				</ul>
			</div>
			
		</div>
	</div>
</div>