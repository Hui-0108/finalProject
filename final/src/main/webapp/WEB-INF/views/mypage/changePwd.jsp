<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
						<p><input name="pwd" type="password"></p>
					</td>
				</tr>
				
				<tr>
					<td>
						<label> 비밀번호 확인 </label> 
					</td>
					<td>
						<p><input name="pwd" type="password"></p>
					</td>
				</tr>
				
				<tr>
					<td>
						<label> 현재 비밀번호 </label> 
					</td>
					<td>
						<p><input name="currentPwd" type="password"></p>
					</td>
				</tr>
				
			</table>
		</form>
		</div>
	</div>
</div>