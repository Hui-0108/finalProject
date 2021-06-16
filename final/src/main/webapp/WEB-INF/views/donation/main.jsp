<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dateUtil.js"></script>
<script type="text/javascript">
function memberOk() {
	
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
</div>