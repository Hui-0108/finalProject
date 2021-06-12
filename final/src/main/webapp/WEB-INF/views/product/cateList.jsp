<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
ul{
	list-style: none;
}
</style>

<script type="text/javascript">

</script>

<div class="productListBody">
	<div>
		<h2>${title}</h2>
	</div>
		
<!-- for문으로 list돌려서 -->

	<div class="cateListBody">
	
		<ul>
			<li>
			${dataCount}개(${page}/${total_page}페이지)
			</li>
		</ul>
	
		<ul>
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
						<span class="product">
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
		</ul>	
		<ul>
			<li>
			${dataCount==0?"등록된 게시물이 없습니다.":paging}	
			</li>
		</ul>
	
	</div>


</div>