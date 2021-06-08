<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<script type="text/javascript">
    function sendOk() {
        var f = document.petsitForm;

    	var str = f.petTitle.value;
        if(!str) {
            alert("제목을 입력하세요. ");
            f.petTitle.focus();
            return;
        }

    	str = f.petContent.value;
        if(!str) {
            alert("소개글을 입력하세요. ");
            f.petContent.focus();
            return;
        }
        
        var mode="${mode}";
        if(mode=="write"||mode=="update" && f.upload.value!="") {
    		if(! /(\.gif|\.jpg|\.png|\.jpeg)$/i.test(f.upload.value)) {
    			alert('파일 형식이 올바르지 않습니다. 이미지 파일만 첨부 가능합니다.');
    			f.upload.focus();
    			return;
    		}
    	}
    	
    	f.action="${pageContext.request.contextPath}/petsit/${mode}";
		//action: 폼 데이터(form data)를 서버로 보낼 때 해당 데이터가 도착할 URL을 명시
        		
		f.submit(); 
    }
</script>

<div class="petsitWrite" align="center">
<div class="body"  style="width: 1300px;">
	<div class="write"><h3>펫시터 글 올리기</h3></div>
	<div class="body-title">
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
				<td>소&nbsp;&nbsp;&nbsp;개</td>
				<td>
					<textarea name="petContent" class="boxTA">${dto.petContent}</textarea>
				</td>
			</tr>
			<tr>
				<td rowspan="3">기본&nbsp;&nbsp;&nbsp;옵션</td>
				<td>
					<div class="spaceNeed">반려동물</div>
					<label><input type="radio" name="petYN" value="1" checked="checked"> 예 </label>&nbsp;&nbsp;&nbsp; 				
					<label><input type="radio" name="petYN" value="0"> 아니오</label>
				</td>
			</tr>			
			<tr>
				<td>	
					<div class="spaceNeed">대형견</div>
					<label><input type="radio" name="petLarge" value="1" checked="checked"> 가능 </label>&nbsp;&nbsp;&nbsp;				
					<label><input type="radio" name="petLarge" value="0"> 불가능 </label>
				</td>
			</tr>
			<tr>
				<td>	
					<div class="spaceNeed">마당</div>
					<label><input type="radio" name="petYard" value="1" checked="checked"> 있음 </label>&nbsp;&nbsp;&nbsp; 				
					<label><input type="radio" name="petYard" value="0"> 없음 </label>
				</td>
			</tr>
			<tr>
				<td rowspan="4">추가&nbsp;&nbsp;&nbsp;정보</td>
				<td>	
					<div class="spaceNeed">가족형태</div>
					<label><input type="radio" name="petFamily" value="1" checked="checked"> 2인 이하 </label>&nbsp;&nbsp;&nbsp; 				
					<label><input type="radio" name="petFamily" value="2"> 3인 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="petFamily" value="3"> 4인 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="petFamily" value="4"> 4인 초과 </label>
				</td>
			</tr>
			<tr>
				<td>	
					<div class="spaceNeed">산책로</div>
					<label><input type="radio" name="petWalk" value="1" checked="checked"> 있음 </label>&nbsp;&nbsp;&nbsp; 				
					<label><input type="radio" name="petWalk" value="0"> 없음 </label>
				</td>
			</tr>	
			<tr>
				<td>	
					<div class="spaceNeed">주거형태</div>&nbsp;
					<label><input type="radio" name="petLiving" value="1" checked="checked"> 아파트 </label>&nbsp;&nbsp;&nbsp;				
					<label><input type="radio" name="petLiving" value="2"> 단독주택 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="petLiving" value="3"> 빌라 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="petLiving" value="4"> 오피스텔 </label>
				</td>
			</tr>		
			<tr>
				<td>	
					<div class="spaceNeed">자녀</div>
					<label><input type="radio" name="petChild" value="1" checked="checked"> 없음 </label>&nbsp;&nbsp;&nbsp; 				
					<label><input type="radio" name="petChild" value="2"> 미취학아동 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="petChild" value="3"> 초등생 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="petChild" value="4"> 중등생 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="petChild" value="5"> 고등학생이상 </label>
				</td>
			</tr>	
			<tr>
				<td>	
					<div class="spaceNeed">근무가능요일</div>&nbsp;
				</td>
				<td>
					<label><input type="checkbox" name="petSchedule" value="1"> 월 </label>&nbsp;&nbsp;&nbsp;				
					<label><input type="checkbox" name="petSchedule" value="2"> 화 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="checkbox" name="petSchedule" value="3"> 수 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="checkbox" name="petSchedule" value="4"> 목 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="checkbox" name="petSchedule" value="5"> 금 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="checkbox" name="petSchedule" value="6"> 토 </label>&nbsp;&nbsp;&nbsp;
					<label><input type="checkbox" name="petSchedule" value="7"> 일 </label>&nbsp;&nbsp;&nbsp;
				</td>
			</tr>		
			<tr>
				<td>	
					<div class="spaceNeed">자격증 취득일</div>				
				</td>
				<td>
					<input type="date" name="petCertif" maxlength="20"  class="boxTF"> 
				</td>
			</tr>
			<tr>
				<td>집사진 3장 첨부</td>
				<td>
					<input type="file" name="upload" class="boxTF" multiple="multiple">
				</td>
			</tr>
			<c:if test="${mode=='update'}">
				<tr>
					<td>첨부된파일</td>
					<td>
						<c:if test="${not empty dto.petImg}">
							<a href="${pageContext.request.contextPath}/petsit/deleteFile?num=${dto.petNum}&page=${page}"><i class="far fa-trash-alt"></i></a>
						</c:if>		
					</td>
				</tr>
			</c:if>	
			<tr>
				<td>계좌 번호</td>
				<td>
					<input type="text" name="petAct" maxlength="100" class="boxTF">
				</td>
			</tr>	
		</table>		
		
		<table class="table table-footer">
			<tr>
				<td>
					<button type="button" class="btn" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}</button>
					<button type="reset" class="btn">다시입력</button>
					<button type="button" class="btn" onclick="javascript:location.href='${pageContext.request.contextPath}/petsit/main';">${mode=='update'?'수정취소':'등록취소'}</button>
					<c:if test="${mode=='update'}">
						<input type="hidden" name="num" value="${dto.petNum}">
						<input type="hidden" name="page" value="${page}">
					</c:if>
				</td>
			</tr>
		</table>	
		</form>
	</div>
</div>
</div>