<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
.productListBody{
	margin: 0;
	padding: 0;
	width: 1300px;
	font-family: 
}

.productListForm{
	margin: auto;
	width: 1100px;
}
.productListBody .prodcutListTop{
	width: 100%;
	margin: auto;
}

.productListBody ul{
	list-style: none;
}

.productListBody .prooductSearchBar{
	float: right;
}

.productListTitle{
	
}
</style>

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

$(function(){
	listPage(1);
});


function ajaxFileFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		processData: false,  // file 전송시 필수. 서버로전송할 데이터를 쿼리문자열로 변환여부
		contentType: false,  // file 전송시 필수. 서버에전송할 데이터의 Content-Type. 기본:application/x-www-urlencoded
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

//글리스트 및 페이징 처리
function listPage(page) {
	var url = "${pageContext.request.contextPath}/product/list";
	var query = "pageNo="+page;
	var params = $('form[name=searchForm]').serialize();
	query = query + "&" + params;
	
	var fn = function(data){
		printList(data);
	};
	ajaxFun(url, "get", query, "json", fn);
}

function printList(data) {
	var dataCount = data.dataCount;
	var totalPage = data.total_page;
	var page = data.pageNo;
	var paging = data.paging;

	if(dataCount==0) {
		$(".productlist-body").height(0);
		$(".productlist-body").empty();
		$(".productlisg-paging").html("등록된 게시물이 없습니다.");
		return;
	}
	
	$(".productlist-body").attr("data-pageNo", page);
	
	// 크거나 같은수 중 가장 적은 정수
	var n =  Math.ceil(dataCount / 4);
	var h = 170 * n;
	
	$(".list-body").height(h);
	if(n == 1) {
		document.querySelector(".list-body").style.gridTemplateRows = "repeat(1, auto)";
	} else {
		document.querySelector(".list-body").style.gridTemplateRows = "repeat(2, auto)";
	}
	
	var out="";
	for(var idx=0; idx<data.list.length; idx++) {
		var num = data.list[idx].num;
		var userName = data.list[idx].userName;
		var subject = data.list[idx].subject;
		var imageFilename = data.list[idx].imageFilename;
		var created = data.list[idx].created;

		var src = "${pageContext.request.contextPath}/uploads/photo/"+imageFilename;
		var item = "<div class='item' style='background-image: url("+src+");' data-num='"+num+"'></div>";
		
		out += item;
	}
	
	$(".list-body").html(out);
	$(".list-paging").html(paging);
}


</script>


<div class="productListBody">

	<div class="productListForm">	
		<table class="prodcutListTop">
			<tr class="productListTitle">
				<td>
					<h2>전체상품</h2>
				</td>
			</tr>
			<tr>
				<td class="productListPaging">
					${dataCount}개(${page}/${total_page}페이지)
				</td>
				<td class="prooductSearchBar">
					<form>
						<input type="text" name="keyword" class="" placeholder="상품검색">
						<button type="button" class="">검색</button>								
					</form>								
				</td>
			</tr>	
		</table>
		<button type="button" class="" onclick="javascript:location.href='${pageContext.request.contextPath}/product/created';">상품 등록하기</button>

		<div class="productListMain">
		
			<div class="productlist-body" data-pageNo="0"></div>
			<div class="productlisg-paging clear"></div>		
		</div>

	</div>
</div>