<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<div class="petsitReserve">
<div id="carouselExampleIndicators" class="carousel slide picture" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="${pageContext.request.contextPath}/resources/images/petsit/home1.jpg" class="d-block w-100" alt="집1">
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

<div class="body-main">
	<div style="width: 1100px;">
	<div class="body-left">
		<div class="profile">
				<div class="profile-p"></div>
			<div class="frofile-t">
				<h4>서울 서초구 방배동 펫시터 땡땡님</h4>
				<p>차분하고 세심하게 돌봐드려요</p>
				<span>선택1</span>&nbsp;&nbsp;<span>선택2</span>&nbsp;&nbsp;<span>선택3</span>&nbsp;&nbsp;<span>선택4</span>
			</div>
		</div>
		<div class="best">
			<div>
				<i class="fas fa-paper-plane"></i><span>땡시터님은 우수 펫시터 입니다</span>
			</div>
			<p>프로 펫시터는 다수의 예약 진행 경험과 함께, 높은 고객 만족도를 받은 펫시터입니다</p>
		</div>
		<div class="intro">
			<h5>땡시터님을 소개합니다</h5>
			<p class="intro-d">
			18년 동안 반려견을 정성껏 돌보며, 이별한 이후로 너무나 힘든 시간을 보냈습니다. 
			아직은 새로운 식구를 맞이할 마음의 준비가 안되어 강아지를 기르지는 못하지만, 
			강아지를 맡길 데가 없어 고민하시는 분들께 도움을 드리고 싶어 펫시팅을 시작하게 되었습니다. 
			생명을 다루는 일은 항상 신중해야 한다고 생각합니다. 
			저희 아이도 나이가 들면서 병원에 가는 일이 많아졌었고 그렇기에 관리에 정말 많은 신경을 썼었습니다. 
			물론 아이가 오랫동안 아팠었기에 강아지의 몸 상태를 꼼꼼하게 파악하고 여러 상황에 침착하게 대처할 수 있지만, 
			강아지의 안전을 위해서는 맡게 되는 강아지에 대한 최대한 많은 정보를 아는 것이 중요하다고 생각합니다. 
			그래야 혹시 모를 사고를 방지할 수 있거든요. 저에게 맡겨주신다면, 
			강아지들과 즐거운 시간을 보내고 무엇보다 사랑으로 정성껏, 안전하게 돌보겠습니다.
			</p>
		</div>
		<div class="certif">
			<h5>자격증 및 수료증</h5>
			<div class="certif-d">
				<div class="certf-dp">
				</div>
				<div class="certf-de">
					<p class="certif-title">펫시터 전문가 교육</p>
					<p>(사) K.S.D 문화교육원</p>
					<p class="certif-date">2018년 3월 20일에 취득하였습니다</p>
				</div>
			</div>
		</div>
		<div class="review">
			<div>
				<h4>펫시터 후기 10개</h4>
				<div class="star">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
				</div>
			</div>
			<div>
				<div>
					이미지<img>
				</div>
				<div>
					이미지<img>
				</div>
				<div>
					이미지<img>
				</div>
				<div>
					이미지<img>
				</div>
			</div>
			<div>
			</div>
		</div>
		<div>
			<div>
				<div>
					<img alt="" src="">
					<div>
						<p>김회원</p>
						<p>작성날짜</p>
					</div>
					<p>후기내용</p>
				</div>
			</div>
		</div>
	</div>
	<div class="body-right">
	</div>
</div>	
</div>
</div>
