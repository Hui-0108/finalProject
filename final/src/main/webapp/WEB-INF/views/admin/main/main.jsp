<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">개묘개묘 관리자 페이지</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">관리자 메인</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">사이트 가입자 추이</h3>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg">${joinLastWeek.jTotLastWeek}&nbsp;명</span>
                    <span>지난 주 총 가입자</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                    <span class="font-weight-bold">
                    	<c:choose>
                    		<c:when test="${joinLastWeek.jTotLastWeek <= joinThisWeek.jTotThisWeek}">
                      			<i class="ion ion-android-arrow-up text-success"></i><span>&nbsp;&nbsp;${joinThisWeek.jTotThisWeek-joinLastWeek.jTotLastWeek}&nbsp;명</span>
                      		</c:when>
                      		<c:otherwise>
                      			<i class="ion ion-android-arrow-down text-danger"></i><span>&nbsp;&nbsp;${joinLastWeek.jTotLastWeek-joinThisWeek.jTotThisWeek}&nbsp;명</span>
                      		</c:otherwise>
                     	</c:choose>
                    </span>
                    <span class="text-muted">전주 대비 가입자 증감</span>
                  </p>
                </div>
                <!-- /.d-flex -->

                <div class="position-relative mb-4">
                  <canvas id="visitors-chart" height="200"></canvas>
                </div>

                <div class="d-flex flex-row justify-content-end">
                  <span class="mr-2">
                    <i class="fas fa-square text-primary"></i> This Week
                  </span>

                  <span>
                    <i class="fas fa-square text-gray"></i> Last Week
                  </span>
                </div>
              </div>
            </div>
            <!-- /.card -->

            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">인기제품</h3>
              </div>
              <div class="card-body table-responsive p-0">
                <table class="table table-striped table-valign-middle">
                  <thead>
                  <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Sales</th>
                    <th>More</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>
                      <img src="${pageContext.request.contextPath}/resources/images/home/home_ani1.jpg" alt="Product 1" class="img-circle img-size-32 mr-2">
                      Some Product
                    </td>
                    <td>$13 USD</td>
                    <td>
                      <small class="text-success mr-1">
                        <i class="fas fa-arrow-up"></i>
                        12%
                      </small>
                      12,000 Sold
                    </td>
                    <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <img src="${pageContext.request.contextPath}/resources/images/home/home_ani1.jpg" alt="Product 1" class="img-circle img-size-32 mr-2">
                      Another Product
                    </td>
                    <td>$29 USD</td>
                    <td>
                      <small class="text-warning mr-1">
                        <i class="fas fa-arrow-down"></i>
                        0.5%
                      </small>
                      123,234 Sold
                    </td>
                    <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <img src="${pageContext.request.contextPath}/resources/images/home/home_ani1.jpg" alt="Product 1" class="img-circle img-size-32 mr-2">
                      Amazing Product
                    </td>
                    <td>$1,230 USD</td>
                    <td>
                      <small class="text-danger mr-1">
                        <i class="fas fa-arrow-down"></i>
                        3%
                      </small>
                      198 Sold
                    </td>
                    <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <img src="${pageContext.request.contextPath}/resources/images/home/home_ani1.jpg" alt="Product 1" class="img-circle img-size-32 mr-2">
                      Perfect Item
                    </td>
                    <td>$199 USD</td>
                    <td>
                      <small class="text-success mr-1">
                        <i class="fas fa-arrow-up"></i>
                        63%
                      </small>
                      87 Sold
                    </td>
                    <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">스토어 매출 현황</h3>
                  <a href="${pageContext.request.contextPath}/admin/saleStatus">View Report</a>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg">$18,230.00</span>
                    <span>지난주 총 매출액</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                    <span class="font-weight-bold">
                    	<c:choose>
                    		<c:when test="${test >= 0}">
                      			<i class="ion ion-android-arrow-up text-success"></i> 
                      		</c:when>
                      		<c:otherwise>
                      			<i class="ion ion-android-arrow-down text-danger"></i>
                      		</c:otherwise>
                     	</c:choose>
                     	30%
                    </span>
                    <span class="text-muted">전주 대비 총 매출액 비율</span>
                  </p>
                </div>
                <!-- /.d-flex -->

                <div class="position-relative mb-4">
                  <canvas id="sales-chart" height="200"></canvas>
                </div>

                <div class="d-flex flex-row justify-content-end">
                  <span class="mr-2">
                    <i class="fas fa-square text-primary"></i> This week
                  </span>

                  <span>
                    <i class="fas fa-square text-gray"></i> Last week
                  </span>
                </div>
              </div>
            </div>
            <!-- /.card -->

            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">통계</h3>
              </div>
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                  <p class="text-success text-xl">
                    <i class="fas fa-dog"></i>
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                    	<c:choose>
                    		<c:when test="${test >= 0}">
                      			<i class="ion ion-android-arrow-up text-success"></i> 
                      		</c:when>
                      		<c:otherwise>
                      			<i class="ion ion-android-arrow-down text-danger"></i>
                      		</c:otherwise>
                     	</c:choose>
						12%
                    </span>
                    <span class="text-muted">전주 대비 제품 펫시터 예약 증감</span>
                  </p>
                </div>
                <!-- /.d-flex -->
                <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                  <p class="text-warning text-xl">
                    <i class="fas fa-shopping-cart"></i>
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                    	<c:choose>
                    		<c:when test="${test >= 0}">
                      			<i class="ion ion-android-arrow-up text-success"></i> 
                      		</c:when>
                      		<c:otherwise>
                      			<i class="ion ion-android-arrow-down text-danger"></i>
                      		</c:otherwise>
                     	</c:choose>
                     	12%
                    </span>
                    <span class="text-muted">전주 대비 제품 판매 매출액 증감</span>
                  </p>
                </div>
                <!-- /.d-flex -->
                <div class="d-flex justify-content-between align-items-center mb-0">
                  <p class="text-danger text-xl">
                    <i class="fas fa-users"></i>
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                    	<c:choose>
                    		<c:when test="${joinLastWeek.jTotLastWeek <= joinThisWeek.jTotThisWeek}">
                      			<i class="ion ion-android-arrow-up text-success"></i><span>&nbsp;&nbsp;${joinThisWeek.jTotThisWeek-joinLastWeek.jTotLastWeek}&nbsp;명</span>
                      		</c:when>
                      		<c:otherwise>
                      			<i class="ion ion-android-arrow-down text-danger"></i><span>&nbsp;&nbsp;${joinLastWeek.jTotLastWeek-joinThisWeek.jTotThisWeek}&nbsp;명</span>
                      		</c:otherwise>
                     	</c:choose>
                    </span>
                    <span class="text-muted">전주 대비 가입자 증감</span>
                  </p>
                </div>
                <!-- /.d-flex -->
              </div>
            </div>
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  

