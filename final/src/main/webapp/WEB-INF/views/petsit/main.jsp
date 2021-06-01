<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="petsitMain">
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
</div>