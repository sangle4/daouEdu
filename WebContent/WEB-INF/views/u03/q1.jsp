<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/result_screen.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Ubuntu&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../js/queryEvent.js"></script> <!-- 액션 js파일  -->
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan&display=swap" rel="stylesheet">
</head>

<script>
function sendID() {
	if($('#idField').val() > 200000 || $('#idField').val() == ""){
		alert("200000 이하 숫자만 가능합니다.");
		$('#idField').val("");
		return 0;
	}
	var input = $('#idField').val();
	var data = new Object();
	
	data.cust_id = input; //key로 똑같이 치환, input 넣을 때 사용
	
	var jsonData = JSON.stringify(data);
	
	var urlText = "http://localhost:8080/com/intern/u03/tr1";
	
	$.ajax({
		async : true,
		type : "POST",
		contentType : "application/json; charset=UTF-8",
		url : urlText,
		data : jsonData,
		success : function(dat) {
			var idx = dat.lastIndexOf('}');
			var obj = JSON.parse(dat);
			//alert("불러오기 성공!");
			//alert(obj);
			$("#cust_id").html(obj.cust_id);
			$("#cust_name").html(obj.cust_name);
			$("#login_id").html(obj.login_id);
			$("#login_pw").html(obj.login_pswd);
			$("#nickname").html(obj.login_name);
			$("#gender").html(obj.cust_gender_type);
			$("#grade").html(obj.cust_grade);
		}
	});
}

$(document).ready(function() {
	$('#btn').on("click", function() {
		
	})
})

</script>

<body>
	<div class="main_div">
		<div class="result_tab">
			<div class="userState">
				<a style="color : white;">Execution result</a>
			</div>
			<div style = "border-bottom : 1px solid #BEE0FF;">
				<div class="tabfont">Customer ID</div>
				<input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="userid" class="searchform" id = "idField">
				<input type="submit" value="search" class="submitBT" id = "" onclick="sendID()"> 
			</div>
			<div class = "user_status">
				<table class = "status_table" onLoad="" style="width:100%;">
				<tbody>
					<tr id="dbTR">
						<td>고객ID</td>
						<td id="cust_id"></td>
						<td>이름</td>
						<td id="cust_name"></td>
						
					</tr>
					<tr id="dbTR">
						<td>로그인ID</td>
						<td id="login_id"></td>
						<td>로그인비밀번호</td>
						<td id="login_pw"></td>
						
					</tr>
					<tr id="dbTR">
						<td>접속별명</td>
						<td id="nickname"></td>
						<td>성별</td>
						<td id="gender"></td>
						
					</tr>
					<tr id="dbTR">
						<td>고객등급</td>
						<td id="grade"></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
		<div style="width : 450px; height : 35px;">
			<input type="submit" style="float : right;" value="Close" class="closeBT" onclick="window.close()">
		</div>
	</div>
</body>
</html>