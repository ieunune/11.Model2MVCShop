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
<!--  bootstrap Dropdown CSS & JS  -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
<!--  post CDN -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!--  CSS -->
<style>
     body {
            padding-top : 50px;
     }
     
   	#footer{
		position:absolute;
		bottom : 0;
		background: black; 
		color:white; 
		width: 100%; 
		height: 100px;
	}
	
	label{
		margin-top: 40px;
	}

</style>

<title>����������</title>

<script type="text/javascript" src="../javascript/calendar.js"></script>

<script type="text/javascript">
	
	function sample4_execDaumPostcode() {
	new daum.Postcode({
    	oncomplete: function(data) {
    		 // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
            // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
            var roadAddr = data.roadAddress; // ���θ� �ּ� ����
            var extraRoadAddr = ''; // ���� �׸� ����

            // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
            // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
            if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
            // document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample").value = roadAddr + data.jibunAddress;
            
            // �����׸� ���ڿ��� ���� ��� �ش� �ʵ忡 �ִ´�.
//             if(roadAddr !== ''){
//                 document.getElementById("sample4_extraAddress").value = extraRoadAddr;
//             } else {
//                 document.getElementById("sample4_extraAddress").value = '';
//             }

//             var guideTextBox = document.getElementById("guide");
//             // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
//             if(data.autoRoadAddress) {
//                 var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
//                 guideTextBox.innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
//                 guideTextBox.style.display = 'block';

//             } else if(data.autoJibunAddress) {
//                 var expJibunAddr = data.autoJibunAddress;
//                 guideTextBox.innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
//                 guideTextBox.style.display = 'block';
//             } else {
//                 guideTextBox.innerHTML = '';
//                 guideTextBox.style.display = 'none';
//             }
    	}
	}).open();
	}
	
	function fncAddPurchase() {
		
		$("form").attr("method","POST").attr("action","/purchase/addPurchase").submit();
	}
	
	$(function(){
		
		$("#reset").on("click", function(){
			$("form")[0].reset();
		});
		
		$("button.btn.btn-primary").on("click", function(){
			fncAddPurchase();
		});
	});
	
</script>
</head>

<body>
	
	<jsp:include page="/layout/toolbar.jsp"/>
	
	<div class="container">
		<div class="page-header">
			<a href="javascript:self.location=document.referrer;">
				<span class="glyphicon glyphicon-arrow-left">&nbsp;�ڷ�</span>
			</a>
			<hr>
			<h5 class="text-info">
				<span class="glyphicon glyphicon-lock"> <b>ȸ���ֹ�</b></span>
			</h5>
		</div>
				
		<form class="form-horizontal" name="addPurchase" enctype="multipart/form-data">
			
			<!-- �ش� ��ǰ ������ ���� ��ǰ ��ȣ -->
			<input type="hidden" name="prodNo" value="${product.prodNo}" />
			
			<div class="row">
				<div class="col-xs-6 com-md-8">
					<div>
						<strong>�����ô� ��</strong><br/>
	  					<input type="text" name="receiverName" style="width: 200px; height: 25px; border: 1px solid #000000;" maxLength="20" value="${user.userName}" />
	  					<br/>
	  					<br/>
	  					<strong>����ó</strong><br/>
	  					<input type="text" name="receiverPhone" style="width: 200px; height: 25px; border: 1px solid #000000;" maxLength="20" value="${user.phone}" />
	  					<br/>
	  				</div>
	  				
	  				<hr/>
	  				
	  				<div>
	  					<strong>���ɹ����� �ּ�</strong>&nbsp;
	  					<input type="button" style="font-size: 12px;height: 30px; width: 90px; border: 1px solid #000000; background-color: #000000; color: #FFFFFF;" onclick="sample4_execDaumPostcode()" value="�ּ�ã��">
	  					<br/>
	  					<input type="text" id="sample" name="divyAddr" style="width: 200px; height: 25px; border: 1px solid #000000;" maxLength="20" value="${user.addr}" />
	  					<br/>
	  				</div>
	  				
	  				<hr/>
	  				
	  				<div>
	  					<strong>��û����</strong><br>
	  					<input type="text" name="divyRequest" style="width: 200px; height: 25px; border: 1px solid #000000;" maxLength="20" />
	  				</div>
	  				
	  				<hr/>
	  				
	  				<div>
	  					<strong>�������</strong><br>
	  					<select name="paymentOption" class="form-control" style="width: 200px; height: 32px; border: 1px solid #000000;"> 
	  						<option value="1" selected="selected">īī������</option>
							<option value="2">�������Ա�</option>
						</select>
					</div>
				</div>
				<div class="col-xs-6 com-md-4" align="center">
					<img src="/images/uploadFiles/${product.fileName}" onerror="this.src='/images/uploadFiles/ImageTemp.png'" width="250px" height="250px"/>
					<h4><b>${product.prodName}</b></h4>
					<h4>&#8361;${product.price}<small>&nbsp;��ۺ� ����</small></h4>
					<h4><b> ���� : ${amount}</b></h4>
					<input type="hidden" name="amount" value="${amount}"/>
					<h5>���� : ${amount } * ${product.price}</h5>
				</div>
			</div>
			
			
<!-- 			<div class="row"> -->
<%-- 				<div class="col-xs-4 col-md-2" align="right"><img src="/images/uploadFiles/${product.fileName}" onerror="this.src='/images/uploadFiles/ImageTemp.png'" width="250px" height="250px"/></div>			 --%>
<!-- 			</div> -->
		
			<hr/>
			
			<div class="row">
	  			<div class="col-md-12 text-center">
	  				<button type="button" class="btn btn-primary">����</button>
	  				<a id="reset" class="btn btn-primary btn" role="button">���Է�</a>
	  			</div>
			</div>
	
		</form>
	</div>
	
	<div id=footer align="center">
		<label>Copyright.</label>
	</div>
</body>
</html>