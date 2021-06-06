<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
.productListBody{
	width: 1300px;
}
.productListBody .prodcutListTop{
	width: 100%;
}

.productListBody .productListMain ul, .productListBody .productListMain li{
	list-style: none;
}

.productListBody .prooductSearchBar{
	float: right;
}

.productListTitle{
	
}
</style>

<script type="text/javascript">
$(function(){
	$("#pCateNum").change(function(){
		var cn = $(this).val();
		var url="${pageContext.request.contextPath}/product/list?cn="+cn;
		location.href=url;
	});
});

</script>
<div class="productListBody">

	<div class="">	
		<table class="prodcutListTop">
			<tr class="productListTitle">
				<td>
					<h2>카테고리</h2>
				</td>
			</tr>
			<tr>
				<td class="productListPaging">
					#개(#/#페이지)
				</td>
				<td class="prooductSearchBar">
					<form>
						<input type="text" name="keyword" class="" placeholder="상품검색">
						<button type="button" class="">검색</button>								
					</form>								
				</td>
				<td>
					<select id="pCateNum" name="pCateNum">
						<c:forEach var="vo" items="${categorys}">
							<option value="${vo.pCateNum}" ${pCateNum==vo.pCateNum?"selected='selected'":""}>${vo.pCateName}</option>
						</c:forEach>
					</select>
				</td>
			</tr>	
		</table>
		<button type="button" class="" onclick="javascript:location.href='${pageContext.request.contextPath}/product/created';">상품 등록하기</button>

		<div class="productListMain">
			<ul>
				<li>사진</li>
				<li>상품명
					<input type="text" id="" name="">
				</li>
				<li>
					<input type="text" id="price" name="">
				</li>
			</ul>			
		</div>

		<div>
			페이징처리
		</div>
	</div>
</div>