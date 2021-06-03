<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="productListBody">
	<div class="productNavBar">
		
	</div>
	<div class="productListMain">
		<table class="productTable">
		<tr>
			<td>
				<h2>카테고리</h2>
			</td>
		</tr>
		<tr>
			<td class="productListPaging">
				#개(#/#페이지)
			</td>
		</tr>	
		</table>
		
		<div>
			<ul>
				<li class="">
				<form>
					<select name="condition" class="">
						<option value="">상품명</option> <!-- 검색할때 제목으로만 하면 됨 -->
					</select>
					<input type="text" name="keyword" class="" placeholder="상품검색">
					<button type="button" class="">검색</button>
				
				</form>
				</li>
				<li>
					<c:if test="">
						<button type="button">등록하기</button>					
					</c:if>
				</li>
			</ul>
		</div>
		<div class=""></div>
		
		
	</div>
</div>