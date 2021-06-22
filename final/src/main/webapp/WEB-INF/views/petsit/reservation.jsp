<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    


<style>

.petsitReserve .textDate {
	display: inline-block;
	width: 33px;
	height: 33px;
}

.petsitReserve .rList {
	display: flex;
    flex-direction: column;
    border-top: 1px solid rgb(235, 235, 235);
    padding: 38px 0px;
    width: 100%;
}

.petsitReserve .reviewTop {
	display: flex;
    flex-direction: row;
    align-items: center;
}

.petsitReserve .rTContent {
	margin-left: 18px;
}

.petsitReserve .rTContent p:first-child {
	font-family: "Noto Sans KR", sans-serif;
    font-size: 15px;
    letter-spacing: -0.2px;
    line-height: 22px;
    color: rgb(56, 60, 72);
}

.petsitReserve .rTContent p:last-child {
	font-size: 13px;
    line-height: 19px;
    color: rgb(76, 80, 86);
    margin-top: 6px;
}
   
.petsitReserve .rList p:first-child{
	font-size: 17px;
	line-height: 25px;
	color: rgb(57, 60, 71);
	margin-top: 17px;
}
   
.petsitReserve .rlist p:last-child{
	font-size: 15px;
    color: rgb(76, 80, 86);
    margin-top: 18px;
    margin-bottom: 18px;
}   
   
.petsitReserve .reviewPic {
	display: flex;
}
   
.petsitReserve .rpicture {
	margin-right: 10px;
}   
 

</style>

<script type="text/javascript">
//펫시터글 수정시 이전 등록된 사진 삭제 
<c:if test="${sessionScope.member.mId=='admin' || sessionScope.member.mId==dto.mId}">
function deletePetsit() {
	var query = "petNum=${dto.petNum}&${query}";
	var url = "${pageContext.request.contextPath}/petsit/delete?" + query;

    if(confirm("정말 삭제 하시 겠습니까 ? ")) {
  	  location.href=url;
    }
}
</c:if>    

//datepicker의 기본 설정
$(function() {
	$("#datepicker1, #datepicker2").datepicker({
		 showMonthAfterYear: true
		,minDate:"0"
		,maxDate:"+3M"
		,showAnim:"slide"
	});
});

//옵션선택 숨겨두기
$(function() {
	$("#selectBox").hide()
});

//글수정, 삭제 글쓴이 한테만 보이기
$(function() {
	$(".btn").hide()
	
	var uid="${sessionScope.member.mId}";
	var id="${dto.mId}";
	if(uid==id) 
		$(".btn").show()
});

function login() {
	location.href="${pageContext.request.contextPath}/member/login";
}

function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data) {
			fn(data);
		},
		beforeSend:function(jqXHR) {
			jqXHR.setRequestHeader("AJAX", true);
		},
		error:function(jqXHR) {
			if(jqXHR.status===403) {
				login();
				return false;
			}
	    	
			console.log(jqXHR.responseText);
		}
	});
}

$(function(){
	var y, m, d;
	var now = new Date();
	y = now.getFullYear();
	m = now.getMonth() + 1;
	if(m<10) m = "0"+m;
	d = now.getDate();
	if(d<0) d = "0"+d;
	var s = y+""+m+""+d;
	schView(s);
	
	function schView(date) {
		var fn = function(data){
			$(".schedule").html(data);
		};
		
		var url="${pageContext.request.contextPath}/petsitSchedule/sch";
		query="date="+date+"&petsiterId=${dto.mId}";
		
		ajaxFun(url, "get", query, "html", fn);
	}
	
	$("body").on("click", ".btnChange", function(){
		var date = $(this).attr("data-date");
		schView(date);
	});
	
});

$(function(){
	listPage(1);
});

function listPage(page) {
	var url="${pageContext.request.contextPath}/petsit/reviewList";
	var query="pageNo="+page+"&petNum=${dto.petNum}";

	var fn = function(data){
		printReview(data);
	};
	
	ajaxFun(url, "get", query, "json", fn);
}


