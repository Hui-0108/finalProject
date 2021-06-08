<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- 상품 작성폼 (관리자) -->
<style type="text/css">

.productCreateBody{
	margin: 0;
	padding: 0;
	width: 1300px;
	font-family: 
}

.productTableForm{
	margin: auto;
	width: 100%;
}
.productTable{
	margin: auto;
	width: 800px;
}

.productCreateTitle{
	
}
.imgPreView {
    border: 1px solid #ccc;
    width: 200px;
    height: 200px;
    line-height: 45px;
    border-radius: 45px;
    background: #eee;
    position: relative;
    z-index: 9999;
    background-repeat: no-repeat;
    background-size: cover;
    text-align: center;
    font-size: 9px;
    font-family: 나눔고딕;
    margin-bottom: 20px;
    margin-top: 15px;    
}

.productCreateSelect{
    width: 150px;
    height: 30px;
    line-height: 30px;
    border-radius: 25px;
}

.productTableForm ul{
	list-style: none;
}
.categoryList{
	float: left;
}

.imgLeft{
	float: left;
    clear: both;
}

.contentLeft{
	float: left;
	padding-left: 0px;	
}

.contentClear{
	clear: both;
}
.imgText{
	padding-left: 5px;
    font-size: 20px;
}

.categoryHead{
	height: 30px;
}

</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data) {
			fn(data);
		},
		beforeSend:function(jqXHR) {
			jqXHR.setRequestHeader("AJAX", true);
		},
		error:function(jqXHR) {
			if(jqXHR.status===403) {
				login();
				return false;
			}
	    	
			console.log(jqXHR.responseText);
		}
	});
}





/*
$(function(){
	$(".delete-img").click(function(){
		if(! confirm("상품사진을 삭제 하시겠습니까?")){
			return false;
		}
		
		var $img = $(this);
		var pImgNum = $img.attr("data-ImgNum");
		var url = "${pageContext.request.contextPath}/product/deleteImg";
		$.post(url, {pImgNum:pImgNum}, function(data){
			$img.remove();
		}, "json");
	}
	
	
}); 
 */


	$(function(){
		//이미지 미리보기
		$("form[name=createdFrom] input[name=selectImg]").change(function(){
			var file=this.files[0];
			if(! file.type.match("image.*")) {
				this.focus();
				return false;
			}
			
			var reader = new FileReader();
			reader.onload = function(e) {
				$(".productTable .imgPreView").empty();
				$(".productTable .imgPreView").css("background-image", "url("+e.target.result+")");
			}
			reader.readAsDataURL(file);
		});
		
		$(".tableFooter .productReset").click(function(){
			$(".productTable .imgPreView").css("background-image", "none");
		});
		
	});
	

function sendOk() {
	var f = document.createdFrom;
	
	var str = f.pCateNum.value;
	
	if(str == 0){
		alert("카테고리를 선택하세요.");
		f.pCateNum.focus();
		return;
	}
	
	
	str = f.selectImg.value;
	if(! str){
		alert("제품사진을 첨부하세요.");
		f.selectImg.focus();
		return;
	}
	
	
	str = f.pName.value;	
	if(! str){
		alert("상품명을 입력하세요.");
		f.pName.focus();
		return;
	}
	
	str = f.pPrice.value;
	if(! str){
		alert("상품가격을 입력하세요.");
		f.pPrice.focus();
		return;
	}

	str = f.pDiscountRate.value;
	if(! str){
		alert("할인율을 입력하세요");
		f.pDiscountRate.focus();
		return;
	}
	
	str = f.storeSubOptNum.value;
	if(str==0){
		alert("상품에옵션이 없는 경우\n'옵션 없음'을 선택해주세요. ")
		f.storeSubOptNum.focus();
		return;
	}
	
	str = f.pContent.value;
	if(! str || str=="<p>&nbsp;</p>"){
		alert("제품 정보를 입력하세요.");
		f.pContent.focus();
		return;
	}
	
	str = f.pDetailCnt.value;
	if(! str){
		alert("수량을 입력하세요.");
		f.pDetailCnt.focus();
		return;
	}
	
	str = f.pDetailPrice.value;
	if(! str){
		alert("최종가격을 입력하세요.");
		f.pDetailPrice.focus();
		return;
	}
	
	f.action = "${pageContext.request.contextPath}/product/${mode}";
	f.submit();
}

$(function(){
	//옵션처리
	$("form select[name=storeMainOptNum]").change(function(){
		var storeMainOptNum = $(this).val();
		
		var url="${pageContext.request.contextPath}/product/option";
		
		var query = "storeMainOptNum="+storeMainOptNum;
		
		var storeSubOptNum = $(this).val();		
		$("form select[name=storeSubOptNum]").find('option').remove().end().append("<option value=''>옵션2</option>");
		
		var fn = function(data){
			
			$.each(data.optionList, function(index, item){
					var storeSubOptNum = item.storeSubOptNum;
					var storeSubOptName = item.storeSubOptName;
					var s = "<option value= '"+storeSubOptNum+"'>"+storeSubOptName+"</option>";
					$("form select[name=storeSubOptNum]").append(s);
			});
		};
		ajaxFun(url, "get", query, "json", fn);
		
	});
	

});



