<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript">



</script>

<div class="petsitList">
	<!-- 검색영역 -->
	<div class="search" align="center">
		<form name="searchForm">
			<div style="width: 1300px;">
				<div class="searchAddr">
					<p><i class="fas fa-home"></i>&nbsp;<b>어디에 사시나요?</b></p>
					<input class="searchDong" type="text" name="addr" placeholder=" 동 이름을 검색하세요(예.논현동)">
				</div>
				<div class="reserve-detail">
					<p><i class="fas fa-paw"></i>&nbsp;<b>언제 펫시터가 필요한가요?</b></p>
					<div class="dateBar">
						<div class="checkinCal">
						<button class="dateButton"><i class="fas fa-calendar-alt"></i></button>
						</div>
						<div>
							<input class="checkDate" type="text" placeholder=" 체크인 날짜">	
						</div>
						<div class="pointR">
							<i class="fas fa-arrow-right"></i>
						</div>
						<div>
							<input class="checkDate" type="text" placeholder=" 체크아웃 날짜">	
						</div>
					</div>
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
	<div class="list" align="center">
		<div style="width: 1300px;">	
			<div class="list-body">
				<div class="list-title">
					<p>해당 지역의 펫시터는 평균 만족도 99.8%의 3167개의 후기를 가지고 있습니다</p>
					<div style="display: flex;">
						<div class="list-titleR">
							<p>가까운순</p>
							<p>인기순</p>
							<p>가격순</p>
							<p>아이콘</p>
						</div>
					</div>
				</div>
				<c:forEach var="dto" items="${list}"> <!--var:조건의 결과를 저장할 변수 이름 items:리스트가 받아올 배열이름 -->
				<div class="listbody">
					<div class="listEach">
						<div class="photo">
							<img src="${pageContext.request.contextPath}/upload/petsit/${dto.petImg}">
						</div>
						<a href="${reservationUrl}&petNum=${dto.petNum}">
							<div class="listInfo-title">
								<p>${dto.petAddr}</p>
								<p>${dto.petTitle }</p>
							</div>
							<div class="listInfo-main">
								<div class="main-L">
									<p>
									<c:if test="${dto.petYN ne 0}">#반려동물 있어요&nbsp; </c:if>
									<c:if test="${dto.petYard ne 0}">#마당 보유&nbsp; </c:if>
									<c:if test="${dto.petLarge ne 0}">#대형견 가능&nbsp; </c:if>								
									<c:if test="${dto.petWalk ne 0}">#산책로 있어요&nbsp; </c:if>			
									<c:if test="${dto.petLiving eq 1}">#아파트&nbsp; </c:if>
									<c:if test="${dto.petLiving eq 2}">#단독주택&nbsp; </c:if>
									<c:if test="${dto.petLiving eq 3}">#빌라&nbsp; </c:if>
									<c:if test="${dto.petLiving eq 4}">#오피스텔&nbsp; </c:if>
									<c:if test="${dto.petFamily eq 1}">#2인 이하 가구&nbsp; </c:if>
									<c:if test="${dto.petFamily eq 2}">#3인 가구&nbsp; </c:if>
									<c:if test="${dto.petFamily eq 3}">#4인 가구&nbsp; </c:if>
									<c:if test="${dto.petFamily eq 4}">#5인 이상 가구&nbsp; </c:if>
									<c:if test="${dto.petChild eq 2}">#미취학 아동 자녀 있어요&nbsp; </c:if>
									<c:if test="${dto.petChild eq 3}">#초등생 자녀 있어요&nbsp; </c:if>			
									</p>
									<div class="left-bottom">
										<div class="list-star">
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
										</div>
										<p>
										후기 8개
										</p>
									</div>
								</div>
								<div class="main-R">
								</div>
							</div>
						</a>
					</div>
				</div>
				</c:forEach>
			</div>	
		</div>
	</div>
</div>