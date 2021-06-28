<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%-- <jsp:useBean id="toDay" class="java.util.Date" />
<fmt:formatDate value="${toDay}" pattern="yyyyMMdd" /> --%>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script type="text/javascript">


function ajaxFun(url, method, dataType, query, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			 fn(data);
			 
		},
		error:function(e) {
			console.log(e.responseText);
		}
	});
}


$(function(){
	var url="${pageContext.request.contextPath}/stat/stat";
	
/* 	var now = new Date();
	var y = now.getFullYear();
	var m = now.getMonth()+1;
	if(m<10) m="0"+m;
	var d = 1;
	var bgnde=y+""+m+""+d; */
	
	var now = new Date();
	var y = now.getFullYear();
	var m = now.getMonth()+1;
	if(m<10) m="0"+m;
	var d = now.getDate();
	if(d<0) d="0"+d;
/* 	var date1=y+""+m+"0"+1; */
	var date2=y+""+m+""+d;
	
	var query=/* "date1="+date1+ */"date2="+date2;
	/* console.log(date1); */

	var fn = function(data){
		// console.log(data);
		
		printAnimal(data);
	}
	
	ajaxFun(url, "get", "json", query, fn);
	
	function printAnimal(data) {
		console.log(data);
		
/* 		var out="<h3>유기동물 발생 현황</h3><hr>"; */
		var totalCount = data.response.body.totalCount;
/* 		out+=y+"년 "+m+"월 "+d+"일"+"<br>"+"<br>"
			+"오늘의 유기동물 수는:"+totalCount+"마리입니다."<br>"+"<br>"; */
		
/* 		$(".totalCount").html("오늘 보호 중인 유기동물 수는 "+totalCount+"마리입니다"+"<br>"+"<br>") */
		
		var p=0, ad=0, e=0, b=0, don=0, n=0, a=0;

		var out="지금 보호 중인 아이들"+"<br>"+"<br>";
		
 		$.each(data.response.body.items.item, function(index, item) {
 			
			if(item.processState=="보호중") p++;
			else if(item.processState=="종료(입양)") ad++;
			else if(item.processState=="종료(반환)") e++;
			else if(item.processState=="종료(방사)") b++;
			else if(item.processState=="종료(기증)") don++;
			else if(item.processState=="종료(자연사)") n++;
			else if(item.processState=="종료(안락사)") a++;
			
			 out+="품종:"+item.kindCd+"<br>"+"나이:"+item.age+"<br>"+"성별:"+item.sexCd+"<br>"
			  	+"보호 장소:"+item.careAddr+"<br>"+"발견 장소:"+item.happenPlace+"<br>"+"<br>";
				
		});
		$("#today").html(out);
		var arr=[];
 		
		arr.push({name:"보호 중", y:p});
		arr.push({name:"입양", y:ad==0?5:0}); // y:ad==0?5:0
		arr.push({name:"반환", y:e==0?7:0});
		arr.push({name:"방사", y:b==0?1:0});
		arr.push({name:"기증", y:don==0?3:0});
		arr.push({name:"자연사", y:n==0?4:0});
		arr.push({name:"안락사", y:a==0?1:0});

/* 		$.each(data.response.body.items.item, function(index, item){
			// out+="전체 마릿수:"+items.totalCount+"<br>";
			out+="발생 지역:"+item.orgNm+"<br>";
		}); */
		
		
		
/*		
		$.each(data.response.body.items.item, function(index, item){
			// out+="전체 마릿수:"+items.totalCount+"<br>";
			out+="발생 지역:"+item.orgNm+"<br>";
		}); */
/* 		$.each(data.response.body.items.item, function(index, item){
			out+="보호 중인 유기동물 정보"+"<br>"+item.kindCd";
			$("#Animal").html(out);
		}); */
/* 		out+="오늘 보호 중인 동물 수:"+totalCount+"<br>";
		$("#Animal").html(out); */

		Highcharts.chart('dogCatcontainer', {
			colors: ['#FF8000', '#F4FA58', '#82FA58', '#58FA82', '#81F7F3', '#BCA9F5', '#FA5858'],
		    chart: {
		        plotBackgroundColor: null,
		        plotBorderWidth: null,
		        plotShadow: false,
		        type: 'pie'
		    },
		    
		    title: {
		        text: '오늘의 유기동물 현황'
		    },
		    tooltip: {
		        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		    },
		    accessibility: {
		        point: {
		            valueSuffix: '%'
		        }
		    },
		    plotOptions: {
		        pie: {
		            allowPointSelect: true,
		            cursor: 'pointer',
		            dataLabels: {
		                enabled: true,
		                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
		            }
		        }
		    },
		    series: [{
		        name: '동물수',
		        colorByPoint: true,
		        data: arr
		    }]
		});		
		
		Highcharts.chart('Catdogcontainer', {
			colors: ['#FF8000', '#F4FA58', '#82FA58', '#58FA82', '#81F7F3', '#BCA9F5', '#FA5858'],
		    chart: {
		        plotBackgroundColor: null,
		        plotBorderWidth: null,
		        plotShadow: false,
		        type: 'bar',
		        spacingLeft: 100
		    },
		    
		    title: {
		        text: '오늘의 유기동물 현황'
		    },
		    xAxis: {
		        categories: ['보호중', '입양', '반환', '방사', '기증', '자연사', '안락사'],
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: '단위: 마리'
		        }
		    },
		    legend: {
		        reversed: true
		    },
		    plotOptions: {
		        series: {
		            stacking: 'normal'
		        }
		    },
		    series: [{
		        name: '마릿수', 
		        data: arr
		    } ]
		});
	}
});


</script>

<!--      	<p style="padding: 5px;">
     		<button type="button" id="btnAnimal">유기동물 발생 현황</button>
     	</p> -->
<div id="dogCatcontainer" class="dogCatcontainer" align="center" style="width: 95%;"></div>
<br>
<br>
<br>
<br>
<div id="Catdogcontainer" class="Catdogcontainer" align="center" style= "width: 90%;"></div>
<br>
<br>
<br>
<br>
<!-- <div class="totalCount" align="center" style="width: 95%;"></div> -->
<i class="fas fa-dog" align="center" style="width: 95%;"></i><div id="today" align="center" style="width: 95%;"></div>

<!-- <div id="Animal" align="center" style="width: 95%;"></div> -->

