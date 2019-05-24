<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<script type="text/javascript">
	function fncGetUserList(currentPage) {
		$("#currentPage").val(currentPage)
		$("form").attr("method" , "POST").attr("action" , "/purchase/listPurchase?&menu="+$("#menu").val()).submit();
	}
	
	$(function(){
		$(".list td:nth-child(1)").on("click",function(){
			self.location="/product/getProduct?prodNo="+$(this).children("input").val()+"&menu=search";
		});
		
		$(".list td:nth-child(2)").on("click",function(){
			self.location="/purchase/getPurchase?tranNo="+$(this).children("input").val();
		});
		
		$(".list td:nth-child(3)").on("click",function(){
			self.location="/user/getUser?userId="+$(this).children("input").val();
		});
		
		$(".list td:nth-child(2)").css("color","red");
		$("h7").css("color","red");
		
		$(".list td:nth-child(3)").css("color","blue");
		
		$("#state").on("click",function(){
			//alert($(this).children("#tranNo").val());
			//alert($(this).children("#userId").val())
			$(self.location).attr("href","/purchase/updateTranCodeByTranNo?tranNo="+$(this).children("#tranNo").val()+"&userId="+$(this).children("#userId").val());
			alert('수령완료처리 되었습니다.')
		});
		
	});
</script>

<!-- CSS -->
<style type="text/css">
	body{
		padding-top: 50px;
		height: 100%;
	}
</style>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp"/>
	
	<input type="hidden" id="menu" name="menu" value="${param.menu}"/>
	
	<div class="container">
		
		<div class="page-header text-info">
			<a href="javascript:self.location=document.referrer;">
				<span class="glyphicon glyphicon-arrow-left">&nbsp;뒤로</span>
			</a>
			<h3>구매 목록</h3>
		</div>
<%-- 		<c:forEach var="purchase" items="${list}"> --%>
<!-- 		<div class="col-md-2"> -->
<%-- 			<img src="/images/uploadFiles/${purchase.purchaseProd.fileName}" onerror="this.src='/images/uploadFiles/ImageTemp.png'" style="width: 250px; height: 250px;"/> --%>
<!-- 		</div> -->
		
<!-- 		<div class="col-md-10"> -->
			
<!-- 		</div> -->
<%-- 		</c:forEach> --%>
		<div class="row">
	    	<div class="col-md-12 text-left">
	    		<p class="text-primary">
	    			전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
	 			</p>
	    	</div>
	    </div>
	    
	    <h7>이미지 클릭시 해당 제품으로 이동합니다.</h7>
	    <hr/>
	    
	    <div class="row">
	    	<div class="col-md-6 col-sm-5 col-xm-12">
	    		
	    	</div>
	    </div>
		
		<table class="table table-hover table-striped">
		
			<thead>
				<tr>
					<th align="center">제품이미지</th>
					<th align="left">거래번호</th>					
					<th align="left">회원ID</th>
					<th align="left">회원명</th>
					<th align="left">전화번호</th>
					<th align="left">배송주소</th>
					<th align="left">배송현황</th>
				</tr>
			</thead>
			
			<tbody style="vertical-align: middle;" class="list">
				<c:set var="i" value="0"/>
				<c:forEach var="purchase" items="${list}">
					<c:set var="i" value="${i+1}"/>
					<tr>
						<td align="center">
							<input type="hidden" id="prodNo" value="${purchase.purchaseProd.prodNo}">
							<img src="/images/uploadFiles/${purchase.purchaseProd.fileName}" onerror="this.src='/images/uploadFiles/ImageTemp.png'" style="width: 50px; height: auto;"/>
						</td>
						<td align="center">
							<input type="hidden" id="tranNo" value="${purchase.tranNo}">
							${ i }
						</td>
						<td align="left">
							<input type="hidden" id="userId" value="${user.userId}">
							${user.userId}
						</td>
						<td align="left">
							${purchase.receiverName}
						</td>
						<td align="left">
							${purchase.receiverPhone}
						</td>
						<td align="left">
							${purchase.divyAddr}
						</td>
					
						<td align="left">
						<c:if test="${purchase.tranCode=='000'}">
							구매완료	
						</c:if>
						<c:if test="${purchase.tranCode=='001'}">
							배송중
							<a id="state">
								<input type="hidden" id="tranNo" value="${purchase.tranNo}">
								<input type="hidden" id="userId" value="${user.userId}">
								수령하기
							</a>
						</c:if>
						<c:if test="${purchase.tranCode=='002'}">
							배송완료	
						</c:if>
						</td>
					<tr>
				</c:forEach>
			</tbody>
		</table>
	
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	
	</div>
</body>
</html>