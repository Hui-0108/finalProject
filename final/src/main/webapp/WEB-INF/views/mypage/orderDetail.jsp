<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
@font-face {
    font-family: 'Cafe24Ssurround';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.orderDetail {
	margin-top: 50px;
	font-size: 14px;
	width: 100%;
	padding: 0px;
}

.orderDetail .body-container {
	width: 1300px;
}

.orderDetail .body-title h3 {
    font-family: Cafe24Ssurround;
    text-align: left;
}

.orderDetail .body-title p {
    text-align: left;
}

.orderDetail .body-main {
	width: 100%;
	height: 1000px;
}

.orderDetail .body-itmeList table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0px;
	text-align: center;
}
.orderDetail .body-itmeList table tr:nth-child(1) td {
	height: 40px;
	border-top: 1px solid;
	border-bottom: 1px solid;
}

.orderDetail .body-itmeList table tr:nth-child(1) label {
	margin: 0px 0px 0px 0px;
}

.orderDetail .body-itmeList img {
	width: 80px;
	height: 80px;
}

.orderDetail .body-itmeList .items {
	height: 100px;
	padding: 10px;
}

.orderDetail .body-itmeList .items p {
	margin: 0px 0px 0px 0px;
}

.orderDetail .body-itmeList .items:hover {
	background: #eee;
}

.orderDetail .modal {
 	display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
	z-index: 5; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0,0,0); /* Fallback color */
	background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

.orderDetail .modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 30px;
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
	text-align: left;
}

.orderDetail .modal-content table {
	width: 100%;
}

.orderDetail label i {
	color: #007bff;
}


.float-left {
	float: left;
}

.clear {
	clear: both;
}

.orderDetail .detail {
	width: 50%;
}

.orderDetail .detail-title {
	font-size: 16px;
	text-align: left;
}
.orderDetail .detail table {
	border-collapse: collapse;
	border-spacing: 0;
	text-align: left;
	width: 100%;
}
.orderDetail .detail table p, .orderDetail .detail table label {
	margin: 0;
	padding: 0;
}

.orderDetail .detail table tr:nth-child(1) td {
	border-top: 1px solid;
}
.orderDetail .detail table tr td {
	height: 40px;
	border-bottom: 1px solid #f1f1f1;
}

.orderDetail ul {
	color: #777777;
	text-align: left;
}



</style>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/js/jquery.form.js"></script>
<script>
$(function() {
	
	var f = document.reviewForm;
	
	var orderNumTemp;
	
	// 후기 작성 버튼 클릭
	$("body").on("click", "#writeReview", function(e) {
		// 선택한 리스트에있는 값 중에서 주문번호를 form에 셋팅하는 작업
		orderNumTemp = $(this).closest(".items").find(".findOrderNum").text();
		
		$("#orderNum").attr("value", orderNumTemp);
		
		
		$(".modal").fadeIn();
	});
	
	// 모달창 닫기
	window.onclick = function(e) {
		if (e.target == document.getElementById('modal')) {
			document.getElementById('modal').style.display = "none";
		}
    }
	
	// 후기작성 완료
	$("body").on("click", "#sendRivew", function(e) {
		
		//json 형식으로 데이터 set
		var formData = new FormData($('#reviewForm')[0]);
		
		
		// ajax
		$.ajax({
			type:"POST",
			processData: false,
			contentType: false,
			data: formData,
			url:"${pageContext.request.contextPath}/mypage/review",
			success:function(data){
				if(data.state == true) {
					alert("리뷰 작성 완료 !!! 감사합니다^^");
					location.reload();
				}
				if(data.state == false) {
					alert("이미지 파일은 5개 이하만 가능합니다.");
				}
			},
			error:function(e){
				alert("이미지 파일 용량 초과입니다.");
			}
		});
		
	});
});
</script>

