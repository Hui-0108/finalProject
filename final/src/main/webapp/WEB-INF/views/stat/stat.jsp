<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기동물 통계</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/js/jquery.min.js"></script>
<script type="text/javascript">

function ajaxFun(url, method, dataType, query, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			//console.log(data);
			 fn(data);
		},
		error:function(e) {
			console.log(e.responseText);
		}
	});
}


$(function(){
	// $("#btnAnimal").click(function(){
		// console.log("11");
		var url="${pageContext.request.contextPath}/stat/stat";
		var date = "20210621";
		
		var query="date="+date;
		var fn = function(data){
			// console.log(data);
			printAnimal(data);
		}
		
		ajaxFun(url, "get", "json", query, fn);
	// });
	
	function printAnimal(data) {
		// console.log("111", data.response.body.items.item);
		var out="<h3>유기동물 발생 현황</h3><hr>";
		
		$.each(data.response.body.items.item, function(index, item){
			out+="발생 지역:"+item.orgNm+"<br>";
		});
		
		// out+="오늘 보호 중인 동물 수:"+totalCount+"<br>";
		$("#Animal").html(out);
	}
});

</script>
</head>
<body>
<!--      	<p style="padding: 5px;">
     		<button type="button" id="btnAnimal">유기동물 발생 현황</button>
     	</p> -->
<div id="Animal" align="center" style="width: 95%;"></div>


</body>
</html>