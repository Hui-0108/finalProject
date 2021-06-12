<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script type="text/javascript">

function article(pNum) {
	var url="${articleUrl}&pNum="+pNum;
	location.href=url;
}

</script>

<div class="productListBody">
	<div class="productListForm">	
		<div class="prodcutListTop">
				<div class="productListTitle">
					<h2>전체상품</h2>
				</div>
			<ul class="pageCountRight">
				<li class="pageCount">
					총 ${dataCount}개(${page}/${total_page}페이지)
				</li>
			</ul>
		</div>

		<table class="tables">
			<c:forEach var="dto" items="${list}" varStatus="status">
				<c:if test="${status.index==0}">
					<tr>
				</c:if>			
				<c:if test="${status.index!=0 && status.index%3==0}">
					<c:out value="</tr><tr>" escapeXml="false"/>									
				</c:if>
				<td width="210" align="center">
					<div class="imgLayout">
						<img src="${pageContext.request.contextPath}/uploads/product/${dto.pImgName}" width="400" height="500" border="0"
						onclick="javascript:article('${dto.pNum}');">
						<div class="product productName" onclick="javascript:article('${dto.pNum}');" >
							${dto.pName}
						</div>	
						<div class="product productPrice" >
							 ₩${dto.pDetailPrice}
						</div>						
					</div>				
				</td>		
			</c:forEach>					
	
			<c:set var="n" value="${list.size()}"/>	
			<c:if test="${n>0&&n%3!=0}">
				<c:forEach var="i" begin="${n%3+1}" end="3" step="1">
					<td width="210">
						<div class="imgLayout">&nbsp;</div>
					</td>				
				</c:forEach>
			</c:if>

			<c:if test="${n!=0}">
				<c:out value="</tr>" escapeXml="false"/>
			</c:if>	
		</table>

		<table class="tables">
			<tr>
				<td align="center">
					${dataCount==0?"등록된 게시물이 없습니다.":paging}					
				</td>
			</tr>
		</table>


	</div>
</div>