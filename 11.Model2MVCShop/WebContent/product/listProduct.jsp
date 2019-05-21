<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
<head>

<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  bootstrap CDN  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<!--  bootstrap DropDown CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!--  bootstrap DropDown JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
<!-- jQuery CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- jQuery JS -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!--  CSS -->
<style>
     body {
            padding-top : 50px;
        }
     h7 {
     		color : red;
     }
</style>

<title>상품 목록조회</title>

<!-- JavaScript -->
<script type="text/javascript">


	function fncGetUserList(currentPage) {
		
		$("#currentPage").val(currentPage)
		
		$("form").attr("method" , "POST").attr("action" , "/product/listProduct?&menu="+$("#menu").val()+"&pageSize="+$("#selectPageSize").val()).submit();
		
	}
	
	function getPageSize(){
		$(self.location).attr("href","/product/listProduct?menu="+$("#menu").val()+"&pageSize="+$("#selectPageSize").val());
	}
	
	$(function(){
		
		var pageSize= $("#selectPageSize").val();
		var menu= $("#menu").val();
		
		$("#searchKeyword").on("keyup", function(){
			
			var search = {searchKeyword : $("#searchKeyword").val(), searchCondition : $("#searchCondition").val()};
			var convertSearch = JSON.stringify(search);
			 
			$.ajax({
				url : "/product/json/listProduct/"+menu+"/"+pageSize ,
				method : "POST",
				dataType : "json",
				data :  convertSearch ,
				contentType: "application/x-www-form-urlencoded; charset=euc-kr",
				headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json;charset=euc_kr"
				},
				success : function(JSONData, status){				
					$("#searchKeyword").autocomplete({
						source : JSONData
					});
				}
			});
		});
		
		$(".ct_list_pop td:nth-child(9)").on("click", function(){
			$(window.parent.frames["rightFrame"].document.location).attr("href","/purchase/updateTranCode?prodNo="+$(this).children("input").val()+"&menu="+$("#menu").val());
			alert('배송이 완료되었습니다.')
		});
		
		 $( "button.btn.btn-default" ).on("click" , function() {
				fncGetUserList(1);
		});
		
		 
		$(".table.table-hover.table-striped td:nth-child(2)").on("click", function(){
			self.location="/product/getProduct?prodNo="+$(this).children("input").val()+"&menu="+$("#menu").val();
		});
		
		$( ".table.table-hover.table-striped td:nth-child(2)" ).css("color" , "red").css("font-weight","bolder");
		$("h7").css("color" , "red").css("font-weight","bolder");
		$(".table.table-hover.table-striped:nth-child(2n+1)" ).css("background-color" , "#f2f2f2");
		
	});
</script> 
</head>

<body>
	
	<jsp:include page="/layout/toolbar.jsp" />
	
	<input type="hidden" id="menu" name="menu" value="${param.menu}"/>
	
	<div class="container">
		
		<div class="page-header text-info">
			<c:if test="${param.menu =='manage'}">
			<h3>상품 관리</h3>
			</c:if>
			<c:if test="${param.menu =='search'}">
			<h3>상품 목록 조회</h3>
			</c:if>		
	    </div>
	    
	    <div class="row">
	    	<div class="col-md-12 text-left">
	    		<p class="text-primary">
	    			전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
	 			</p>
	    	</div>
	    </div>
	    
	    <hr/>
	    
	    <div class="row">
	    	<div class="col-md-3 text-center">
	    		<form class="form-inline" name="detailForm">
	    		
	    			<div class="form-group">
	    				
	    			<p class="text-primary">
	    			표시개수
	 				</p>
	    				
	    			<select name="pageSize" id="selectPageSize" onchange="javascript:getPageSize()">
							<%-- ${ ! empty search.pageSize == 0 ? "selected" : "" }--%>
							<option value="5" ${ search.pageSize == 5 ? "selected" : "" }>5</option>
							<option value="8" ${ search.pageSize == 8 ? "selected" : "" }>8</option>
							<option value="10" ${ search.pageSize == 10 ? "selected" : "" } >10</option>
							<option value="15" ${ search.pageSize == 15 ? "selected" : "" } >15</option>
					</select>
					
					</div>
	    		</form>
	    	</div>
	    	
	    	<div class="col-md-3 text-center">
	    		<form class="form-inline" name="detailForm">
					
			    	<div class="form-group">
	    				<a href="/product/listProduct?menu=${param.menu}&order=1&pageSize=${search.pageSize}">▲ 높은가격순</a><br>
						<a href="/product/listProduct?menu=${param.menu}&order=2&pageSize=${search.pageSize}">▼ 낮은가격순</a>
					</div>
	    		</form>
	    	</div>
	     <div class="col-md-6 text-right">
			    <form class="form-inline" name="detailForm">
					
				  <div class="form-group">
				    <select class="form-control" name="searchCondition" >
				    	<option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>상품번호</option>
						<option value="1" ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>상품명</option>
						<option value="2" ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>상품가격</option>
					</select>
				  </div>
				  
				  <div class="form-group">
				    <label class="sr-only" for="searchKeyword">검색어</label>
				    <input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="검색어"
				    			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				  </div>
				  
				  <button type="button" class="btn btn-default">검색</button>
				  
				  <!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
				</form>
	    	</div>
	    </div>
		
		<hr/>
	
	<h7>상품명 클릭시 상품페이지로 이동합니다.</h7>
	<table class="table table-hover table-striped">
      
        <thead>
          <tr>
            <th align="center">No</th>
            <th align="left">상품명</th>
            <th align="left">가격</th>
            <th align="left">등록일</th>
            <th align="left">현재상태</th>
          </tr>
        </thead>
       
		<tbody>		
		  <c:set var="i" value="0" />
		  <c:forEach var="product" items="${list}">
			<c:set var="i" value="${ i+1 }" />
			<tr>
			  <td align="center">${ i }
			  	<input type="hidden" value="${product.prodNo}">
			  </td>
			  <td align="left">
			  	${product.prodName}
			  	<input type="hidden" id="prodNo" value="${product.prodNo}">
			  </td>
			  <td align="left">${product.price}</td>
			  <td align="left">${product.manuDate}</td>
			  <td align="left">
			 		<input type="hidden" id="prodNo" value="${product.prodNo}">
					<input type="hidden" id="tranCode" value="${product.proTranCode}">
					<c:if test="${product.proTranCode==null}">
						판매중
					</c:if>
					<c:if test="${product.proTranCode=='000'}">
						구매완료
					<c:if test="${param.menu=='manage'}">
						<a id="tranState">배송하기</a> 
						</c:if>
					</c:if>
					<c:if test="${product.proTranCode=='001'}">
						배송중
					</c:if>
					<c:if test="${product.proTranCode=='002'}">
						배송완료
					</c:if>
				</td>
			</tr>
          </c:forEach>
        </tbody>      
      </table>
	
	</div>
	
	<jsp:include page="../common/pageNavigator_new.jsp"/>

</body>
</html>
