<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q6</title>
<link rel="stylesheet" type="text/css" href="../../css/result_screen.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Ubuntu&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../js/queryEvent.js"></script> <!-- 액션 js파일  -->
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan&display=swap" rel="stylesheet">
</head>

<script>
var index = 0; //more 버튼 클릭 체크
</script>

<body>
	<input type="hidden" id="index" value="0">
	<input type="hidden" id="first" value="0">
	<input type="hidden" id ="orderTemp" value="0"> 
	<div class="main_div">
		<div class="result_tab">
			<div class="userState">
				<a style="color : white;">Execution result</a>
			</div>
			<div style = "border-bottom : 1px solid #F2F8FF;">
				<div class="tabfont">Customer ID</div>
				<input name="userid" class="searchform" id = "idField">
				<input style="float : none; width : 100px;" type="submit" value="search" class="submitBT" onclick="q6final()"> 
			</div>
			<div style = "border-bottom : 1px solid #BEE0FF;">
				<div style = "margin : 0px 10px 10px 10px;" class="tabfont">Date</div>
				<input type="date" id = "dateField" style = "margin : 0px 10px 10px 10px;" value = '2019-01-01' class="searchform">
			</div>
			<div class = "user_status">
				<table class = "status_table" style="width:100%;">
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
						<td>고객등급</td>
						<td id="grade"></td>
					</tr>
				</table>
			</div>
		</div>
		<div>
			<table class = "dbtable" style="width:750px; border: 1px solid #BEE0FF;">
				<thead>
					<tr id="dbTR_DATA" style="background-color: #1E60B5">
						<th>order_ID</th>
						<th>date</th>
						<th>channel</th>
						<th>status</th>
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
			</table>
			<div style="height : 50px;">
				<input type="submit" value="20 more" class="submitBT" onclick="q6func()">
			</div>
		</div>
		<div style="width : 450px; height : 35px;">
			<input type="button" style="float : right;" value="Close" class="closeBT" onclick="window.close()">
		</div>
	</div>
</body>
</html>