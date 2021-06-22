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
	display:flex;
	padding: 10px 30px;
}

.petsitPayment .ppPic {
	width: 250px;
	height: 150px;
	
	border: 1px solid #ccc;
}

.petsitPayment .ppDetail {
	margin: 5px 30px;
}

.petsitPayment .ppDetail p:first-child{
	margin-top: 10px;
	margin-bottom: 50px;
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

.petsitPayment .detailTop {
}
</style>

<script type="text/javascript">
</script>

<div class="petsitPayment">
<div style="width:1300px;" align="center">
<div class="paymentBody">
	<h3>예약 정보</h3>
	<div class="payPetsit">
		<div class="ppPic">
			사진
		</div>
		<div class="ppDetail">
			<p>예약날짜</p>
			<p>펫시터 이름</p>
		</div>
	</div>
	<h3>결제 정보</h3>
	<div class="payAmount">
		<div class="amountL">
			<p>결제 예정 금액</p>
		</div>
		<div class="amountR">
			<p>56,000원</p>
		</div>
	</div>
	<div class="payDetail">
		<div class="detailCon">
			<div class="detailL">
				<p>1박</p> &nbsp;/&nbsp;
				<p>소형 1마리</p>
			</div>
			<div class="detailR">
				<p>40,000원</p>
			</div>
		</div>
		<div class="detailCon conB">
			<div class="detailL">
				<p>부과세(10%)</p>
			</div>
			<div class="detailR">
				<p>4,000원</p>
			</div>
		</div>
	</div>
</div>
</div>
<div class="paymentFooter" style="text-align: center;">
	결제 API 들어갈 부분
</div>

</div>