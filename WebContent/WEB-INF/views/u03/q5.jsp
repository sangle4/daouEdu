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
		<div style="width : 465px; height : 45px;">
			<input type="submit" style="margin : 10px; float : right;" value="View" class="submitBT" onclick="">
		</div>
		<div>
			<table class = "dbtable" onLoad="" style="width:750px; border: 1px solid #1E60B5;">
				<thead>
					<tr id="dbTR" style="background-color: #1E60B5">
						<th>Cust_id</th>
						<th>name</th>
						<th>Login_id</th>
						<th>Orders</th>
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