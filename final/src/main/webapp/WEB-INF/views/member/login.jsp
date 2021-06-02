<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.form-signin {
  max-width: 400px;
  padding: 15px;
  margin: 0 auto;
}

@media (min-width: 768px) {
  .form-signin {
    padding-top: 5px;
  }
}

.form-signin-heading {
  text-align: center;
  font-weight:bold;  
  font-family: NanumGothic, 나눔고딕, "Malgun Gothic", "맑은 고딕", sans-serif;
  margin: 10px 0px 10px;
}

.body-main {
  text-align: center;
}

.loginTF {
  max-width: 370px; height:45px;
  padding: 5px;
  padding-left: 15px;
  margin-top:5px; margin-bottom:15px;
}

.pc{
  width: 250px;
  height: 50px;
  margin: 0px auto;
  margin-top: 50px;
}

.pc .painting {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.center {
  margin-top: 10px; 
  text-align: center;
}

.message {
  margin-top: 10px; 
  text-align: center;
}

.msg {
  text-align: center; 
  margin-top: 10px; 
}

.hr{
  width: 400px;
  color: blue;
}

</style>

<script type="text/javascript">
function sendLogin() {
	var f = document.loginForm;

	var str = f.mId.value;
	if(!str) {
		f.mId.focus();
		return;
	}

	str = f.mPwd.value;
	if(!str) {
		f.mPwd.focus();
		return;
	}

	f.action = "${pageContext.request.contextPath}/member/login";
	f.submit();
}
</script>
<div class="body-container">
	<div class="body-main">
		<div class="pc">
	    	<img src="${pageContext.request.contextPath}/resources/images/login/painting.jpg" class="painting">
	    </div>
	    <span>개묘개묘는 입양하는 당신을 응원합니다!</span>  	
	    <form class="form-signin" name="loginForm" method="post">
	        <h3 class="form-signin-heading">회원 로그인</h3>  
	        <input type="text" id="mId" name="mId" class="form-control loginTF" autofocus="autofocus" placeholder="아이디">
	        <input type="password" id="mPwd" name="mPwd" class="form-control loginTF" placeholder="패스워드">
	        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="sendLogin();">로그인 <span class="glyphicon glyphicon-ok"></span></button>
	        <div class="center">
	            <button type="button" class="btn btn-link">회원가입 </button>
	            <button type="button" class="btn btn-link">아이디찾기 </button>
	            <button type="button" class="btn btn-link">패스워드찾기</button>
	        </div>
	        <div class="message">${message}</div>
	    </form>
	</div>
	<div class="center"><hr class="hr"></div>
	<div>
		<form class="form-signin">
	        <h3 class="form-signin-heading">비회원 주문조회</h3>
	        <input type="text" class="form-control loginTF" autofocus="autofocus" placeholder="주문자명">
	        <input type="password" class="form-control loginTF" placeholder="주문번호">
	        <button class="btn btn-lg btn-primary btn-block" type="button">확인 <span class="glyphicon glyphicon-ok"></span></button>     
	        <div class="msg"><span>*주문번호 분실시 고객센터에 문의바랍니다</span></div>
	        <div class="message">${message}</div>
	    </form>
	</div>
</div>


