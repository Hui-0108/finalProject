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
    padding-top: 70px;
  }
}

.form-signin-heading {
  text-align: center;
  font-weight:bold;  
  font-family: NanumGothic, 나눔고딕, "Malgun Gothic", "맑은 고딕", sans-serif;
  margin-bottom: 30px;
}

.loginTF {
  max-width: 370px; height:45px;
  padding: 5px;
  padding-left: 15px;
  margin-top:5px; margin-bottom:15px;
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
	    <form class="form-signin" name="loginForm" method="post">
	        <h2 class="form-signin-heading">회원 로그인</h2>
	        <input type="text" id="mId" name="mId" class="form-control loginTF" autofocus="autofocus"
	                  placeholder="아이디">
	        <input type="password" id="mPwd" name="mPwd" class="form-control loginTF"
	                  placeholder="패스워드">
	        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="sendLogin();">로그인 <span class="glyphicon glyphicon-ok"></span></button>
	        
	        <div style="margin-top:10px; text-align: center;">
	            <button type="button" class="btn btn-link">회원가입</button>
	            <button type="button" class="btn btn-link">아이디찾기</button>
	            <button type="button" class="btn btn-link">패스워드찾기</button>
	        </div>
	        
	        <div style="margin-top:10px; text-align: center;">${message}</div>
	    </form>
	</div>
</div>
