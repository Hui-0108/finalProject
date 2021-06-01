<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><tiles:insertAttribute name="title"/></title>
	<link rel="icon" href="data:;base64,iVBORw0KGgo=">
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mogo/css/bootstrap.min.css">
	<!-- 에러 주석 처리 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mogo/css/materialdesignicons.min.css"> -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mogo/css/jquery.mCustomScrollbar.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mogo/css/prettyPhoto.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mogo/css/unslider.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mogo/css/template.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fontawesome/css/all.css" rel="stylesheet">
	
	<script src="https://code.highcharts.com/highcharts.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/jquery.min.js"></script>
	
	<script type="text/javascript">
	
	$(function(){
		$(document)
		   .ajaxStart(function(){ // AJAX 시작
			   $("#loadingImage").center();
			   $("#loadingLayout").fadeTo("slow", 0.5);
		   })
		   .ajaxComplete(function(){ // AJAX 종료
			   $("#loadingLayout").hide();
		   });
	});
	</script>
</head>

	<header id="nino-header">
	    <tiles:insertAttribute name="header"/>
	</header>
		
	<main>
	    <tiles:insertAttribute name="body"/>
	</main>
	
	<footer>
	    <tiles:insertAttribute name="footer"/>
	</footer>

	<div id="loadingLayout" style="display: none; position: absolute; left: 0; top:0; width: 100%; height: 100%; z-index: 9000; background: #eeeeee;">
		<i id="loadingImage" class="fa fa-cog fa-spin fa-fw" style="font-size: 70px; color: 333;"></i> 
	</div>
	
	<!-- javascript -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/jquery.min.js"></script>	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/modernizr.custom.97074.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/unslider-min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mogo/js/template.js"></script>
	
</html>