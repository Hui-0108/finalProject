<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="mypageInfo" align="center">
	<div class="body-container" style="width: 700px;">
		<div class="body-title">
	        <h3><i class="fas fa-user"></i> 회원 기본 정보 </h3>
		</div>
		<div class="body-editButton">
	        <span> 수정완료 </span>
		</div>
	    
		<div class="body-main">
		<form name="memberForm" method="post">
			<table class="table table-content">
				<tr>
					<td>
						<label>아이디</label>
					</td>
					<td>
						<p>
							<span>${dto.mId}</span>
						</p>
					</td>
				</tr>
				
				<tr>
					<td>
						<label>이름</label>
					</td>
					<td>
						<p>
							<span>${dto.mName}</span>
						</p>
					</td>
				</tr>
				
				<tr>
					<td>
						<label>생년월일</label>
					</td>
					<td>
						<p>
							${dto.mBirth}
						</p>
					</td>
				</tr>
				  
				<tr>
					<td>
						<label>이메일</label>
					</td>
					<td>
						<p>
							<span>${dto.mEmail}</span>
						</p>
					</td>
				</tr>
				  
				<tr>
					<td>
						<label>전화번호</label>
					</td>
					<td>
						<p>
							<span>${dto.mTel}</span>
						</p>
					</td>
				</tr>
				  
				<tr>
					<td>
						<label>우편번호</label>
					</td>
					<td>
						<p>
							<span>${dto.mZip}</span>       
						</p>
					</td>
				</tr>
				  
				<tr>
					<td>
						<label>주소</label>
					</td>
					<td>
						<p>
							<span>${dto.mAddr1}</span>
						</p>
						<p>
							<span>${dto.mAddr2}</span>
						</p>
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>

</div>