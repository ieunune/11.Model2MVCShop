<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// 로그인시 Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- jQuery JS -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- jQuery CSS -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">

	<!--  ///////////////////////// CSS ////////////////////////// -->
	
	<style>
		.navbar.navbar-default.navbar-fixed-top{
			border-width: 0px;    		
   			box-shadow: 0px 0px;
   			background-color: rgba(0,0,0,0.0);			 
   			background-image: linear-gradient(180deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
		}
		.carousel-inner>.item>img {
			top: 0;
			left: 0;
			min-width: 100%;
			min-height: 50px;
			max-height: 600px;
		}
		.carousel-indicators li {	
   			border-radius: 10px;
   			margin: 1px 8px;
   			height: 10px;
    		max-width: 10px;
    		border: 1px solid #FFF;
    		background-color: transparent;
		}
		.carousel-indicators .active {
    		background-color: #fff;
    		max-width: 12px;
    		margin: 0 8px;
    		height: 12px;
		}
		.jumbotron{
			background-color: #FFFFFF;
		}
	</style>
   	
   	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원가입 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('회원가입')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= 로그인 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('로 그 인')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('상품보기')").on("click" , function() {
				self.location = "/product/listProduct"
			});
		});
		
// 		$(function(){
						
// 			$("#searchKeyword").on("keyup", function(){
				
// 				var search = {searchKeyword : $("#searchKeyword").val(), searchCondition : "1"};
// 				var convertSearch = JSON.stringify(search);
				
// 				$.ajax({
// 					url : "/product/json/listProduct/search/9" ,
// 					method : "POST",
// 					dataType : "json",
// 					data :  convertSearch ,
// 					contentType: "application/x-www-form-urlencoded; charset=euc-kr",
// 					headers : {
// 						"Accept" : "application/json",
// 						"Content-Type" : "application/json;charset=euc_kr"
// 					},
// 					success : function(JSONData, status){				
// 						$("#searchKeyword").autocomplete({
// 							source : JSONData
// 						});
// 					}
// 				});
// 			});
// 		});
	</script>	
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar navbar-default navbar-fixed-top">
		
        <div class="container">
        
        	<a class="navbar-brand" href="/index.jsp">Eunwoo Shop</a>
			
			<!-- toolBar Button Start //////////////////////// -->
			<div class="navbar-header">
			    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			</div>
			<!-- toolBar Button End //////////////////////// -->
			
			<div class="collapse navbar-collapse"  id="target" style="text-align: center;">
				<ul class="nav navbar-nav" style="display:inline-block; float:none;">
<!-- 	                 <li> -->
<!-- 	                 	<input type="text" class="form-control" id="searchKeyword" name="text" style="background-color:transparent; color:white; width:200px; height:40px;"/> -->
<!-- 	                 	<span class="glyphicon glyphicon-search form-control-feedback" style="color: white;"></span> -->
<!-- 	                 </li> -->
	           	</ul>
	             <ul class="nav navbar-nav navbar-right">
	                 <li><a href="#">회원가입</a></li>
	                 <li><a href="#">로 그 인</a></li>
	           	</ul>
	       	</div>
   		
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="/images/main/Main1.jpg">
				</div>
				<div class="item">
					<img src="/images/main/Main2.jpg">
				</div>
				<div class="item">
					<img src="/images/main/Main3.jpg">
				</div>
				<div class="item">
					<img src="/images/main/Main4.jpg">
				</div>
				<div class="item">
					<img src="/images/main/Main5.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> 
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> 
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		
		<p>
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- 다단레이아웃  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu 구성 Start /////////////////////////////////////-->     	
			<div class="col-md-3">
		        
		       	<!--  회원관리 목록에 제목 -->
<!-- 				<div class="panel panel-primary"> -->
<!-- 					<div class="panel-heading"> -->
<!-- 						<i class="glyphicon glyphicon-heart"></i> 회원관리 -->
<!--          			</div> -->
<!--          			 회원관리 아이템 -->
<!-- 					<ul class="list-group"> -->
<!-- 						 <li class="list-group-item"> -->
<!-- 						 	<a href="#">개인정보조회</a> <i class="glyphicon glyphicon-ban-circle"></i> -->
<!-- 						 </li> -->
<!-- 						 <li class="list-group-item"> -->
<!-- 						 	<a href="#">회원정보조회</a> <i class="glyphicon glyphicon-ban-circle"></i> -->
<!-- 						 </li> -->
<!-- 					</ul> -->
<!-- 		        </div> -->
               
               
<!-- 				<div class="panel panel-primary"> -->
<!-- 					<div class="panel-heading"> -->
<!-- 							<i class="glyphicon glyphicon-briefcase"></i> 판매상품관리 -->
<!--          			</div> -->
<!-- 					<ul class="list-group"> -->
<!-- 						 <li class="list-group-item"> -->
<!-- 						 	<a href="#">판매상품등록</a> <i class="glyphicon glyphicon-ban-circle"></i> -->
<!-- 						 </li> -->
<!-- 						 <li class="list-group-item"> -->
<!-- 						 	<a href="#">판매상품관리</a> <i class="glyphicon glyphicon-ban-circle"></i> -->
<!-- 						 </li> -->
<!-- 					</ul> -->
<!-- 		        </div> -->
               
               
<!-- 				<div class="panel panel-primary"> -->
<!-- 					<div class="panel-heading"> -->
<!-- 							<i class="glyphicon glyphicon-shopping-cart"></i> 상품구매 -->
<!-- 	    			</div> -->
<!-- 					<ul class="list-group"> -->
<!-- 						 <li class="list-group-item"><a href="/product/listProduct">상품검색</a></li> -->
<!-- 						  <li class="list-group-item"> -->
<!-- 						  	<a href="#">구매이력조회</a> <i class="glyphicon glyphicon-ban-circle"></i> -->
<!-- 						  </li> -->
<!-- 						 <li class="list-group-item"> -->
<!-- 						 	<a href="#">최근본상품</a> <i class="glyphicon glyphicon-ban-circle"></i> -->
<!-- 						 </li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
				
			</div>
			<!--  Menu 구성 end /////////////////////////////////////-->   

	 	 	<!--  Main start /////////////////////////////////////-->   		
	 	 	<div class="col-md-12">
				<div class="jumbotron">
					<div class="text-center">
			  		<h1>Eunwoo MVC Shop</h1>
			  		<p>비회원은 검색만 가능합니다.</p>
			  		<p>로그인 후 이용해주세요.</p>
			  		</div>
			  		
			  		<div>
			  			<p>
			  		</div>
			  		
			  		<div class="text-center">
			  			<a class="btn btn-default btn-sm" href="#" role="button">회원가입</a>
			  			<a class="btn btn-default btn-sm" href="#" role="button">로 그 인</a>
			  			<a class="btn btn-default btn-sm" href="#" role="button">
			  				<i class="glyphicon glyphicon-search">상품보기</i>
			  			</a>
			  		</div>
			  	
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- 다단레이아웃  end /////////////////////////////////////-->
		
	</div>
	<!--  화면구성 div end /////////////////////////////////////-->
	
	<jsp:include page="/layout/bottom.jsp"></jsp:include>
	
</body>

</html>