</script>


<div class="productBody">
	<div class="productCreateTitle">
		<h3><i class="far fa-edit"></i>상품 등록</h3>
	</div>
	<div class="productTableForm">
	<form name="createdFrom" method="post" enctype="multipart/form-data">
		<div class="productTable">
			<ul class="categoryHead">
				<li class="categoryList">			
					<select name="pCateNum" class="productCreateSelect">
						<option value="0" ${pCateNum==0?"selected='selected'":""}>카테고리</option>
						<c:forEach var="vo" items="${categorys}">
							<option value="${vo.pCateNum}" ${dto.pCateNum==vo.pCateNum?"selected='selected'":""}>${vo.pCateName}</option>
						</c:forEach>
					</select>		
				</li>
				<li class="categoryList">			
						<select name="storeMainOptNum" class="productCreateSelect">
							<option value="0" ${storeMainOptNum==0?"selected='selected'":""}>옵션1</option>
							<c:forEach var="vo" items="${mainOpts}">
								<option value="${vo.storeMainOptNum}" ${dto.storeMainOptNum==vo.storeMainOptNum?"selected='selected'":""}>${vo.storeMainOptName}</option>
							</c:forEach>
						</select>			
				</li>
				<li class="categoryList">			
						<select name="storeSubOptNum" class="productCreateSelect">
							<option value="0" ${storeSubOptNum==0?"selected='selected'":""}>옵션2</option>
							<c:forEach var="vo" items="${subOpts}">
								<option value="${vo.storeSubOptNum}" ${dto.storeSubOptNum==vo.storeSubOptNum?"selected='selected'":""}>${vo.storeSubOptName}</option>
							</c:forEach>
						</select>				
				</li>				
			</ul>
			
			<ul class="imgLeft">
				<li class="imgText">대표 이미지</li>
				<li>
					<div class="imgPreView"></div>
					<input type="file" name="selectImg" accept="image/*" multiple="multiple">
				</li>
			
			<c:if test="${mode=='update'}">
				<ul>
				<li class="imgText">대표 이미지</li>
					<li>
						<div class="">
							<c:forEach var="vo" items="${listImg}">
								<img class="delete-img" src="${pageContext.request.contextPath}/uploads/product/${vo.pImgName}" 
								data-ImgNum = "${vo.pImgNum}">
							</c:forEach>
						</div>
					</li>
				</ul>
			</c:if>
			</ul>
			<ul class="contentLeft">
				<li>상품명</li>
				<li>
					<input type="text" name="pName" value="${dto.pName}">
				</li>

				<li>상품가격</li>
				<li>
					<input type="text" name="pPrice" value="${dto.pPrice}">
				</li>

				<li>할인율</li>
				<li>
					<input type="text" name="pDiscountRate" value="${dto.pDiscountRate}">
				</li>

				<li>배송조건</li>
				<li>
					<label><input type="radio" name="delivType" value="0" ${empty dto || dto.delivType==0?"checked='checked'":""}>무료</label>
					<label><input type="radio" name="delivType" value="0" ${dto.delivType==1?"checked='checked'":""}>유료</label>					
				</li>

				<li style="vertical-align: top;">상세옵션수량</li>
				<li>
					<input type="text" name="pDetailCnt" value="${dto.pDetailCnt}">
				</li>

				<li>최종가격</li>
				<li>
					<input type="text" name="pDetailPrice" value="${dto.pDetailPrice}">
				</li>
			</ul>
			<ul class="contentClear">
				<li>상세정보</li>
				<li>
					<textarea name="pContent" id="content" class=""  style="height: 270px;">${dto.pContent}</textarea>
				</li>
			</ul>						
		
		<div class="tableFooter">
			<ul>
				<li>
					<button type="button" class="" onclick="sendOk();">${mode=='update'?'상품수정':'상품등록'}</button>
					<button type="reset" class="productReset">다시입력</button>
					<button type="button" class="" onclick="javascript:location.href='${pageContext.request.contextPath}/product/list';" >${mode=='update'?'수정취소':'등록취소'}</button>
					<c:if test="${mode='update'}">
						<input type="hidden" name="page" value="${page}">
						<input type="hidden" name="pName" value="${dto.pName}">
					</c:if>
				</li>
			</ul>
		</div>
		</div>
	</form>
	</div>
	
<script type="text/javascript">
//스마트에디터
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "content",
	sSkinURI: "${pageContext.request.contextPath}/resources/se/SmartEditor2Skin.html",	
	htParams : {bUseToolbar : true,
		fOnBeforeUnload : function(){
			//alert("아싸!");
		}
	}, //boolean
	fOnAppLoad : function(){
		//예제 코드
		//oEditors.getById["content"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
	},
	fCreator: "createSEditor2"
});

function pasteHTML() {
	var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
	oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
	var sHTML = oEditors.getById["content"].getIR();
	alert(sHTML);
}
	
function submitContents(elClickedObj) {
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
	
	try {
		// elClickedObj.form.submit();
		return check();
	} catch(e) {}
}

function setDefaultFont() {
	var sDefaultFont = '돋움';
	var nFontSize = 24;
	oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
}
</script>    	
	
	
	
</div>