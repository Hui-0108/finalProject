<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/js/jquery.min.js"></script>
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
	$("#btnXmlOk").click(function(){
		// XML 받기
		var url="${pageContext.request.contextPath}/stat/xmlList";
		var query="time="+new Date().getTime();
		
		var fn=function(data){
			console.log(data);
			printXML(data);
		}
		ajaxFun(url, "get", "xml", query, fn);

	});

$(function(){
	$("#btnCovid").click(function(){
		var url="${pageContext.request.contextPath}/stat/stat";
		var date = "20210527";
		
		var query="date="+date;
		var fn = function(data){
			// console.log(data);
			printCovid(data);
		}
		
		ajaxFun(url, "get", "json", query, fn);
	});
	
	function printCovid(data) {
		var out="<h3>유기동물 발생 현황</h3><hr>";
		
		$.each(data.response.body.items.item, function(index, item){
			if(index==0) {
				out+="날짜:"+item.stdDay+"<br>";
			}
			out+=item.gubun+" - 전일대비증가수:"+item.incDec+",누적수:"+item.defCnt+"<br>";
		});
		
		$("#resultLayout").html(out);
	}
});

</script>
</head>
<body>
     	<p style="padding: 5px;">
     		<button type="button" id="btnCovid">유기동물 발생 현황</button>
     	</p>
</body>
</html>