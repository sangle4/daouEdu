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
				<form class="join_form" action="join_process.jsp" method="POST" onsubmit = "return check(this)" style = "height : 400px; text-align : left;">
					<div class = "join_tag">*ID</div>
					<input class = "join_input" name="id" id = "user_selected_id" style = "display : inline-block;">
					<input type="button" class = "checkBT" value="중복확인" onclick="id_check()">
					
					<div class = "join_tag">*PW</div>
					<input class = "join_input" type="password" name="password" id = "pw1" onkeyup="pwCondition()">
					<span class = "inner_text" id = "pw1_inner"></span>
					<div class = "join_tag">*PW verify</div>
					<input class = "join_input" type="password" name="password" id = "pw2" onkeyup="pwConfirm()">
					<span class = "inner_text" id = "pw2_inner"></span>
					
					<div class = "join_tag">*Name</div>
					<input class = "join_input" name="name" style = "display : inline-block;">
					<span class = "inner_text"></span>
					<div class = "join_tag">&nbsp;Nickname</div>
					<input class = "join_input" name="nickname" style = "display : inline-block;">
					<span class = "inner_text"></span>
					<div class = "join_tag">*Email</div>
					<input class = "join_input" name="email" style = "display : inline-block;">
					<span class = "inner_text"></span>
					
					<input type="submit" value="회원가입" class="submitBT">
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