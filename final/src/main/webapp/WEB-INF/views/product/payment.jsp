<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
.productPayBody{
	margin: 0;
	padding: 0;
}

.productPayMain{
	width: 1300px;
	margin: auto;	
}

.orderTable{
	width: 1300px;
	margin: auto;
	border: 1px solid darkgray;
}
.payTitle{
    margin-top: 30px;
}
.cntNotice{
    margin-top: 30px;
    margin-bottom: 15px;
}

.topTb{
	
}

.content{
    height: 200px;
    line-height: 200px;
    border-bottom: 1px solid lightgray;
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

</style>



<div class="productPayBody">
	<div class="productPayMain">
		<div class="payTitle">
			<h3>주문정보</h3>
		</div>
	
		<div class="cntNotice">
			! 상품 수량 변경은 상품상세 페이지에서 가능합니다.
		</div>	
		<table class="orderTable topTb">
			<tr class="content">
				<td>
				<div>
					<label><input type="checkbox" name="" value="1"> </label>&nbsp;&nbsp;&nbsp;			
					<span>					
					대표사진<img src="${pageContext.request.contextPath}/uploads/product/${dto.pImgName}" width="100" height="200" border="0">
					</span>
					<span>
					&nbsp;|상품명	${dto.pName}				
					</span>
					<span>
					&nbsp;|수량		${sDetailQty}			
					</span>
					<span>
					&nbsp;|가격	
						${sum}					
					
					</span>
				</div>			
				</td>
			</tr>
			<tr class="mile">
				<td>
				적립 예상 마일리지 : ${dto.mile}
				</td>
			</tr>
			<tr class="totmon">
				<td>
				상품구매금액 + 배송비 - 할인금액 = 합계 : ${sum}+
						<c:choose>
							<c:when test="${dto.delivType != 0}">
								<span >2000</span>	
							</c:when>
							<c:otherwise>
								<span >0</span>				
							</c:otherwise>
						</c:choose>	
				</td>
			</tr>
		</table>
		
		<div>
			<div>배송지 선택</div>
			<div>
				<label><input type="radio" name="petYN" value="1"> 회원정보와 동일 </label>&nbsp;&nbsp;&nbsp; 				
				<label><input type="radio" name="petYN" value="0" checked="checked"> 새로운 배송지</label>			
			</div>

		</div>
		<form name="orderForm">
			<table class="orderTable bottomTb">		
			<tr>
				<td>
					받으시는 분*
				</td>
				<td>
					<input type="text" name="" value="">
				</td>
			</tr> 
			<tr>
				<td>
					주소*
				</td>
				<td>
					<div>
						<div>우편번호</div>
							<input type="text" id="mZip" name="mZip" value="" readonly="readonly">
							<button type="button" name="" onclick="daumPostcode();">검색</button>			
						<div>주소</div>
							<input type="text"  id="mAddr1" name="mAddr1">
						<div>상세 주소</div>
							<input type="text"  id="mAddr2" name="mAddr2">
					</div>
				</td>
			</tr> 				
			<tr>
				<td>
					휴대전화
				</td>
				<td>
					<input type="text" name="tel1" value="">
					<input type="text" name="tel2" value="">
					<input type="text" name="te3" value="">
				</td>
			</tr> 		
			<tr>
				<td>
					이메일
				</td>
				<td>
					<div>
						<select name="selectmEmail" onchange="changemEmail();" class="">
							<option value="">선 택</option>
							<option value="naver.com" >네이버 메일</option>
							<option value="hanmail.net" >다음이메일</option>
							<option value="hotmail.com" >핫메일</option>
							<option value="gmail.com" >지메일</option>
							<option value="direct">직접입력</option>
						</select>					
					</div>
					<div class="">
						<input type="text" class="" name="email1" maxlength="30" value="" >
					      <span class="" style=" background: none; border: none;">@</span>
					   <input type="text" class="" name="email2" maxlength="30" value="" readonly="readonly">
					</div>						
				
				</td>
			</tr> 		
			</table >
		</form>
		<table class="orderTable">
			<tr>
				<td>
					쿠폰 사용
				</td>
				<td>
					<button type="button">찾기</button>
				</td>
			</tr>
			<tr>
				<td>
					보유 마일리지
				</td>
				<td>
					<input type="text" readonly="readonly">
					<input type="text"><button>확인</button>
				</td>
			</tr>
			<tr>
				<td>
					최종 결제 금액
				</td>
				<td>
					0000원
				</td>
			</tr>
			<tr>
				<td>
					배송 예정일
				</td>
				<td>
					0일
				</td>
			</tr>			
			<tr>
				<td>
					<button type="button">결제하기</button>
				</td>
			</tr>
		</table>
	</div>
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('mZip').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('mAddr1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('mAddr2').focus();
            }
        }).open();
    }
</script>		

</div>