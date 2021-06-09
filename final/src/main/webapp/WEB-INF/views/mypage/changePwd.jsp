<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script>
$(function() {
	$("body").on("click", "#changePwd", function(e) {
		
		// 유효성검사
		var str;
		
	    str = $("#mPwd").val();
	    if(!str) {
	        alert("비밀번호를 입력해주세요.");
	        $("#mPwd").focus();
	        return;
	    }
	    
	    str = $("#pwdOk").val();
	    if(!str) {
	        alert("비밀번호를 입력해주세요.");
	        $("#pwdOk").focus();
	        return;
	    }
 		if(str != $("#mPwd").val()) {
 			alert("비밀번호가 일치하지 않습니다.");
 			$("#pwdOk").focus();
	        return;
	    }
	    
	    str = $("#currPwd").val();
	    if(!str) {
	        alert("비밀번호를 입력해주세요.");
	        $("#currPwd").focus();
	        return;
	    }
		
		
		// json 형식으로 데이터 set
		var params = {
			mPwd : $("#mPwd").val()
			,currPwd : $("#currPwd").val()
		}
		
		// ajax
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/mypage/changePwd",
			data:params,
			success:function(data){
				if(data.state == "true") {
					alert("비밀번호 변경 완료! 다시 로그인 해주세요.");
					location.replace("${pageContext.request.contextPath}/");
				}
				if(data.state == "false") {
					alert("비밀번호가 틀렸습니다.");
				}
			},
			error:function(){
				alert("error");
			}
		});
		
	});
});
</script>


<div class="mypagePwd" align="center">
	<div class="body-container">
		<div class="body-title">
			 <h3> 비밀번호 변경 </h3>
		</div>
		<div class="body-main">
			<table>
			
				<tr>
					<td>
						<label> 비밀번호 </label> 
					</td>
					<td>
						<p><input id="mPwd" type="password"></p>
					</td>
				</tr>
				
				<tr>
					<td>
						<label> 비밀번호 확인 </label> 
					</td>
					<td>
						<p><input id="pwdOk" type="password"></p>
					</td>
				</tr>
				
				<tr>
					<td>
						<label> 현재 비밀번호 </label> 
					</td>
					<td>
						<p><input id="currPwd" type="password"></p>
					</td>
				</tr>
				
			</table>
			<input type="button" id="changePwd" value="제출">
		</div>
	</div>
	
</div>