<!-- AdminLTE for demo purposes -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/dist/js/demo.js"></script>

<script type="text/javascript">

$(function () {
	  'use strict'

	  var ticksStyle = {
	    fontColor: '#495057',
	    fontStyle: 'bold'
	  }

	  var mode = 'index'
	  var intersect = true

	  var $salesChart = $('#sales-chart')
	  // eslint-disable-next-line no-unused-vars
	  var salesChart = new Chart($salesChart, {
	    type: 'bar',
	    data: {
	      labels: ['월', '화', '수', '목', '금', '토', '일'],
	      datasets: [
	        {
	          backgroundColor: '#007bff',
	          borderColor: '#007bff',
	          data: [1000, 2000, 3000, 2500, 2700, 2500, 3000]
	        },
	        {
	          backgroundColor: '#ced4da',
	          borderColor: '#ced4da',
	          data: [700, 1700, 2700, 2000, 1800, 1500, 2000]
	        }
	      ]
	    },
	    options: {
	      maintainAspectRatio: false,
	      tooltips: {
	        mode: mode,
	        intersect: intersect
	      },
	      hover: {
	        mode: mode,
	        intersect: intersect
	      },
	      legend: {
	        display: false
	      },
	      scales: {
	        yAxes: [{
	          // display: false,
	          gridLines: {
	            display: true,
	            lineWidth: '4px',
	            color: 'rgba(0, 0, 0, .2)',
	            zeroLineColor: 'transparent'
	          },
	          ticks: $.extend({
	            beginAtZero: true,

	            // Include a dollar sign in the ticks
	            callback: function (value) {
	              if (value >= 1000) {
	                value /= 1000
	                value += 'k'
	              }

	              return '$' + value
	            }
	          }, ticksStyle)
	        }],
	        xAxes: [{
	          display: true,
	          gridLines: {
	            display: false
	          },
	          ticks: ticksStyle
	        }]
	      }
	    }
	  })

	  var $visitorsChart = $('#visitors-chart')
	  // eslint-disable-next-line no-unused-vars
	  var visitorsChart = new Chart($visitorsChart, {
	    data: {
	      labels: ['월', '화', '수', '목', '금', '토', '일'],
	      datasets: [{
	        type: 'line',
	        data: [${joinThisWeek.mon}, ${joinThisWeek.tue}, ${joinThisWeek.wed}, ${joinThisWeek.thu}, ${joinThisWeek.fri}, ${joinThisWeek.sat}, ${joinThisWeek.sun}],
	        backgroundColor: 'transparent',
	        borderColor: '#007bff',
	        pointBorderColor: '#007bff',
	        pointBackgroundColor: '#007bff',
	        fill: false
	        // pointHoverBackgroundColor: '#007bff',
	        // pointHoverBorderColor    : '#007bff'
	      },
	      {
	        type: 'line',
	        data: [${joinLastWeek.mon}, ${joinLastWeek.tue}, ${joinLastWeek.wed}, ${joinLastWeek.thu}, ${joinLastWeek.fri}, ${joinLastWeek.sat}, ${joinLastWeek.sun}],
	        backgroundColor: 'tansparent',
	        borderColor: '#ced4da',
	        pointBorderColor: '#ced4da',
	        pointBackgroundColor: '#ced4da',
	        fill: false
	        // pointHoverBackgroundColor: '#ced4da',
	        // pointHoverBorderColor    : '#ced4da'
	      }]
	    },
	    options: {
	      maintainAspectRatio: false,
	      tooltips: {
	        mode: mode,
	        intersect: intersect
	      },
	      hover: {
	        mode: mode,
	        intersect: intersect
	      },
	      legend: {
	        display: false
	      },
	      scales: {
	        yAxes: [{
	          // display: false,
	          gridLines: {
	            display: true,
	            lineWidth: '4px',
	            color: 'rgba(0, 0, 0, .2)',
	            zeroLineColor: 'transparent'
	          },
	          ticks: $.extend({
	            beginAtZero: true,
	            suggestedMax: 30
	          }, ticksStyle) 
	        }],
	        xAxes: [{
	          display: true,
	          gridLines: {
	            display: false
	          },
	          ticks: ticksStyle
	        }]
	      }
	    }
	  })
	})

</script>
