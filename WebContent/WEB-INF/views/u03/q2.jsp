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
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan&display=swap" rel="stylesheet">
</head>

<script>
var index = 0; //more 버튼 클릭 횟수

function sendID() {
	if($('#idField').val() > 200000 || $('#idField').val() == ""){
		alert("200000 이하 숫자만 가능합니다.");
		$('#idField').val("");
		return 0;
	}
	var input = $('#idField').val(); //입력 필드 데이터를 불러옴
	if(index == 0) {//처음 호출 시 인덱스 그대로 입력
		index = input;
		$('#first').val(input); //검색 데이터 저장 공간에 저장
	}
	else
		index = $('#index').val(); //호출한 내역이 존재 시 hidden input에 있는 데이터를 저장
	
	var data = new Object();
	
	if(input != $('#first').val()){ //검색한 데이터와 다른 데이터 검색 시
		index = 0; //인덱스를 초기화하고 함수 다시 실행
		sendID();
	}
	else{ //이어서 요청하는 경우
		data.cust_id = index; //key로 똑같이 치환, input 넣을 때 사용
		
		var jsonData = JSON.stringify(data);
		
		var urlText = "http://localhost:8080/com/intern/u03/tr2";
		
		$.ajax({
			async : true,
			type : "POST",
			contentType : "application/json; charset=UTF-8",
			url : urlText,
			data : jsonData,
			success : function(dat) {
				var idx = dat.lastIndexOf('}');
				var obj = JSON.parse(dat);
				
				var inner;
				if(index == input) //첫 데이터 반환 시 html을 초기화
					inner = "";
				else
					inner = tableBody.innerHTML; //데이터를 이어서 붙이는 경우 안의 데이터를 미리 받아서 저장
				
				for(var i = 0; i < obj.arr.length; i++){ //데이터를 덧붙여준다
					inner += '<tr id="dbTR">';
					inner += '<td>' + obj.arr[i].cust_id + '</td>';
					inner += '<td>' + obj.arr[i].cust_name+ '</td>';
					inner += '<td>' + obj.arr[i].login_id + '</td>';
					inner += '<td>' + obj.arr[i].cust_grade + '</td></tr>';
				}
				tableBody.innerHTML = inner;
				index = Number(index) + Number(obj.arr.length);
				$("#index").val(index);
			}
		});
	}
}

function additional() {
	sendID();
}

$(document).ready(function() {
	$('#btn').on("click", function() {
		
	});
})

</script>

<body>
	<input type="hidden" id="index" value="0">
	<input type="hidden" id="first" value="0">
	<div class="main_div">
		<div class="result_tab">
			<div class="userState">
				<a style="color : white;">Execution result</a>
			</div>
			<div style = "border-bottom : 1px solid #BEE0FF;">
				<div class="tabfont">Customer ID</div>
				<input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="userid" class="searchform" id = "idField">
				<input type="submit" value="search" class="submitBT" id="" onclick="sendID()"> 
			</div>	
		</div>
		<div>
			<table class = "dbtable" onLoad="" style="width:750px; border: 1px solid #BEE0FF;">
				<thead>
					<tr id="dbTR" style="background-color: #1E60B5">
						<th>Cust_id</th>
						<th>name</th>
						<th>Login_id</th>
						<th>Grade</th>
					</tr>
				</thead>
				<tbody id = "tableBody">
					<% for(int i = 0; i < 4; i++) { %>
					<tr id="dbTR">
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
					</tr>
					<% } %>
				</tbody>
				<tfoot>
					<!-- <input type="submit" value="search" class="submitBT" onclick=""> -->
				</tfoot>
			</table>
			<div style="height : 50px;">
				<input type="submit" value="20 more" class="submitBT" onclick="additional()">
			</div>
		</div>
		<div style="width : 450px; height : 35px;">
			<input type="button" style="float : right;" value="Close" class="closeBT" onclick="window.close()">
		</div>
	</div>
</body>
</html>