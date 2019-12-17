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

$(document).ready(function() {
	
	$('#btn').on("click", function() {
		var custId = $('#idField').val(); 
		
		var obj = JSON.parse('{"g1": [{"고객ID": 1234, "고객이름": "홍길동", "로그인ID": "daou2019",  "고객등급": "gold"}, {"고객ID": 1235, "고객이름": "홍길동2", "로그인ID": "daou2020",  "고객등급": "gold"}, {"고객ID": 1236, "고객이름": "홍길동3", "로그인ID": "daou2021",  "고객등급": "silver"}, {"고객ID": 1237, "고객이름": "홍길동4", "로그인ID": "daou2022",  "고객등급": "gold"}, {"고객ID": 1238, "고객이름": "홍길동5", "로그인ID": "daou2023",  "고객등급": "gold"}]}');
		//alert(obj.g1.length);
		//alert(obj.g1[4].고객ID);
		
		var inner = "";
		for(var i = 0; i < obj.g1.length; i++){
			inner += '<tr id="dbTR">';
			inner += '<td>' + obj.g1[i].고객ID + '</td>';
			inner += '<td>' + obj.g1[i].고객이름 + '</td>';
			inner += '<td>' + obj.g1[i].로그인ID + '</td>';
			inner += '<td>' + obj.g1[i].고객등급 + '</td></tr>';
		}
		tableBody.innerHTML = inner;
		//alert(arr);
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
				<input type="submit" value="search" class="submitBT" id="btn" onclick=""> 
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
					<tr id="dbTR">
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						
					</tr>
					<tr id="dbTR">
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						
					</tr>
					<tr id="dbTR">
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						
					</tr>
					<tr id="dbTR">
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						
					</tr>
				</tbody>
				<tfoot>
					<!-- <input type="submit" value="search" class="submitBT" onclick=""> -->
				</tfoot>
			</table>
			<div style="height : 50px;">
				<input type="submit" value="20 more" class="submitBT" onclick="">
			</div>
		</div>
		<div style="width : 450px; height : 35px;">
			<input type="button" style="float : right;" value="Close" class="closeBT" onclick="window.close()">
		</div>
	</div>
</body>
</html>