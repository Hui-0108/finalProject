<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<!-- <html lang="en" style="height: 100%"> --!>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>부트스트랩 차트그리기</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dateUtil.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 차트 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>

<div class="container">
<div class="row my-3">
<div class="col-12">
<h4>유기동물 보호 현황</h4>
</div>
</div>
<div class="row my-2">
<div class="col-lg-6">
<div class="card">
<div class="card-body">
<canvas id="myChart1">
</canvas>
</div>
<div class="card-footer text-center text-dark">
<h3>유기동물 보호 현황</h3>
</div>
</div>
</div>
<%-- <div class="col-lg-6">
<div class="card">
<div class="card-body">
<canvas id="myChart2">
</canvas>
</div>
<div class="card card-body text-center bg-primary">
<h3>Doughnut</h3>
</div>
</div>
</div> --%>
</div>
</div>
<!-- 부트스트랩 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- 차트 -->
<script>
data = {
		datasets: [{
			backgroundColor: ['red','yellow','blue'],
			data: [10, 20, 30] 
		}],
		// 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
		labels: ['종료(안락사)','보호 중','종료(입양)']
	};
	// 가운데 구멍이 없는 파이형 차트
	var ctx1 = document.getElementById("myChart1");
	var myPieChart = new Chart(ctx1, {
		type: 'pie',
		data: data,
		options: {}
	});
	
/* 	// 도넛형 차트
	var ctx2 = document.getElementById("myChart2");
	var myDoughnutChart = new Chart(ctx2, {
		type: 'doughnut',
		data: data,
		options: {}
	}); */
</script>
</body>
</html>

		

<%-- function memberOk() {
	
}
</script>


<div class="dona">
<div class="dmain">
	<div class="dmain-image">
		<img class="home" src="${pageContext.request.contextPath}/resources/images/donation/main1.jpg" class="d-block w-100" alt="...">
	</div>
		<div class="dmain-button">
		<br>
		<a href="${pageContext.request.contextPath}/donation/regularDon">정기 후원하기</a> <span>|</span>
		<a href="${pageContext.request.contextPath}/donation/tempDon">일시 후원하기</a>
		<br>
		<a href="${pageContext.request.contextPath}/donation/checkDon">후원 내역 확인</a>
		</div>
	</div>
</div> --%>