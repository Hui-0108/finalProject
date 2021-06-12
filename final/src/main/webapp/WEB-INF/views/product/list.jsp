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

.imgLayout {
	width: 230px;
	height: 320px;
	padding: 10px 5px 10px;
	margin: 5px;
	cursor: pointer;
}

.product {
     width:180px;
     height:25px;
     line-height:25px;
     margin:5px auto;
     display: inline-block;
     white-space:nowrap;
     overflow:hidden;
     text-overflow:ellipsis;
     cursor: pointer;
}

.productPrice{

}

</style>

<script type="text/javascript">
function searchList() {
	var f=document.searchForm;
	f.submit();
}

function article(pNum) {
	var url="${articleUrl}&pNum="+pNum;
	location.href=url;
}

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
					<form name="searchForm" action="${pageContext.request.contextPath}/product/list" method="post">
						<input type="text" name="keyword" class="" placeholder="상품검색">
						<button type="button" class="">검색</button>								
					</form>								
				</td>
			</tr>	
		</table>
		<button type="button" class="" onclick="javascript:location.href='${pageContext.request.contextPath}/product/created';">상품 등록하기</button>

		<table class="">
			<c:forEach var="dto" items="${list}" varStatus="status">
				<c:if test="${status.index==0}">
					<tr>
				</c:if>			
				<c:if test="${status.index!=0 && status.index%4==0}">
					<c:out value="</tr><tr>" escapeXml="false"/>									
				</c:if>
				<td width="210" align="center">
					<div class="imgLayout">
						<img src="${pageContext.request.contextPath}/uploads/product/${dto.pImgName}" width="230" height="280" border="0"
						onclick="javascript:article('${dto.pNum}');">
						<span class="product" onclick="javascript:article('${dto.pNum}');" >
							${dto.pName}
						</span>	
						<span class="product" >
							${dto.pDetailPrice}
						</span>	
											
					</div>				
				</td>
			</c:forEach>					
	
			<c:set var="n" value="${list.size()}"/>	
			<c:if test="${n>0&&n%4!=0}">
				<c:forEach var="i" begin="${n%4+1}" end="4" step="1">
					<td width="210">
						<div class="imgLayout">&nbsp;</div>
					</td>				
				</c:forEach>
			</c:if>

			<c:if test="${n!=0}">
				<c:out value="</tr>" escapeXml="false"/>
			</c:if>	
		</table>

		<table class="">
			<tr>
				<td align="center">
					${dataCount==0?"등록된 게시물이 없습니다.":paging}					
				</td>
			</tr>
		</table>


	</div>
</div>