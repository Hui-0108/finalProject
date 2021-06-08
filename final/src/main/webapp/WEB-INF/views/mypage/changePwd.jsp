<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script type="text/javascript">

</script>


<div class="mypagePwd" align="center">
	<div class="body-container">
		<div class="body-title">
			 <h3> 비밀번호 변경 </h3>
		</div>
		<div class="body-main">
		<form name="pwdForm" method="post">
			<table>
			
				<tr>
					<td>
						<label> 비밀번호 </label> 
					</td>
					<td>
						<p><input id="mPwd" name="mPwd" type="password"></p>
					</td>
				</tr>
				
				<tr>
					<td>
						<label> 비밀번호 확인 </label> 
					</td>
					<td>
						<p><input id="pwdOk" name="pwdOk" type="password"></p>
					</td>
				</tr>
				
				<tr>
					<td>
						<label> 현재 비밀번호 </label> 
					</td>
					<td>
						<p><input id="currPwd" name="currPwd" type="password"></p>
					</td>
				</tr>
				
			</table>
			<button type="button" onclick="changePwd();"> 임시 확인 </button>
		</form>
		</div>
	</div>
	
<script>
	function changePwd() {
		var f = document.pwdForm;
		var str;
		
	    str = f.mPwd.value;
	    if(!str) {
	        alert("비밀번호를 입력해주세요.");
	        f.mPwd.focus();
	        return;
	    }
	    
	    str = f.pwdOk.value;
	    if(!str) {
	        alert("비밀번호를 입력해주세요.");
	        f.pwdOk.focus();
	        return;
	    }
 		if(str != f.mPwd.value) {
 			alert("비밀번호가 일치하지 않습니다.");
	        f.pwdOk.focus();
	        return;
	    }
	    
	    str = f.currPwd.value;
	    if(!str) {
	        alert("비밀번호를 입력해주세요.");
	        f.currPwd.focus();
	        return;
	    }
	    
	    f.action = "${pageContext.request.contextPath}/mypage/changePwd";
	    f.submit();
	}
	
	
</script>
</div>