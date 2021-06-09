<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
.productListBody{
	margin: 0;
	padding: 0;
	width: 1300px;
	font-family: 
}

.productListForm{
	margin: auto;
	width: 1100px;
}
.productListBody .prodcutListTop{
	width: 100%;
	margin: auto;
}

.productListBody ul{
	list-style: none;
}

.productListBody .prooductSearchBar{
	float: right;
}

.productListTitle{
	
}
</style>

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

$(function(){
	listPage(1);
});




</script>
<div class="productListBody">

	<div class="productListForm">	
		<table class="prodcutListTop">
			<tr class="productListTitle">
				<td>
					<h2>전체상품</h2>
				</td>
			</tr>
			<tr>
				<td class="productListPaging">
					${dataCount}개(${page}/${total_page}페이지)
				</td>
				<td class="prooductSearchBar">
					<form>
						<input type="text" name="keyword" class="" placeholder="상품검색">
						<button type="button" class="">검색</button>								
					</form>								
				</td>
			</tr>	
		</table>
		<button type="button" class="" onclick="javascript:location.href='${pageContext.request.contextPath}/product/created';">상품 등록하기</button>

		<div class="productListMain">
		
			<div class="" data-pageNo="0"></div>
			<div class=""></div>
			<div class=""></div>		
			<div class=""></div>		
		</div>

		<div>
			페이징처리
		</div>
	</div>
</div>