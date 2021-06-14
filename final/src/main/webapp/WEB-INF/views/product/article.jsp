<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- 상품 상세정보 소비자에게 보임-->

<style type="text/css">

.productArticleBody{
	margin: 0; padding: 0;
}

.productArticleMain{
	width: 1300px;
	margin: auto;
}

</style>


<div class="productArticleBody">
	<div class="productArticleMain">
		<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="..." class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="..." class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="..." class="d-block w-100" alt="...">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>

		<table>
			<tr>
				<td>
					${dto.pName}
				</td>
				<td>
					${dtto.productPrice}
				</td>
				<td>
					${dtto.totPrice}
				</td>
				<td>
					수량선택
				</td>	
				<td>
					Total 20000 (1개)
				</td>		
				<td>
					구매하기
				</td>						
				<td>
					장바구니
				</td>											
			</tr>
		</table>
		<div>
			${dto.pContent}
		
		</div>

		<table class="">
			<tr>
				<td>
					<c:if test="${sessionScope.member.mRole eq 0}">
						<button type="button" onclick="javascript:location.href='${pageContext.request.contextPath}/photo/update?num=${dto.num}&page=${page}';"></button>
						<button type="button">삭제</button>
					</c:if>
				</td>
			</tr>
		</table>
	
	
	</div>



</div>