<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
.petsitPayment {
	font-size: 15px;
	font-family: "Spoqa Han Sans", "Noto Sans KR", sans-serif !important;
	color: rgb(57, 60, 71);
}

.petsitPayment .paymentBody{
	width: 100%;
	height: 500px;
	text-align: left;
	margin: 0 140px;
	border: 1px solid #ccc;
}

.petsitPayment .paymentBody h3{
	margin: 20px;
}


.petsitPayment .payPetsit {
	margin: 0 auto;
	padding: 10px 30px;
	text-align: center;
	
}

.petsitPayment .ppPic {
	width: 250px;
	height: 150px;
	
	border: 1px solid #ccc;
}

.petsitPayment .ppDetail {
	margin: 5px 30px;
}

.petsitPayment .payAmount {
	display:flex;
	padding: 10px 30px;
}

.petsitPayment .amountL{
	width: 300px;
	font-size: 20px;
	border-bottom: 1px solid #ccc;
}

.petsitPayment .amountR{
	width: 300px;
	font-size: 26px;
	border-bottom: 1px solid #ccc;
}

.petsitPayment .payDetail{
	width: 300px;
	
}

.petsitPayment .detailL{
	display: flex;
	flex-direction: row;
	align-items: center;
	width:300px;
}

.petsitPayment .detailCon {
	display: flex;
	width: 600px;
	height: 30px;
	padding: 0px 30px;
}

.petsitPayment .detailL p:first-child{
	font-family: "Noto Sans KR";
    font-size: 17px;
    letter-spacing: -0.2px;
    line-height: 20px;
    color: rgb(56, 60, 72);
    margin: 0 0px;
    
}

.petsitPayment .detailL p:last-child{
	font-family: "Noto Sans KR";
	font-size: 17px;
    letter-spacing: -0.2px;
    line-height: 17px;
    color: rgb(94, 99, 109);
    margin: 3px 0 0 0;
}

.petsitPayment .detailR{
	display: flex;
    flex-direction: row;
    align-items: center;
    width: 300px;
    height: 30px;
}

.petsitPayment .detailR p{
	font-family: "Noto Sans KR";
	font-size: 17px;
    font-weight: 600;
    letter-spacing: -0.2px;
    line-height: 17px;
    color: rgb(94, 99, 109);
    margin: 0 20px;
}

.petsitPayment .bookDate {
	border: none;
	width: 130px;
	
}

.petsitPayment .ppDetail {	
}

.petsitPayment .ppDetail p:nth-child(1) {	
	width: 100px;
	border-bottom: 2px solid #ccc;
	margin-top: 10px;
	margin-bottom: 50px;
}

.petsitPayment .ppDetail p:nth-child(1) {	
	width: 100px;
	border-bottom: 2px solid #ccc;
	margin-top: 10px;
	margin-bottom: 50px;
}

.petsitPayment .ppDetail p:nth-child(2) {	
	width: 70px;
	border-bottom: 2px solid #ccc;
}

.petsitPayment .ppDetail {	
}

</style>

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">

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

function paymentOk() {
	var f = document.rvForm;

	//결제완료 후 list페이지로
	//f.action="${pageContext.request.contextPath}/petsit/list";
	//서버로 넘김
    //f.submit();
	iamport();
	//f.submit();
}

function iamport(){
	
	var f = document.orderForm;

	var url = "${pageContext.request.contextPath}/petsit/confirm";

	var query = $('form[name=orderForm]').serialize();
			
	//alert(query);
	var fn = function(data){
		var state = data.state;
		console.log(state);
	};
	ajaxFun(url, "post", query, "json", fn);		
			

	
	
}
</script>

<div class="petsitPayment"  style="min-height: 2000px;" >
<div style="width:1300px;" align="center">
<div class="paymentBody">
	<form name="orderForm">
	<h3 align="center">펫시터 예약 정보</h3>
	<div class="payPetsit">
		<div class="ppPic">
			사진
		</div>
		<div class="ppDetail">
			<p>예약 날짜</p> 
			<input type="text" name="checkIn" class="bookDate" value="${dto.checkIn}">&nbsp;~&nbsp;
			<input type="text" name="checkOut" class="bookDate" value="${dto.checkOut}">
			<p>예약자</p>
			<p>${sessionScope.member.mId}</p>
			<p>연락 받으실 휴대폰 번호와 이메일을 입려해 주세요</p>
			<p>연락처</p>
			<input type="text" name="orderTel">
			<p>이메일</p>
			<input type="text" name="orderEmail">
			<p>예약일</p>
			<input type="text" name="rDate" value="${dto.rDate}">
		</div>
	</div>
	<h3 align="center">결제 정보</h3>
	<div class="payAmount">
		<div class="amountL">
			<p>결제 예정 금액</p>
		</div>
		<div class="amountR">
			<p><input type="text" name="finalPrice" value="${dto.finalPrice}">원 </p>
		</div>
	</div>
	<div class="payDetail">
		<div class="detailCon">
			<div class="detailL">
				<p>${dto.dayCnt}&nbsp;박</p> &nbsp;/&nbsp;
				<p><input type="text" name="small" value="${dto.small}">
				   <input type="text" name="medium" value="${dto.medium}">
				   <input type="text" name="large" value="${dto.large}">
				      마리</p>	
			</div>
			<input type="hidden" name="orderName" value="${sessionScope.member.mId}">
			
			
			<div class="detailR">
				<p>${dto.finalPrice}원</p>
				<p>${dto.sum}원</p>
			</div>
		</div>
		<div class="detailCon conB">
			<div class="detailL">
				<p>부과세(10%)</p>
			</div>
			<div class="detailR">
				<p>${dto.tax}원</p>
			</div>
		</div>
		</div>
	</form>
</div>
</div>
<div class="paymentFooter" style="text-align: center;">
<button type="button" onclick="paymentOk();">결제하기</button>	
</div>

</div>