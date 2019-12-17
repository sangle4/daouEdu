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

$(document).ready(function() {
	
	$('#btn').on("click", function() {
		var custId = $('#idField').val(); 
		//alert(custId);
		var obj = JSON.parse('{"고객ID": 1234, "고객이름": "홍길동", "고객성별": "남", "로그인ID": "daou2019",  "로그인비밀번호": "daou2019!", "접속별명": "hongload", "고객등급": "gold"}');
		
		$("#cust_id").html(obj.고객ID);
		$("#cust_name").html(obj.고객이름);
		$("#login_id").html(obj.로그인ID);
		$("#login_pw").html(obj.로그인비밀번호);
		$("#nickname").html(obj.접속별명);
		$("#gender").html(obj.고객성별);
		$("#grade").html(obj.고객등급);
	})
	
	function sendID() {
		var datalist = new Array;
		var input = $('#idField').val();
		var data = new Object();
		
		data.id = input;
		datalist.push(data);
		
		var jsonData = JSON.stringify(data);
		
		var urlText = "http://localhost:8080/com/intern/u03/q1";
		
		$.ajax({
			async : true,
			type : "POST",
			contentType : "application/json; charset=UTF-8",
			url : urlText,
			data : jsonData,
			success : function(dat) {
				var idx = dat.lastIndexOf('}');
				
			}
		});
	}
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
				<input name="userid" class="searchform" id = "idField">
				<input type="submit" value="search" class="submitBT" id = "btn" onclick=""> 
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