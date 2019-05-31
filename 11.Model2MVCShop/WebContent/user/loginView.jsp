<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- 참조 : http://getbootstrap.com/css/   참조 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
input {
	border: 1px solid black;
}

hr {
	border: 0.5px solid black;
}

button {
	background-color: black;
	color: white;
	border: 1px solid black;
	width: 175px;
	height: 30px;
	font-size: 10px;
	font-weight: bold;
}
</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	//============= "로그인"  Event 연결 =============
	$(function() {

		$("#userId").focus();

		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("button:contains('로그인')").on(
				"click",
				function() {
					
					//alert($("input:text").val() + " \n " + $("input:password").val())
					
					var id = $("input:text").val();
					var pw = $("input:password").val();

					if (id == null || id.length < 1) {
						alert('ID 를 입력하지 않으셨습니다.');
						$("#userId").focus();
						return;
					}

					if (pw == null || pw.length < 1) {
						alert('패스워드를 입력하지 않으셨습니다.');
						$("#password").focus();
						return;
					}

					$("form").attr("method", "POST").attr("action","/user/login").attr("target", "_parent").submit();
				});
	});

	//============= 회원원가입화면이동 =============
	$(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("button:contains('회원가입')").on("click", function() {
			self.location = "/user/addUser"
		});
	});
	
	//<![CDATA[
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
// 	Kakao.init('3712344ba7ced84f343e902022c6334f');

// 	function loginWithKakao() {
// 		// 로그인 창을 띄웁니다.
// 		// 										Kakao.Auth.setAccessToken(
// 		// 												Btw0KYr3D9Ymq0Ismx-CkYbWKMljwpIrg2jMKQo9dRsAAAFrBpHTQQ
// 		// 										);

// 		Kakao.Auth.login({

// 			success : function(authObj) {
// 				alert(JSON.stringify(authObj));
// 			},
// 			fail : function(err) {
// 				alert(JSON.stringify(err));
// 			}
// 		});
// 	};

	//]]>
</script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar navbar-inverse">
		<div class="container" align="center">
			<a class="navbar-brand" href="/index.jsp">Eunwoo Shop</a>
		</div>
	</div>
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		<!--  row Start /////////////////////////////////////-->
		<div class="row">
			<form>
			<div class="col-md-12">
					로그인
					<hr />
					아이디와 비밀번호를 입력하여 로그인하시기 바랍니다. 
					<br /> 
					<input type="text" name="userId" id="userId" placeholder="Id">
					<br/>
					<p>
					<input type="password" name="password" id="password"
						placeholder="Password"> <br />
					<p>
					<button type="button">로그인</button><br/>
					<p>
					
					<button type="button">회원가입</button>
					
					<a href="#"><h6>비밀번호찾기</h6></a>
					<hr/>
					<a id="custom-login-btn"
						href="javascript:loginWithKakao()"> <img
						src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
						width="200" />
					</a>
			</div>
			</form>
		</div>

	</div>

</body>

</html>