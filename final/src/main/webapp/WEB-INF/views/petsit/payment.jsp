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


<!-- //////////////// -->
.productPayBody{
	margin: 0;
	padding: 0;
	font-family: Cafe24SsurroundAir;
}

.payTitle,.addressInform,.addressInform,.finalPayment{
	font-family: GmarketSansMedium;
}

.table{
	width: 100%;
}

.productPayMain{
	width: 1300px;
	margin: auto;	
}
h3{
	margin-top: 40px;
}

.orderTable tr:first-child th, .orderTable tr:first-child td{
    border-top: 2px solid #d6d6d6;
}

.orderTable th{
	width:20%;
    background: #f4f4f4;
    padding: 15px 0 15px 18px;
    text-align: left;
    color: #222;
    border-bottom: 1px solid #e6e6e6;

}
.orderTable td{
    padding: 15px 20px;
    border-bottom: 1px solid #e6e6e6;
    font-size: 14px;
    color: #222;
    line-height: 28px;

}

.payTitle{
    margin-top: 30px;
}
.cntNotice{
    margin-top: 30px;
    margin-bottom: 15px;
    background: #fff8f5;
    height: 40px;
    line-height: 40px;
    padding-left: 20px;    
}

.orderTable input[type=text], .selectmEmail{
	height: 35px;
    border-radius: 8px;
    border: 1px solid darkgray;	
}

.topTb th{
	height: 60px;
    border-top: 2px solid #d6d6d6;
    border-bottom: 1px solid #ccc;
    background: #fafafa;	
	display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
	text-align: center;
	
	width: 500px;
	
}

.alignNone{
	text-align: left;
	padding-left: 50px;
}
.tbl_cell{
    display: table-cell;
    vertical-align: middle;
}

.priceTop{
	padding-right: 30px;
}
.w600{
	width: 600px;
}
.w100{
	width: 100px;
}

.adderSelect{
	margin-top: 50px;
    border-top: 1px solid gray;
    padding-top: 30px;
}


.addr{
	padding-top: 10px;
	padding-bottom: 10px;
}

.address1{
	margin-bottom: 10px;
}

.addrBtn{
    border: none;
    width: 60px;
    height: 30px;
    border-radius: 5px;
    box-shadow: 0px 0px 2px 0px rgb(0 0 0 / 10%);  
}

.addrBtn:hover{
	 box-shadow: inset -2px -1px 2px 0px rgb(0 0 0 / 10%);
}

.middleTb td {
	padding-left: 20px;
}

.bottomTb td{
	padding-left: 20px;
}

.content{
    height: 200px;
    line-height: 200px;
    border-bottom: 1px solid lightgray;
    text-align: center;
}

.content span{
	margin-left: 100px;
    font-size: 25px;	
}
.mile{
    height: 50px;
    line-height: 50px;
    border-bottom: 1px solid lightgray;
    text-align: right;
}
.totmon{
	height: 50px;
    line-height: 50px;
    text-align: right;
}

.borderNone{
	border: none;
    text-align: center;
}

.orderProductBtn{
	border: 1px solid white;
    border-radius: 5px;	
}

.petsitPayment .paymentBody h3{
	margin-top: 40px;
	margin-bottom: .5rem;
    font-weight: 500;
    line-height: 1.2;
	display: block;
}

.petsitPayment .content{
    height: 200px;
    line-height: 200px;
    border-bottom: 1px solid lightgray;
    text-align: center;
}

.petsitPayment .inputTriple input{
	height: 30px;
	width: 30px;
}

.petsitPayment .inputTriple {
	
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
	<div class="finalPayment">
		<h3>예약 정보</h3>
	</div>
	<table class="topTb table">
		<tr>
			<th class="alignNone">
				예약정보
			</th>
			<th>
				예약일자
			</th>
			<th>
				예약 상세
			</th>
			<th>
				최종 금액 
			</th>
		</tr>	
		<tr class="content">
			<td class="w600 tbl_cell alignNone">
				&nbsp;<img width="100" height="200" border="0">
			</td>
			<td class="w100 tbl_cell">
				<input style="width: 95px;" type="text" name="checkIn" class="bookDate" value="${dto.checkIn}">&nbsp;~&nbsp;
				<input style="width: 95px;" type="text" name="checkOut" class="bookDate" value="${dto.checkOut}">&nbsp;(${dto.dayCnt}&nbsp;박)
			</td>
			<td class="w100 inputTriple">
				
				소형견<input type="text" name="small" value="${dto.small}">
				중형견<input type="text" name="medium" value="${dto.medium}">
				대형견<input type="text" name="large" value="${dto.large}">
			</td>
			<td class="w100 tbl_cell">
				<p>${dto.finalPrice}원</p>	
			</td>				
		</tr>
		<tr class="totmon">
			<td colspan="4" class="priceTop">
				<span>합계 : (옵션금액 * 박)  + 부과세(10%)= (${dto.sum} * ${dto.dayCnt}) + ${dto.tax} = ${dto.finalPrice} </span>  
			</td>
		</tr>
	</table>
	<div class="finalPayment">
		<h3>결제 확인</h3>
	</div>	
	<table class="orderTable table">
			<tr>
				<td>
					최종 결제 금액
				</td>
				<td>
					${dto.finalPrice}
				</td>
			</tr>
			<tr>
				<td>
					예약자 이름
				</td>
				<td>
					${sessionScope.member.mId}
				</td>
			</tr>
			<tr>
				<td>
					휴대폰 번호
				</td>
				<td>
					<input type="text" name="orderTel">
				</td>
			</tr>	
			<tr>
				<td>
					이메일 주소
				</td>
				<td>
					<input type="text" name="orderEmail">
				</td>
			</tr>	
			<tr>
				<td>
					예약일자
				</td>
				<td>
					<input type="text" name="rDate" value="${dto.rDate}">
				</td>
			</tr>	
			<tr>
				<td>
					<button type="button" class="orderProductBtn" onclick="paymentOk(); ">결제하기</button>
				</td>
			</tr>
		</table>
	</form>
</div>
</div>
</div>

	