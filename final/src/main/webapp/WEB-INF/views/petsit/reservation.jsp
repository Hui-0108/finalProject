<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    


<div id="carouselExampleIndicators" class="carousel slide picture" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="${pageContext.request.contextPath}/resources/images/petsit/home1.jpg" class="d-block w-100" alt="집1">
    </div>
    <div class="carousel-item">
      <img src="${pageContext.request.contextPath}/resources/images/petsit/home2.jpg" class="d-block w-100" alt="집2">
    </div>
    <div class="carousel-item">
      <img src="${pageContext.request.contextPath}/resources/images/petsit/home3.jpg" class="d-block w-100" alt="집3">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="body-main">
	<div class="body-left">
	</div>
	<div class="body-right">
	</div>
</div>

