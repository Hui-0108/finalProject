<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<div class="petsitWrite" align="center">
<div class="body"  style="width: 1300px;">
	<div class="write"><h3>펫시터 글 올리기</h3></div>
	<div class="body-title" style="width:900px; border:3px solid blue;">
		<form name="petsitForm" method="post" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<td>제&nbsp;&nbsp;&nbsp;목</td>
				<td>
					<input type="text" name="petTitle" maxlength="100" class="boxTF" value="${dto.petTitle}">
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>
					${sessionScope.member.mNick}
				</td>
			</tr>
			
			<tr>
				<td>내&nbsp;&nbsp;&nbsp;용</td>
				<td>
					<textarea name="petContent" class="boxTA">${dto.petConent}</textarea>
				</td>
			</tr>
			
			<tr>
				<td>첨&nbsp;&nbsp;&nbsp;부</td>
				<td>
					<input type="file" name="upload" class="boxTF">
				</td>
			</tr>
			
			<c:if test="${mode=='upload'}">
				<tr>
					<td>첨부된파일</td>
					<td>
						<c:if test="${not empty dto.saveFilename}">
							<a href="${pageContext.request.contextPath}/petsit/deleteFile?num=${dto.num}&page=${page}"><i class="far fa-trash-alt"></i></a>
						</c:if>
						
					</td>
				</tr>
			</c:if>			
			
		</table>		
			
			<table class="table table-footer">
				<tr>
					<td>
						<button type="button" class="btn" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}</button>
						<button type="reset" class="btn">다시입력</button>
						<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/bbs/list';">${mode=='update'?'수정취소':'등록취소'}</button>
							<c:if test="${mode=='update'}">
								<input type="hidden" name="num" value="${dto.num}">
								<input type="hidden" name="petImg" value="${dto.petImg}">
								<input type="hidden" name="originalFilename" value="${dto.originalFilename}">
								<input type="hidden" name="page" value="${page}">
							</c:if>
					</td>
				</tr>
		</table>	
		</form>
	</div>
</div>
</div>