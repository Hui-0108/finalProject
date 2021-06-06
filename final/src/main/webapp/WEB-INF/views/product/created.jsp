<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- 상품 작성폼 (관리자) -->
<style type="text/css">

.productCreateBody{
	margin: 0;
	padding: 0;
	width: 1300px;
	font-family: 
}

.productTableForm{
	width: 800px;
    height: auto;
    display: flex;
    justify-content: flex-end;
    align-content: flex-end;
    margin: 0;
    flex-direction: column;
    flex-wrap: wrap;
    align-items: center;
}
.productTable{
	margin-top: 30px;
}

.productCreateTitle{
	
}

</style>
<script type="text/javascript">

$(function(){
	
});



function sendOk() {
	var f = document.createdFrom;
	
	f.action = "${pageContext.request.contextPath}/product/${mode}";
	f.submit();
}

</script>


<div class="productCreateBody">

	<div class="productCreateTitle">
		<h3><i class="far fa-edit"></i>상품 등록</h3>
	</div>
	<form name="createdFrom" method="post" enctype="multipart/form-data">
	<div class="productTableForm">
		<table class="productTable">
			<tr>
				<td>			
					<select name="categoryNum">
						<option value="0" ${pCateNum==0?"selected='selected'":""}>카테고리</option>
						<c:forEach var="vo" items="${categorys}">
							<option value="${vo.pCateNum}" ${dto.pCateNum==vo.pCateNum?"selected='selected'":""}>${vo.pCateName}</option>
						</c:forEach>
					</select>		
				</td>
			</tr>
			<tr>
				<td>제품 대표 이미지</td>
				<td>
					<input type="file" name="pImgNum" value="${dto.pImgNum}">
				</td>
			</tr>				
			<tr>
				<td>상품명</td>
				<td>
					<input type="text" name="pName" value="${dto.pName}">
				</td>
			</tr>
			<tr>
				<td>상품가격</td>
				<td>
					<input type="text" name="pPrice" value="${dto.pPrice}">
				</td>
			</tr>
			<tr>
				<td>할인율</td>
				<td>
					<input type="text" name="pDiscountRate" value="${dto.pDiscountRate}">
				</td>
			</tr>			
			<tr>
				<td>배송조건</td>
				<td>
					<label><input type="radio" name="delivType" value="${dto.delivType}"></label>
					<label><input type="radio" name="delivType" value="${dto.delivType}"></label>					
				</td>
			</tr>
			<tr>
				<td>상세정보</td>
				<td>
					<textarea name="pContent" class="">${dto.pContent}</textarea>
				</td>
			</tr>			
			<tr>
				<td>상세옵션수량</td>
				<td>
					<input type="text" name="pDetailCnt" value="${dto.pDetailCnt}">
				</td>
			</tr>			
			<tr>
				<td>최종가격</td>
				<td>
					<input type="text" name="pDetailPrice" value="${dto.pDetailPrice}">
				</td>
			</tr>			
			<tr>
				<td>
					옵션1:				
						<select name="storeMainOptNum">
							<option value="0" ${storeMainOptNum==0?"selected='selected'":""}>옵션</option>
							<c:forEach var="vo" items="${mainOpts}">
								<option value="${vo.storeMainOptNum}" ${dto.storeMainOptNum==vo.storeMainOptNum?"selected='selected'":""}>${vo.storeMainOptName}</option>
							</c:forEach>
						</select>			
				</td>
				<td>
					옵션2:				
						<select name="storeSubOptNum">
							<c:forEach var="vo" items="${subOpts}">
								<option value="${vo.storeSubOptNum}" ${dto.storeSubOptNum==vo.storeSubOptNum?"selected='selected'":""}>${vo.storeSubOptName}</option>
							</c:forEach>
						</select>
					
				</td>
				<td>
					옵션3:
					
						<select>
							<option>옵션3</option>
							
						</select>
					
				</td>

			</tr>

		</table>
		<table class="tableFooter">
			<tr>
				<td>
					<button type="button" class="">등록하기</button>
					<button type="button" class="" onclick="javascript:location.href='${pageContext.request.contextPath}/product/list';" >등록취소</button>
				
					<c:if test="${mode='update'}">
						<input type="hidden" name="page" value="${page}">
						<input type="hidden" name="pName" value="${dto.pName}">
					</c:if>
					<c:if test="">
					
					
					
					</c:if>
				
				</td>
			</tr>
		</table>
	</div>
	</form>
</div>