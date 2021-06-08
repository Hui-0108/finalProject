<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<div class="petsitReserve">
<!-- 사진 슬라이드 영역-->
<div style="width:1300px" align="center">	
	<div class="slide-body" >
		<div id="carouselExampleIndicators" class="carousel slide picture" data-ride="carousel">
			<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
  		<div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="${pageContext.request.contextPath}/resources/images/petsit/home1.jpg" class="d-block w-100" alt="집2">
		    </div>
		    <div class="carousel-item">
		      <img src="${pageContext.request.contextPath}/resources/images/petsit/home2.jpg" class="d-block w-100" alt="집2">
		    </div>
		    <div class="carousel-item">
		      <img src="${pageContext.request.contextPath}/resources/images/petsit/home3.jpg" class="d-block w-100" alt="집3">
		    </div>
  		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		</div>
	</div>
</div>
<!-- 실제 예약 영역-->
<div class="body-main">
<div style="width: 1300px;">
	<div class="body-left">
		<div class="profile">
			<div class="profile-p">
			<img src="${pageContext.request.contextPath}/uploads/profileImages/${dto.mProfileImg}">
			</div>
			<div class="frofile-t">
				<h4><span>서울 서초구 방배동</span>펫시터${dto.mId}님</h4>
				<p>${dto.petTitle}</p>
				<span>선택1</span>&nbsp;&nbsp;<span>선택2</span>&nbsp;&nbsp;<span>선택3</span>&nbsp;&nbsp;<span>선택4</span>
			</div>
		</div>
		<div class="best">
			<div>
				<i class="fas fa-medal"></i>&nbsp;&nbsp;<span>땡시터님은 우수 펫시터 입니다</span>
			</div>
			<p>프로 펫시터는 다수의 예약 진행 경험과 함께, 높은 고객 만족도를 받은 펫시터입니다</p>
		</div>
		<div class="intro">
			<h5><span>${dto.mId}</span>님을 소개합니다</h5>
			<p class="intro-d">
			${dto.petContent}
			</p>
		</div>
		<div class="certif">
			<h5>자격증 및 수료증</h5>
			<div class="certif-d">
				<div class="certf-dp">
				<img src="${pageContext.request.contextPath}/resources/images/petsit/certif.png">
				</div>
				<div class="certf-de">
					<p class="certif-title">펫시터 전문가 교육</p>
					<p>(사) K.S.D 문화교육원</p>
					<p class="certif-date">${dto.petCertif}에 취득하였습니다</p>
				</div>
			</div>
		</div>
		<div class="review">
		<div class="review-title">
			<h4>펫시터 후기 10개</h4>
			<div class="star">
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
			</div>
		</div>
		<div class="review-pictureSet">
			<div class="review-psEach">
				이미지<img>
			</div >
			<div class="review-psEach">
				이미지<img>
			</div>
			<div class="review-psEach">
				이미지<img>
			</div>
			<div  class="review-psEach">
				이미지<img>
			</div>
		</div>
		<div class="review-content">
		<div class="review-writer">
			<div class="review-writerP">
				<img alt="" src="">
			</div>	
			<div class="review-writerI">
				<p>김회원</p>
				<p>작성날짜</p>
			</div>
		</div>	
		<p style="margin-top: 40px;">
		산책도 하루에 두번 시켜주시고 많이 예뻐해주신 덕에 공주가 넘 잘 지내고 왔네요! 
		저희 집에서보다 훨씬 잘 있다 온 것 같아요 ㅎㅎ
		원래 집에서는 밥도 잘 안먹었는데 펫시터님 댁 다녀와서는 밥도 잘먹고 행동도 교정되어 왔어요 너무 신기하네요 :)♥ 
		공주 예뻐해주셔서 감사합니다.
		</p>
		<div class="review-picture">
			<div class="review-pEach">
				<img>
			</div>
			<div class="review-pEach">
				<img>
			</div>
			<div class="review-pEach">
				<img>
			</div>
		</div>
		</div>
		</div>
	</div>
	<div class="body-right">
		<div class="reverve-detail">
			<div class="reserve-date">
				<p><i class="fas fa-calendar-alt"></i>&nbsp;<b>언제 펫시터가 필요한가요?</b></p>
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
			<div class="reserve-time">
				<div class="time-checkin">
					<p><b>체크인 시간</b></p>
					<button>
						<p>시간선택</p>
					</button>
				</div>
				<div class="time-checkout">
					<p><b>체크아웃 시간</b></p>
					<button>
						<p>시간선택</p>
					</button>
				</div>
			</div>			
			<p class="pet-p"><b>맡기시는 반려동물</b></p>
			<button class="pet-button">
				<p>반려동물 선택</p><i class="fas fa-chevron-down"></i>
			</button>
			<div class="reserve-send">
				<p>예약요청</p>
			</div>
		</div>
		<div class="price">
			<div class="price-title">
				<p>이용요금</p>
				<p>1박 케어</p>
				<p>|</p>
				<p style="font-size: 13px;">데이 케어</p>
				<p><i class="fas fa-question-circle"></i><p>
			</div>		
			<div class="pet-type">
				<div class="type-L">
					<p>소형견</p>
					<p>7kg 미만</p>
				</div>
				<div class="type-R">
					<p>4,0000원</p>
					<p>3,0000원</p>
				</div>
			</div>
			<div class="pet-type">
				<div class="type-L">
					<p style="font-size: 16px;">중형견</p>
					<p>15kg 미만</p>
				</div>
				<div class="type-R">
					<p>5,0000원</p>
					<p>4,0000원</p>
				</div>
			</div>
			<div class="pet-type">
				<div class="type-L">
					<p style="font-size: 18px;">대형견</p>
					<p>15kg 이상</p>
				</div>
				<div class="type-R">
					<p>6,0000원</p>
					<p>5,0000원</p>
				</div>
			</div>
			<div class="bar" ></div>
			<div class="extra" style="margin: 0px;">
				<p>반려동물 추가비</p>
				<div class="secondline"><p>기본요금에서 <span>10,000원</span> 할인</p></div>
			</div>
			<div class="extra">
				<p>명절 할증비</p>
				<div class="secondline"><p>기본요금에서 <span>10,000원</span> 할증</p></div>
			</div>
			<div class="extra">
				<p>공휴일·성수기 할증비</p>
				<div class="secondline"><p>기본요금에서 <span>10,000원</span> 할증</p></div>
			</div>
		</div>
		<div class="schedule">
		</div>
		<div class="lacation">
		</div>
	
	
	</div>	
</div>
</div>
</div>
