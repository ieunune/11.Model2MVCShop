<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

<!--  CSS -->
<style>
     body {
            padding-top : 50px;
        }
</style>

<script type="text/javascript">
$(function () {
	$("#purchase").on("click", function(){
		$(self.location).attr("href","/purchase/addPurchaseView?prod_no="+$("#prodNo").text().trim());
	});
	$("#commentGo").on("click",function(){
		$("form").attr("action","/comment/addComment?prod_no="+${product.prodNo}).attr("method","POST").submit();
	});
	
//	퀵메뉴바
// 	var currentPosition = parseInt($(".quick").css("top")); 
//     $(window).scroll(function() { 
//             var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
//             $(".quick").stop().animate({"top":position+currentPosition+"px"},500); 
//     });
});
</script>
</head>

<body>
 
	
	<jsp:include page="/layout/toolbar.jsp" />
	
	<div class="container">		
		<div class="page-header text-info">
			<a href="javascript:self.location=document.referrer;">
			<span class="glyphicon glyphicon-arrow-left">&nbsp;뒤로</span>
			</a>
			<h3>상품상세조회</h3>
			<c:if test="${param.menu == manage}">
			<h5 class="text-muted">상품 정보를 <strong class="text-danger">최신정보로 관리</strong>해 주세요.</h5>
			</c:if>	
	    </div>
	    
	    <div class="row">
			<div class="col-xs-12 col-md-7"><img src="/images/uploadFiles/${product.fileName}" onerror="this.src='/images/uploadFiles/ImageTemp.png'" width="600px" height="500px"/></div>
			<div class="col-xs-12 col-md-5">
				<h4>모델번호: ${product.prodNo}</h4><br>
				<h4><b>${product.prodName}</b></h4>
				<h4>&#8361;${product.price}<small>&nbsp;배송비 제외</small></h4>
				<div style="vertical-align: bottom;">				
				<button id="purchase" style="background-color: black; color: white; width: 100%; height: 40px;">
				<h6><span class="glyphicon glyphicon-shopping-cart"><b>구매하기</b></span></h6>
				</button>
				</div>
			</div>			
		</div>
		
<!-- 	    <div class="row"> -->
<%-- 			<div class="col-xs-12 col-md-12"><h4><b>${product.prodName}</b></h4></div> --%>
<!-- 		</div> -->
		
<!-- 		<div class="row"> -->
<%-- 			<div class="col-xs-12 col-md-12"><h4>&#8361;${product.price}<small>&nbsp;배송비 제외</small></h4></div> --%>
<!-- 		</div> -->
		
		<div class="row">
			&nbsp;<p>
			&nbsp;<p>
		</div>
		
		<div class="row">
			<div class="col-xs-4 col-md-4" align="center"><h3><span class="glyphicon glyphicon-list-alt">상품설명</span></h3></div>
			<div class="col-xs-4 col-md-4" align="center"><h3><span class="glyphicon glyphicon-calendar">제조일자</span></h3></div>
			<div class="col-xs-4 col-md-4" align="center"><h3><span class="glyphicon glyphicon-calendar">등록일자</span></h3></div>
		</div>
		
		<div class="row">
			<div class="col-xs-4 col-md-4" align="center">${product.prodDetail}</div>
			<div class="col-xs-4 col-md-4" align="center">${product.manuDate}</div>
			<div class="col-xs-4 col-md-4" align="center">${product.regDate}</div>
		</div>

	
		<div class="row">
			&nbsp;<p>
			&nbsp;<p>
		</div>
		<hr>
		
		<form>
		<div class="row">
			<div class="col-xs-4 col-md-12" align="left"><b><h3>한줄평</h3></b></div>
		</div>
				
		<c:forEach var="comment" items="${list}">
		<div class="row">
			<div class="col-sm-10 col-md-10" align="left">
			<h4>
				<b>${comment.userId}</b>&nbsp;
				<small>${comment.inputDate}</small>&nbsp;
			</h4>
			<h5>${comment.reply}</h5>
			</div>
			<div class="col-sm-2 col-md-2" align="right">
				<span class="glyphicon glyphicon-refresh"></span>
				<span class="glyphicon glyphicon-remove"></span>
			</div>
		</div>
		</c:forEach>
		<br>
		
		<div class="row">
			<div class="col-sm-10 col-md-10" align="center">
				<input type="text" name="reply" class="form-control" style="width: 100%; height: 40px" placeholder="댓글입력" />
			</div>
			<div class="col-sm-2 col-md-2" align="center">
				<button id="commentGo" style="background-color: black; color: white; width: 100%; height: 40px;">
				<h6>댓글달기</h6>
				</button>
			</div>
		</div>
		
		</form>
		
		<div class="row">
			&nbsp;<p>
			&nbsp;<p>
		</div>
		
	</div>

<jsp:include page="/layout/bottom.jsp"></jsp:include>

<%-- 				<c:set var="i" value="0"/> --%>
<%-- 				<c:forEach var="comment" items="${list}">  --%>
<%-- 					<c:set var="i" value="${i+1}"/> --%>
<!-- 				<tr class="ct_list_pop"> -->
<!-- 					<td align="center"> -->
<%-- 					${comment.reply}</td> --%>
<!-- 					<td></td> -->
<!-- 					<td align="center"> -->
<%-- 					${comment.inputDate}</td> --%>
<!-- 					<td></td> -->
<!-- 				</tr> -->
<%-- 				</c:forEach> --%>
<!-- 		</table> -->

<!-- 		<hr/> -->
									
<!-- 		<input type="text" name="reply" id="reply" class="ct_input_g" style="width: 100%; height: 30px"/> -->
								
<!-- 		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;"> -->
<!-- 			<tr> -->
<!-- 				<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23" /></td> -->
<!-- 				<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;"> -->
<%-- <%-- 					<a href="/comment/addComment?prod_No=${product.prodNo}">댓글달기</a> --%>
<!-- 					<a href="#" id="commentGo">댓글달기</a> -->
<!-- 				</td> -->
<!-- 				<td width="53%"></td> -->
<!-- 				<td align="right"> -->

<!-- 					<table border="0" cellspacing="0" cellpadding="0"> -->
<!-- 						<tr> -->
<%-- 							<c:if test="${product.proTranCode==null}">						 --%>
<!-- 							<td width="17" height="23"><img src="/images/ct_btnbg01.gif" -->
<!-- 								width="17" height="23" /></td> -->
<!-- 							<td background="/images/ct_btnbg02.gif" class="ct_btn01" -->
<!-- 								style="padding-top: 3px;"> -->
<!-- 								구매</td> -->
<!-- 							<td width="14" height="23"><img src="/images/ct_btnbg03.gif" -->
<!-- 								width="14" height="23"></td> -->
<!-- 							<td width="30"></td> -->
<%-- 							</c:if> --%>
<!-- 							<td width="17" height="23"><img src="/images/ct_btnbg01.gif" -->
<!-- 								width="17" height="23" /></td> -->
<!-- 							<td background="/images/ct_btnbg02.gif" class="ct_btn01" -->
<!-- 								style="padding-top: 3px;"> -->
<!-- 								이전</td> -->
<!-- 							<td width="14" height="23"><img src="/images/ct_btnbg03.gif" -->
<!-- 								width="14" height="23"></td> -->
<!-- 						</tr> -->
<!-- 					</table> -->

<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 	</form> -->

</body>
</html>