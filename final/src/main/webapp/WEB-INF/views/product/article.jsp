<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- 상품 상세정보 소비자에게 보임-->

<style type="text/css">
.imgLayout {
	max-width: 700px;
	padding: 5px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	display: flex; /* 자손요소를 flexbox로 변경 */
	flex-direction: row; /* 정방향 수평나열 */
	flex-wrap: nowrap;
	overflow-x: auto;
}
.imgLayout img {
	width: 100px; height: 100px;
	margin-right: 5px;
	flex: 0 0 auto;
	cursor: pointer;
}
.productArticleBody{
	margin: 0; padding: 0;
}

.productArticleMain{
	width: 1300px;
	margin: auto;
}
#carouselExampleFade{
	width: 500px;
	float: left;
}
.inform{
	float: left;
	width: 500px;
	margin-top: 50px;
}
.inform tr:nth-child(1){
	font-size: 20px;
}

.content{
	clear: both;
}
.topContent{
	margin: auto;
	width: 1000px;
}
.adminController{
	clear: both;
	width: 1000px;
	margin: auto;
	margin-top: 50px;
}
.adminController td{
	padding-left: 50px;
}

.btnBig{
	width: 300px;
    height: 35px;
    border: none;
    background: #ffb84d;
    border-radius: 5px;
	color: white;
    font-size: 17px;    
}

.margin{
	margin-left: 50px;
    margin-right: 30px;
}

.quantityBorder{
	border: none;
}
</style>
<script type="text/javascript">

function pay(){
	
	var f = document.articleform;
	
	var str = f.sDetailQty.value;
	
	if(str=="" || str == 0){
		alert("수량을 선택해 주세요.")
		f.sDetailQty.focus();
		return;
	}
	
	f.action = "${pageContext.request.contextPath}/product/order";

	f.submit();
	
}

function deleteProduct(){
	var query = "pNum=${dto.pNum}&${query}";
	var url = "${pageContext.request.contextPath}/product/delete?"+query;
	
	if(confirm("해당 상품 게시물을 삭제하시겠습니까? ")){
		location.href = url;
	}
	
}

$(function(){
	
	$(".productArticleBody").on("click", ".btnPlus", function(){
		var qty = parseInt($("input[name=sDetailQty]").val());
		var price = parseInt($("input[name=sum]").attr("data-price"));
				
		qty=qty+1;
		var s = qty * price;
		
		$("input[name=sDetailQty]").val(qty);
		$("input[name=sum]").val(s);
	});
	
	$(".productArticleBody").on("click", ".btnMinus", function(){
		var qty = parseInt($("input[name=sDetailQty]").val());
		var price = parseInt($("input[name=sum]").attr("data-price"));		
		
		qty=qty-1;
		var s = qty*price;
		if(qty<0){
			qty=0;
			
		}
		if(s<0){
			s=0;
		}
		
		$("input[name=sDetailQty]").val(qty);
		$("input[name=sum]").val(s);				
	});	
	
});

$(function(){
	$(".price").css({
	"text-decoration" :"line-through"
	});
});


</script>

<div class="productArticleBody">
	<div class="productArticleMain">
		<table class="adminController">
			<tr>
				<td>
					<c:if test="${sessionScope.member.mRole eq 0}">
						<button type="button" class="btnBig margin" onclick="javascript:location.href='${pageContext.request.contextPath}/product/update?category=${category}&page=${page}&pNum=${dto.pNum}';">수정</button>
						<button type="button" class="btnBig margin" onclick="deleteProduct();">삭제</button>
					</c:if>
				</td>
			</tr>
		</table>		
		<div class="topContent">
			<c:if test="${listProductImage.size() > 0}">
			<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">	  
			  <div class="carousel-inner">
			  	<c:forEach var="vo" items="${listProductImage}" varStatus="status">
				    <div class="carousel-item ${status.index==0?'active':'' }">
				      <img src="${pageContext.request.contextPath}/uploads/product/${vo.pImgName}" class="d-block w-100" alt="...">
				    </div>
			    </c:forEach>
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
			</c:if>
			
			<table class="inform">
				<tr>
					<td>
						${dto.pName}
					</td>
				</tr>
				<c:choose>
					<c:when test="${dto.pDiscountRate != 0}">		
						<tr class="price">
							<td>
								판매가 ${dto.productPrice}									
							</td>
						</tr>			
						<tr>
							<td>
								할인가 ${dto.totPrice}
							</td>
						</tr>	
					</c:when>
					<c:otherwise>
						<tr>
							<td>
								판매가 ${dto.productPrice}									
							</td>
						</tr>				
					</c:otherwise>
				</c:choose>
				<tr>
					<td>
						수량선택
						<form name="articleform" method="get" >
							수량 : <input type=hidden name="pNum" value="${dto.pNum}">
							<input type="hidden" name="page" value="${page}">
							<input type="text" name="sDetailQty" value="1" class="quantityBorder">
							<input type="button" value=" + " class="btnPlus quantityBorder" >
							<input type="button" value=" - " class="btnMinus quantityBorder"><br>
							<c:choose>
								<c:when test="${dto.pDiscountRate != 0}">
									<input type="text" name="sum" data-price="${dto.totPrice}" value="${dto.totPrice}" readonly="readonly">
								</c:when>
								<c:otherwise>
									<input type="text" name="sum" data-price="${dto.productPrice}" value="${dto.productPrice}" readonly="readonly">								
								</c:otherwise>
							</c:choose>
						</form>					
					</td>						
				</tr>			
				<tr>
					<td>
							<button class="btnBig" type="button" onclick="pay()">구매하기</button>
					</td>
				</tr>			
				<tr>
					<td>
						<button class="btnBig" type="button">장바구니</button>
					</td>	
				</tr>			
			</table>
		</div>
		<div class="content">
			${dto.pContent}
		</div>

	</div>

</div>