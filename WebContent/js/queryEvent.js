/*
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
*/