function printReview(data) {
	var memId="${sessionScope.member.mId}";
	var dataCount = data.dataCount;
	var page = data.pageNo;
	var totalPage = data.total_page;
	
	$("#listReviewBody").attr("data-pageNo", page); //현재 화면상에 보이는 페이지
	$("#listReviewBody").attr("data-totalPage", totalPage); //전체 데이터 갯수
	
	$("#lisReviewFooter").hide(); //숨겨놓음
	
	var out="";
	if(dataCount==0) { //리뷰 데이터가 0개일 때 
		out="<div class='paging'>";
		out+="    <p>아직 등록된 후기가 없습니다.</p>";
		out+="</div>"
		
		$("#listReviewBody").html(out);

		return;
	}
	
	if(page == 1) { //1페이지면 기존 내용 지우고 다시 추가 
		$("#listReviewBody").empty();
	}
	
	for(var idx=0; idx<data.reviewList.length; idx++) {
		var rNum=data.reviewList[idx].rNum;
		var mId=data.reviewList[idx].mId;
		var rTitle=data.reviewList[idx].rTitle;
		var rContent=data.reviewList[idx].rContent;
		var rCreated=data.reviewList[idx].rCreated;
		var rGrade=data.reviewList[idx].rGrade;
		var imagefilename=data.reviewList[idx].imagefilename;
		var img=[];
		if(imagefilename){
			img = imagefilename.split(",");
		}

		
		out+="<div class='rList'>"
		out+="<div class='reviewTop'>";
		out+="    <div class='rImg'style='border: 1px solid black; width:70px; height:70px;'><img></div>";
		out+="    <div class='rTContent'><p>"+mId+"</p><p>"+rCreated+"</p></div>";
		out+="</div>";
		
		out+="<p>후기 평점:"+rGrade+"</p>";
		out+="<p>"+rTitle+"</p>";
		out+="<p>"+rContent+"</p>";
		out+="<div calss='reviewPic' style='display:flex;'>"
		if(img.length>0){
			for(var i=0; i<img.length; i++) {
				var s="${pageContext.request.contextPath}/upload/reviewImages/"+img[i];		
				
				out+="<div class='rpicture'><img src='"+s+"' width='100px;' height='100px';></div>";
			}
			
		}
		out+="</div>"
	}
	$("#listReviewBody").append(out); //append로 해야 기존 내용 지워지지 x
	
	if(page<totalPage) { //데이터가 더 존재하는 경우
		$("#listReviewFooter").show(); //데이터를 보여줌
	}
	
}

//리뷰 더보기 
$(function(){
	$(".review-list .more").click(function(){
		var page = $("#listReviewBody").attr("data-pageNo");
		var totalPage = $("#listReviewBody").attr("data-totalPage");

		if(page<totalPage) {
			page++;	
			listPage(page);
		}
	});
});



</script>

