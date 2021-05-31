<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
*{
	margin: 0;
	padding: 0;
}

body{
	font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
	font-size: 14px;
	
}

.body-main{
	width: 800px;
	
}
table{
	width: 100
}

.main-slide{
	width: 100%;
	height: 300px;
}

.popularImg1 > td{
	width: 170px;
	height: 200px;
}
.popularImg2 > td{
	width: 170px;
	height: 200px;
}
.newImg1 > td{
	width: 170px;
	height: 200px;
}
.newImg2 > td{
	width: 170px;
	height: 200px;
}

.totalImg1 > td{
	width: 170px;
	height: 200px;
}
.totalImg2 > td{
	width: 170px;
	height: 200px;
}

</style>

</head>
<body>

<div class="body-container">
	<div class="body-main">
		

<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
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
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>







	
		<div class="popularProduct">
			인기상품
		</div>
	
		<table class="popularProduct">
			<tr class="popularImg1">
				<td>이미지1</td>
				<td>이미지2</td>
				<td>이미지3</td>
				<td>이미지4</td>
			</tr>
			<tr class="popularName1">
				<td>어쩌구사료1</td>
				<td>어쩌구사료2</td>
				<td>어쩌구사료3</td>
				<td>어쩌구사료4</td>
			</tr>			
			<tr class="popularPrice1">
				<td>2000원</td>
				<td>2000원</td>
				<td>2000원</td>
				<td>2000원</td>
			</tr>			
			
			<tr class="popularImg2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>
			<tr class="popularName2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>
			<tr class="popularPrice2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>			
								
		</table>	
		<div class="storeBanner1">
			수익의 50%는 기부됩니다.
			<img alt="" src="">
		</div>
		
		<div class="newProduct">
			신상품
		</div>
		
		<table class="newProduct">
			<tr class="newImg1">
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr class="newName1">
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>			
			<tr class="newPrice1">
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>			
			
			<tr class="newImg2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>
			<tr class="newName2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>
			<tr class="newPrice2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>											
		</table>	
		<div class="storeBanner2">
			강아지에게 좋은 어쩌구 저쩌구 보러가기
			<img alt="" src="">
			<a></a>
		</div>		
		<div class="storeBanner2">
			이미지 어쩌구 저쩌구
		</div>
	
		<div class="totalProduct">
			전체상품
		</div>
		
		<table class="totalProduct">
			<tr class="totalImg1">
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr class="totalName1">
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>			
			<tr class="totalPrice1">
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr class="totalImg2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>
			<tr class="totalName2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>			
			<tr class="totalPrice2">
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>						
		</table>	

	
	</div>
</div>



</body>
</html>