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
				<div class="tabfont">Register Customer Info</div>
				<input name="userid" class="searchform" id = "idField">
				<input type="submit" value="search" class="searchBT" onclick="">
			</div>
			<div class = "user_status">
				<form action="" method="POST" onsubmit = ""> 
					<p>
						고객ID&emsp;<input type="text" class="input_box" name="cust_id">
						<span style="float : right;">이름<input type="text" class="input_box" name="cust_name"></span>
					</p>
					<p>
						로그인ID<input type="text" class="input_box" name="login_id">
						<span style="float : right;">로그인PW<input type="text" class="input_box" name="login_pswd"></span>
					</p>
					<p>
						접속별명<input type="text" class="input_box" name="login_name"> 
						<span style="float : right;">성별<input type="text" class="input_box" name="cust_gender_type"></span>
					</p>
					<p>
					고객등급<input type="text" class="input_box" name="cust_grade"> 
					</p>
				</form>
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
				<tbody>
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
					<!-- 
        				<tr>
            				<th>추가</th>
            				<td></td> 
            				<td></td> 
            				<td></td> 
            				<td></td> 
        				</tr>
        			-->
				</tbody>
				<tfoot>
					<!-- <input type="submit" value="search" class="searchBT" onclick=""> -->
				</tfoot>
			</table>
			<div style="height : 50px;">
				<input type="submit" value="20 more" class="searchBT" onclick="">
			</div>
		</div>
		<div style="width : 450px; height : 35px;">
			<input type="button" style="float : right;" value="Close" class="closeBT" onclick="window.close()">
		</div>
	</div>
</body>
</html>