<div class="petsitReserve">
<!-- 사진 슬라이드 영역-->
<div style="width:1300px; margin-left: 140px;" align="center" >	
	<div class="slide-body" align="center">
		<div id="carouselExampleIndicators" class="carousel slide picture" data-ride="carousel">
			<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
  		<div class="carousel-inner">
  		<c:forEach var="vo" items="${listFile}" varStatus="status">
			<div class="carousel-item ${status.index==0?'active':'' }">
            	<img src="${pageContext.request.contextPath}/upload/petsit/${vo.petImg}" class="d-block w-100">
          	</div>
		</c:forEach>
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
<div style="width: 1100px; margin: auto;">
	<div class="body-left">
		<div class="profile">
			<div class="profile-p">
			</div>
			<div class="frofile-t">
				<h6>${dto.petAddr} 펫시터 ${dto.mId}님</h6>
				<h4>${dto.petTitle}</h4>
				<div class="fofile-c">
				<p><c:if test="${dto.petYN ne 0}">#반려동물 있어요&nbsp; </c:if></p>
				<p><c:if test="${dto.petYard ne 0}">#마당 보유&nbsp; </c:if></p>
				<p><c:if test="${dto.petLarge ne 0}">#대형견 가능&nbsp; </c:if></p>								
				<p><c:if test="${dto.petWalk ne 0}">#산책로 있어요&nbsp; </c:if></p>			
				<p><c:if test="${dto.petLiving eq 1}">#아파트&nbsp; </c:if></p>
				<p><c:if test="${dto.petLiving eq 2}">#단독주택&nbsp; </c:if></p>
				<p><c:if test="${dto.petLiving eq 3}">#빌라&nbsp; </c:if></p>
				<p><c:if test="${dto.petLiving eq 4}">#오피스텔&nbsp; </c:if></p>
				<p><c:if test="${dto.petFamily eq 1}">#2인 이하 가구&nbsp; </c:if></p>
				<p><c:if test="${dto.petFamily eq 2}">#3인 가구&nbsp; </c:if></p>
				<p><c:if test="${dto.petFamily eq 3}">#4인 가구&nbsp; </c:if></p>
				<p><c:if test="${dto.petFamily eq 4}">#5인 이상 가구&nbsp; </c:if></p>
				<p><c:if test="${dto.petChild eq 2}">#미취학 아동 자녀 있어요&nbsp; </c:if></p>
				<p><c:if test="${dto.petChild eq 3}">#초등생 자녀 있어요&nbsp; </c:if></p>	
				</div>
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
				<img src="${pageContext.request.contextPath}/resources/images/petsit/certif.PNG">
				</div>
				<div class="certf-de">
					<p class="certif-title">펫시터 전문가 교육</p>
					<p>(사) K.S.D 문화교육원</p>
					<p class="certif-date"> ${dto.petCertif} 에 취득하였습니다</p>
				</div>
			</div>
		</div>
		<div class="review-list" id="listReview" style="margin-top: 50px;">
			<div class="reviewT">
				<h3>펫시터 후기</h3>
				<div class="star">
	            <i class="fas fa-star"></i>
	            <i class="fas fa-star"></i>
	            <i class="fas fa-star"></i>
	            <i class="fas fa-star"></i>
	            <i class="fas fa-star"></i>
	         	</div>	         
         	</div>
			<div id="listReviewBody" data-pageNo="0" data-totalPage="0"></div>
			<div id="listReviewFooter">
				<span class="more">후기 더보기</span>
			</div>
		</div>
	</div>
	<div class="body-right" align="right">
		<div class="reverve-detail">
			<div class="reserve-date">
				<p><b>언제 펫시터가 필요한가요?</b></p>
				<div class="dateBar">
					<div class="checkinCal">
						<button class="dateButton"><i class="fas fa-calendar-alt"></i></button>
					</div>
					<div>
						<input class="checkDate" type="text" id="datepicker1" placeholder=" 체크인 날짜">	
					</div>
					<div class="pointR">
						<i class="fas fa-arrow-right"></i>
					</div>
					<div>
						<input class="checkDate" type="text" id="datepicker2" placeholder=" 체크아웃 날짜">	
					</div>
				</div>
			</div>		
			<p class="pet-p"><b>맡기시는 반려동물</b></p>
			<button type="button" class="pet-button" onclick="$('.selectB').slideDown()" >
				<p>반려동물 선택</p><i class="fas fa-chevron-down"></i>
			</button>
				
			<div class="selectB" id="selectBox">
				<div class="boxLine">
					<div class="lineL">
						<p>소형견</p>
						<p>7kg 미만</p>
					</div>
					<div class="lineR">
						<div class="pmBtn">
						-
						</div>
						<p>0</p>
						<div class="pmBtn">
						+
						</div>
					</div>
				</div>
				<div class="boxLine sth">
					<div class="lineL">
						<p>중형견</p>
						<p>7-14.9kg 미만</p>
					</div>
					<div class="lineR">
						<div class="pmBtn">
						-
						</div>
						<p>0</p>
						<div class="pmBtn">
						+
						</div>
					</div>
				</div>
				<div class="boxLine sth">
					<div class="lineL">
						<p>소형견</p>
						<p>15kg 이상</p>
					</div>
					<div class="lineR">
						<div class="pmBtn">
						-
						</div>
						<p>0</p>
						<div class="pmBtn">
						+
						</div>
					</div>
				</div>
				<div class="bFooter">
					<p>최대 4마리 까지만 선택 가능합니다.</p>
					 <button type="button" onclick="$('.selectB').slideUp(400)"><p>닫기</p></button>
				</div>
			</div>	
			<div class="reserve-time">
				<p> 체크인 가능 시간은 오전 9:00 이후 이며,</p>
				<p> 체크아웃 가능 시간은 오후  21:00 까지 입니다.</p>
				<p> 정확한 시간은 펫시터와 상의하시기 바랍니다.</p>
			</div>	
			<div class="reserve-send">
				<p>예약요청</p>
			</div>		
		</div>
		<div class="price">
			<div class="price-title">
				<p>이용요금</p>			
			</div>		
			<div class="pet-type">
				<div class="type-L">
					<p>소형견</p>
					<p>7kg 미만</p>
				</div>
				<div class="type-R">
					<p>4,0000원</p>
				</div>
			</div>
			<div class="pet-type">
				<div class="type-L">
					<p style="font-size: 16px;">중형견</p>
					<p>15kg 미만</p>
				</div>
				<div class="type-R">
					<p>5,0000원</p>
				</div>
			</div>
			<div class="pet-type">
				<div class="type-L">
					<p style="font-size: 18px;">대형견</p>
					<p>15kg 이상</p>
				</div>
				<div class="type-R">
					<p>6,0000원</p>
				</div>
			</div>
			<div class="bar" ></div>
			<div class="extra" style="margin: 0px;">
				<p>반려동물 추가비</p>
				<div class="secondline"><p>기본요금에서 <span>10,000원</span> 할인</p></div>
			</div>
			<div class="extra">
				<p>공휴일 할증비</p>
				<div class="secondline"><p>기본요금에서 <span>10,000원</span> 할증</p></div>
			</div>
		</div>
		<div class="schedule"></div>
		<div class="location">
			<div class="lTop">
				<div class="topContent">
					<p>펫시터님 위치</p>
					<div class="ContentR">
						<p>${dto.petAddr}</p>
						<p>정확한 주소는 예약 완료후 확인 가능합니다.</p>
					</div>
				</div>
			</div>
			<div class="lBottom" id="map">
			</div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=615fa488f5c1cadec65f32fb7cdad8bc&libraries=services"></script>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=615fa488f5c1cadec65f32fb7cdad8bc"></script>
			<script>	
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    				mapOption = { center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        						  level: 5 // 지도의 확대 레벨
    				};  
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
				var coords=""; 
				
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch('${dto.mAddr1}', function(result, status) {
				    // 정상적으로 검색이 완료됐으면 
				     if (status === kakao.maps.services.Status.OK) {
						 coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다				     		        				  
				        map.setCenter(coords);
				      	// 지도에 표시할 원을 생성합니다

				        var circle = new kakao.maps.Circle({
						    center : new kakao.maps.LatLng(coords.Ma , coords.La),  // 원의 중심좌표 입니다 
						    radius: 200, // 미터 단위의 원의 반지름입니다 
						    strokeWeight: 3, // 선의 두께입니다 
						    strokeColor: '#75B8FA', // 선의 색깔입니다
						    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
						    strokeStyle: 'solid', // 선의 스타일 입니다
						    fillColor: '#CFE7FF', // 채우기 색깔입니다
						    fillOpacity: 0.7  // 채우기 불투명도 입니다   
						}); 
						// 지도에 원을 표시합니다 
						circle.setMap(map);		        
    				} 
				}); 			
				//map.setDraggable(false); //드래그 불가
				//map.setZoomable(false); //확대,축소 불가
			</script>
		</div>
		<div>
			<c:choose>
				<c:when test="${sessionScope.member.mId==dto.mId}">
			    	<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/petsit/update?petNum=${dto.petNum}&page=${page}';">수정</button>
			    </c:when>
			    <c:otherwise>
			    	<button type="button" class="btn" disabled="disabled">수정</button>
			    </c:otherwise>
			 </c:choose>
			    	
			 <c:choose>
			    <c:when test="${sessionScope.member.mId==dto.mId || sessionScope.member.mId=='admin'}">
			    	<button type="button" class="btn" onclick="deletePetsit();">삭제</button>
			    </c:when>
			    <c:otherwise>
			    	<button type="button" class="btn" disabled="disabled">삭제</button>
			    </c:otherwise>
			</c:choose>
		</div>
	</div>	
</div>
</div>


</div>
