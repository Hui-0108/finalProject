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

.productForm{
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
.productFormTable{
	margin-top: 30px;
}

.productCreateTitle{
	
}

</style>


<div class="productCreateBody">

	<div class="productCreateTitle">
		<h3><i class="far fa-edit"></i>상품 등록</h3>
	</div>

	<div class="productForm">
		<table class="productFormTable">
			<tr>
				<td>
					카테고리:
					<form action="" name="" >
						<select class="">
							<option value="1">강아지 사료</option>
							<option value="2">강아지 외출용품</option>
							<option value="3">강아지 장난감</option>
							<option value="4">강아지 간식</option>
							<option value="5">고양이 사료</option>
							<option value="6">고양이 외출용품</option>
							<option value="7">고양이 장난감</option>
							<option value="8">고양이 간식</option>							
						</select>
					</form>				
				</td>
			</tr>
			<tr>
				<td>
					옵션1:
					<form action="" name="">
						<select>
							<option></option>
						</select>
					</form>
				</td>
				<td>
					옵션2:
					<form action="" name="">
						<select>
							<option></option>
						</select>
					</form>
				</td>
				<td>
					옵션3:
					<form action="" name="">
						<select>
							<option></option>
						</select>
					</form>
				</td>

			</tr>
			<tr>
				<td>제품 이미지</td>
				<td>
					<input type="file" name="pImgNum" value="${dto.pImgNum}">
				</td>
			</tr>				
			<tr>
				<td>제품코드</td>
				<td>
					<input type="text" name="pnum" value="${dto.pnum}">
				</td>
			</tr>		
			<tr>
				<td>상품명</td>
				<td>
					<input type="text" name="pName" value="${dto.pName}">
				</td>
			</tr>
			<tr>
				<td>원가</td>
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
				<td>가격</td>
				<td>
					<input type="text" name="pPrice" value="${dto.pPrice}">
				</td>
			</tr>			
			<tr>
				<td>배송조건</td>
				<td>
					<input type="text" name="delivType" value="${dto.delivType}">
				</td>
			</tr>
			<tr>
				<td>상세정보</td>
				<td>
					<textarea name="pContent" class="">${dto.pContent}</textarea>
				</td>
			</tr>
		</table>
		<table class="">
			<tr>
				<td>
					<button type="button" class="">등록하기</button>
					<button type="button" class="" onclick="javascript:location.href='${pageContext.request.contextPath}/product/list';" >등록취소</button>
				</td>
			</tr>
		</table>
	</div>
</div>