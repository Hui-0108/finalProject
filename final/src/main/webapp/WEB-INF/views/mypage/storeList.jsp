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
.myStoreList {
	margin-top: 50px;
	font-size: 14px;
	width: 100%;
	padding: 0px;
}

.myStoreList .body-container {
	width: 1300px;
}

.myStoreList .body-title h3 {
    font-family: Cafe24Ssurround;
    text-align: left;
}

.myStoreList .body-main {
	width: 100%;
}

.myStoreList .body-itmeList table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0px;
	text-align: center;
}
.myStoreList .body-itmeList table tr:nth-child(1) td {
	height: 40px;
	border-top: 1px solid;
	border-bottom: 1px solid;
}

.myStoreList .body-itmeList table tr:nth-child(1) label {
	margin: 0px 0px 0px 0px;
}

.myStoreList .body-itmeList img {
	width: 80px;
	height: 80px;
}

.myStoreList .body-itmeList .items {
	height: 100px;
	padding: 10px;
}

.myStoreList .body-itmeList .items p {
	margin: 0px 0px 0px 0px;
}

.myStoreList .body-itmeList .items:hover {
	background: #eee;
}

</style>

<div class="myStoreList" align="center">
	<div class="body-container">
		<div class="body-title">
			<h3> 구매 내역 </h3>
		</div>
		<div class="body-main">
			<div class="body-itmeList">
				<table>
					<tr>
						<td width="35%" colspan="2">
							<label> 상품정보 </label>
						</td>
						
						<td width="15%">
							<label> 주문일자 </label>
						</td>
						
						<td width="15%">
							<label> 주문번호 </label>
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
							<img src="${pageContext.request.contextPath}/resources/images/storeMain/food.jpg">
						</td>
						<td style="text-align: left;">
							<p> 상품정보 표시 </p>
							<p style="color: #777777;"> 옵션: XL </p>
						</td>
						
						<td>
							<p> 2021.06.04 </p>
						</td>
						
						<td>
							<p> 202106042127380001 </p>
						</td>
						
						<td>
							<p> 14,990원 </p>
							<p style="color: #777777;"> 1개 </p>
						</td>
						
						<td>
							영역1
						</td>
						<td>
							<input type="button" value="후기작성">
						</td>
					</tr>
					
				</table>
			</div>		
		
		</div>
		
	</div>
</div>