<div class="orderDetail" align="center">
	<div class="body-container">
		<div class="body-title">
			<h3> 주문 상세 내역 </h3>
			<p>주문번호 <b> ${dto.orderNum} </b> &nbsp;&nbsp;&nbsp; 주문일자 <b> ${dto.rDate} </b> </p>
		</div>
		<div class="body-main">
			<div class="body-itmeList">
				<table>
					<tr>
						<td width="35%" colspan="2">
							<label> 상품정보 </label>
						</td>
						
						<td width="15%">
							<label> 쿠폰할인 </label>
						</td>
						
						<td width="15%">
							<label> 마일리지 </label>
						</td>
						
						<td width="15%">
							<label> 주문금액(수량) </label>
						</td>
						
						<td width="20%" colspan="2">
							<label> 주문 상태 </label>
						</td>
					</tr>
					
					<tr class="items">
						<td width="10%">
							<img src="#">
						</td>
						<td style="text-align: left;">
							<p><b> ${dto.petTitle} </b></p>
							<p style="color: #777777;"> ${dto.checkIn} - ${dto.checkOut} </p>
						</td>
						
						<td>
							<p> ${dto.rDate} </p>
						</td>
						
						<td>
							<p class="findOrderNum"> ${dto.orderNum} </p>
						</td>
						
						<td>
							<p> ${dto.finalPrice}원 </p>
						</td>
						
						<td>
							<c:choose>
							 <c:when test="${dto.orderState == 0}">
							 	<p> 결제대기 </p>
							 </c:when>
							 <c:when test="${dto.orderState == 1}">
							 	<p> 결제완료 </p>
							 </c:when>
							</c:choose>
						</td>
						<td>
						
						
						</td>
					</tr>
				</table>
			</div>
			
			<div>
				<ul>
					<li> 스토어 구매 시 동일한 주문번호라도 2개 이상의 브랜드에서 주문하신 경우 출고지 주소가 달라 각각 출고됩니다. (택배 박스를 2개 이상 수령 가능) </li>
					<li> 출고 완료 직후 교환 / 환불 요청을 하더라도 상품을 수령하신 후 택배 업체를 통해 보내주셔야 처리 가능합니다. </li>
					<li> 쿠폰 및 마일리지는 스토어 이용 시에만 사용 가능합니다.  </li>
					<li> 자세한 내용은 FAQ를 확인하여 주시기 바랍니다. </li>
				</ul>
			</div>
			
			<div class = "body-detail">
				<div class="detail float-left">
					<div class="detail-title">
						<p> 배송지 정보 </p>
					</div>
					<table class="float-left">
						<tr>
							<td width="30%">
								<label> 이름 </label>
							</td>
							
							<td>
								<p> 이준용 </p>
							</td>
						</tr>
						
						<tr>
							<td>
								<label> 연락처 </label>
							</td>
							
							<td>
								<p> 010-3890-3685 </p>
							</td>
						</tr>
						
						<tr>
							<td>
								<label> 배송지 주소 </label>
							</td>
							
							<td>
								<p> (18416)   경기 화성시 서동탄로 53 107동 1905호 </p>
							</td>
						</tr>
						
						<tr>
							<td>
								<label> 배송 메시지 </label>
							</td>
							
							<td>
								<p>  </p>
							</td>
						</tr>
						
					</table>
					<div>
						<ul>
							<li> 자세한 내용은 FAQ를 확인하여 주시기 바랍니다. </li>
						</ul>
					</div>
				</div>
				
				
				<div class="detail float-left" style="padding-left: 10px;">
					<div class="detail-title">
						<p> 할인 정보 </p>
					</div>
					<table class="float-left">
						<tr>
							<td width="30%">
								<label> 배송비 </label>
							</td>
							
							<td>
								<p style="color: #14aaff;"> -0원 </p>
							</td>
						</tr>
						
						<tr>
							<td>
								<label> 쿠폰 할인 </label>
							</td>
							
							<td>
								<p style="color: #14aaff;"> -0원 </p>
							</td>
						</tr>
						
						<tr>
							<td>
								<label> 마일리지사용 </label>
							</td>
							
							<td>
								<p style="color: #14aaff;"> -0원 </p>
							</td>
						</tr>
						
						<tr>
							<td>
								<label> <b>할인 합계</b> </label>
							</td>
							
							<td>
								<p style="color: #14aaff;"> -0원 </p>
							</td>
						</tr>
						
					</table>
					<div>
						<ul>
							<li> 자세한 내용은 FAQ를 확인하여 주시기 바랍니다. </li>
						</ul>
					</div>
				</div>
				
				<div class="detail float-left" style="padding-top: 50px;">
					<div class="detail-title">
						<p> 최종 결제 정보 </p>
					</div>
					<table class="float-left">
						<tr>
							<td width="30%">
								<label> 상품 합계 </label>
							</td>
							
							<td>
								<p> 171,190원 </p>
							</td>
						</tr>
						
						<tr>
							<td>
								<label> 할인 합계 </label>
							</td>
							
							<td>
								<p style="color: #14aaff;"> -55,042원 </p>
							</td>
						</tr>
						
						<tr>
							<td>
								<label> 최종 결제 금액 </label>
							</td>
							
							<td>
								<h5>116,148원</h5>
								<p> 예상 적립금 111원 </p>
							</td>
						</tr>
						
					</table>
				</div>
				
			</div>
			
		</div>
	</div>
	
	
	
	<div id="modal" class="modal">
		<div class="modal-content">
			<form id="reviewForm" method="post" enctype="multipart/form-data">
			<table>
			
				<tr>
					<td colspan="2">
						<label> 예약 후기 작성 </label>
					</td>				
				</tr>
			
				<tr>
					<td>
						<label> 제목 </label>
					</td>
					<td>
						<input id="rTitle" name="rTitle" type="text" style="width: 100%;">
					</td>					
				</tr>
				
				<tr>
					<td>
						<label> 내용 </label>
					</td>
					<td>
						<textarea id="rContent" name="rContent" rows="5" style="width: 100%;"></textarea>
					</td>					
				</tr>
				
				<tr>
					<td>
					
					</td>
					<td>
						<input id="uploads" name="uploads" multiple="multiple" type="file">
					</td>					
				</tr>
				
				<tr>
					<td>
					
					</td>
					<td>
						<input type="radio" value="1" id="rGrade" name="rGrade"> <label> <i class="fas fa-star"></i> </label> &nbsp;
						<input type="radio" value="2" id="rGrade" name="rGrade"> <label> <i class="fas fa-star"></i><i class="fas fa-star"></i> </label> &nbsp;
						<input type="radio" value="3" id="rGrade" name="rGrade"> <label> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> </label> &nbsp;
						<input type="radio" value="4" id="rGrade" name="rGrade"> <label> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> </label> &nbsp;
						<input type="radio" value="5" id="rGrade" name="rGrade" checked="checked"> <label> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> </label>
					</td>					
				</tr>
				
				<tr>
					<td>
						<input type="hidden" id="orderNum" name="orderNum">
					</td>
					<td style="text-align: right;">
						<input id="sendRivew" type="button" value="전송">
					</td>					
				</tr>
				
				
			</table>
			</form>
		</div>
	</div>
</div>