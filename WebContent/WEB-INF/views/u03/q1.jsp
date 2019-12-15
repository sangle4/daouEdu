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
<body>
	<div class="main_div">
		<div class="result_tab">
			<div class="userState">
				<a style="color : white;">Execution result</a>
			</div>
			<div style = "border-bottom : 1px solid #BEE0FF;">
				<div class="tabfont">Customer ID</div>
				<input name="userid" class="searchform" id = "idField">
				<input type="submit" value="search" class="searchBT" onclick="">
			</div>
			<div class = "user_status">
				<table class = "status_table" onLoad="" style="width:100%;">
				<tbody>
					<tr id="dbTR">
						<td>고객ID</td>
						<td></td>
						<td>이름</td>
						<td></td>
						
					</tr>
					<tr id="dbTR">
						<td>로그인ID</td>
						<td></td>
						<td>로그인비밀번호</td>
						<td></td>
						
					</tr>
					<tr id="dbTR">
						<td>접속별명</td>
						<td></td>
						<td>성별</td>
						<td></td>
						
					</tr>
					<tr id="dbTR">
						<td>고객등급</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
		<div style="width : 450px; height : 35px;">
			<input type="button" style="float : right;" value="Close" class="closeBT" onclick="window.close()">
		</div>
	</div>
</body>
</html>