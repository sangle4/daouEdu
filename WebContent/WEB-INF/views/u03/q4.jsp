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
<body>
	<div class="main_div">
		<!-- 고객 정보 등록 -->
		<div class="result_tab">
			<div style = "background-color : #1E60B5;border-bottom : 1px solid #BEE0FF; height : 50px;">
				<div class="tabfont" style="color : white; font-size:24px; width:300px;">Register Customer Info</div>
			</div>
			<div class = "user_status">
				<form action="" method="POST" onsubmit = ""> 
					<p>
						고객ID&emsp;<input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="text" class="input_box" name="cust_id">
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
			<input type="submit" style="margin : 0px 10px 10px 10px;" value="register" class="submitBT" onclick="">
		</div>
		
		<!-- 고객 정보 수정 / 삭제 -->
		<div class="result_tab">
			<div style = "background-color : #1E60B5;border-bottom : 1px solid #BEE0FF; height : 50px;">
				<div class="tabfont" style="color : white; font-size:24px; width:400px;">Modify / Delete Customer Info</div>
			</div>
			<div class = "user_status">
			<div style = "border-bottom : 1px solid #BEE0FF;">
				<div class="tabfont" style = "width : 130px;font-size : 22px;">Customer ID</div>
				<input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="userid" class="searchform" id = "idField">
				<input type="submit" value="search" class="submitBT" onclick="q4func()"> 
			</div>
				<p>
					고객ID&emsp;<input style = "background-color : #F2F8FF" type="text" class="input_box" id="cust_id" readonly="readonly">
					<span style="float : right;">이름<input type="text" class="input_box" id="cust_name"></span>
				</p>
				<p>
					로그인ID<input type="text" class="input_box" id="login_id">
					<span style="float : right;">로그인PW<input type="text" class="input_box" id="login_pswd"></span>
				</p>
				<p>
					접속별명<input type="text" class="input_box" id="login_name"> 
					<span style="float : right;">성별<input type="text" class="input_box" id="gender"></span>
				</p>
				<p>
					고객등급<input type="text" class="input_box" id="grade"> 
				</p>
			</div>
			<input type="submit" style="color : white; background-color : #1E60B5; margin : 0px 10px 10px 10px;" value="Delete" class="submitBT" onclick="">
			<input type="submit" style="margin : 0px 10px 10px 10px;" value="Modify" class="submitBT" onclick="">
		</div>
		
		<div style="width : 450px; height : 35px;">
			<input type="button" style="float : right;" value="Close" class="closeBT" onclick="window.close()">
		</div>
	</div>
</body>
</html>