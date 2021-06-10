<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.members-form {
	width: 430px;
	padding: 45px 10px 15px;
    margin: 0 auto;
    background: #fefeff;
}

.members-form .members-title {
	text-align: center;
	padding: 10px 0 20px;
}
.members-form .members-title > h3 {
	font-weight: bold; font-size:26px; color: #424951;
}

.members-form .info-box {
	padding: 30px 20px;
    box-shadow: 0 0 15px 0 rgb(2 59 109 / 10%);
}

.members-form .row {
	margin-bottom: 1.5rem;
}

.members-form input {
	display: block;
	width: 100%;
	padding: 10px 10px;
}

.members-message {
    margin: 0 auto;
	padding: 5px 5px 20px;
}
.members-message p {
	color: #023b6d;
}
</style>

<script type="text/javascript">
function sendOk() {
	var f = document.pwdForm;

	var str = f.mEmail.value;
	if(!str) {
		alert("이메일을 입력하세요. ");
		f.mEmail.focus();
		return;
	}

	f.action = "${pageContext.request.contextPath}/member/findId";
	f.submit();
}
</script>

<style>
div {
	text-align: center;
}
</style>

<div class="container body-container">
	<div class="inner-page">
		<div class="members-form">
			<div class="members-title">
				<h3><i class="icofont-lock"></i> 아이디 찾기</h3>
			</div>
			<div class="info-box">
				<form name="pwdForm" method="post">
					<div class="text-center">
						회원 이메일을 입력하세요.
					</div>
					<br>
					<div class="row">
						<input name="mEmail" type="text" class="boxTF" placeholder="이메일">
					</div>
					<div>
						<button type="button" class="btnConfirm" onclick="sendOk();">확인</button>
					</div>
				</form>
			</div>
		</div>
		<div class="members-message">
			<p class="text-center">${message}</p>
		</div>
    </div>
</div>
