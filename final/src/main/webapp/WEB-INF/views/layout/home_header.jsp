﻿<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
@font-face {
    font-family: 'Cafe24Ssurround';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.header {
	font-family: Cafe24Ssurround, sans-serif;
	position: absolute;
	width: 100%;
	height: 35px;
	z-index: 6;
	color: white;
	position: fixed;
}

.nav-container {
	display: inline-block;
	width: 100%;
	margin: 0;
	padding: 0;
	list-style-type: none;
	border-bottom: 1px solid white;
}

.nav-item {
	padding: 16px;
	cursor: pointer;
}

.nav-item a {
	text-align: center;
	text-decoration: none;
	color: white;
}

.nav-item {
	float: right;
}

.nav-logo {
	padding: 13px;
	margin-right: 5px;
	cursor: pointer;
	display: inline-block;
	clear: both;
	float: left;
	font-size: 20px;
	font-weight: 700;
}

</style>

<header>
<div class="header">
	<nav>
		<ul class="nav-container">
			<li><span class="nav-logo">개묘개묘</span></li>
			<li class="nav-item"><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
			<li class="nav-item"><a href="#"><i class="fas fa-user"></i></a></li>
			<li class="nav-item"><a href="#"><i class="fas fa-search"></i></a></li>
		</ul>
	</nav>
</div>
</header>