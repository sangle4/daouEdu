function q1func() {
	var input = $('#idField').val();
	var data = new Object();
	
	data.cust_id = input; //key로 똑같이 치환, input 넣을 때 사용
	
	var jsonData = JSON.stringify(data);
	
	var urlText = "http://localhost:8080/com/intern/u03/tr1";
	
	$.ajax({
		async : true,
		type : "POST",
		contentType : "application/json; charset=UTF-8",
		url : urlText,
		data : jsonData,
		success : function(dat) {
			var idx = dat.lastIndexOf('}');
			var obj = JSON.parse(dat);
			console.log(obj);
			$("#cust_id").html(obj.cust_id);
			$("#cust_name").html(obj.cust_name);
			$("#login_id").html(obj.login_id);
			$("#login_pw").html(obj.login_pswd);
			$("#nickname").html(obj.login_name);
			$("#gender").html(obj.cust_gender_type);
			$("#grade").html(obj.cust_grade);
		}
	});
}

function q2func() {
	var input = $('#idField').val(); //입력 필드 데이터를 불러옴
	if(Number(index) == 0) {//처음 호출 시 인덱스 그대로 입력
		index = input;
		$('#first').val(input); //검색 데이터 저장 공간에 저장
	}
	else
		index = $('#index').val(); //호출한 내역이 존재 시 hidden input에 있는 데이터를 저장
	
	var data = new Object();
	
	if(input != $('#first').val()){ //검색한 데이터와 다른 데이터 검색 시
		index = 0; //인덱스를 초기화하고 함수 다시 실행
		q3func();
		//alert("74줄 if문의 index : " + index);
	}
	else{ //이어서 요청하는 경우
		$('#index').val(index);
		data.cust_id = $('#index').val(); //key로 똑같이 치환, input 넣을 때 사용
		//alert("78줄 else문의 index : " + index + "\nfirst val :" + $('#first').val());
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
				console.log(obj);
				
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

function q3func() {
	q1func();
	sleep(100);
	q2func();
}

function q4func() {
	if($('#idField').val() > 200000 || $('#idField').val() == "" || $('#idField').val() == 0){
		alert("200000 이하 숫자만 가능합니다.");
		$('#idField').val("");
		return 0;
	}
	var input = $('#idField').val();
	var data = new Object();
	
	data.cust_id = input; //key로 똑같이 치환, input 넣을 때 사용
	
	var jsonData = JSON.stringify(data);
	
	var urlText = "http://localhost:8080/com/intern/u03/tr1";
	
	$.ajax({
		async : true,
		type : "POST",
		contentType : "application/json; charset=UTF-8",
		url : urlText,
		data : jsonData,
		success : function(dat) {
			var idx = dat.lastIndexOf('}');
			var obj = JSON.parse(dat);
			$("#cust_id").val(obj.cust_id);
			$("#cust_name").val(obj.cust_name);
			$("#login_id").val(obj.login_id);
			$("#login_pswd").val(obj.login_pswd);
			$("#login_name").val(obj.login_name);
			$("#gender").val(obj.cust_gender_type);
			$("#grade").val(obj.cust_grade);
		}
	});
}

function q5func() {
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
		q5func();
	}
	else{ //이어서 요청하는 경우
		data.cust_id = index; //key로 똑같이 치환, input 넣을 때 사용
		
		var jsonData = JSON.stringify(data);
		
		var urlText = "http://localhost:8080/com/intern/u03/tr5";
		
		$.ajax({
			async : true,
			type : "POST",
			contentType : "application/json; charset=UTF-8",
			url : urlText,
			data : jsonData,
			success : function(dat) {
				var idx = dat.lastIndexOf('}');
				var obj = JSON.parse(dat);
				console.log(obj);
				
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
					inner += '<td>' + obj.arr[i].countNum + '</td></tr>';
				}
				tableBody.innerHTML = inner;
				index = Number(index) + Number(obj.arr.length);
				$("#index").val(index);
			}
		});
	}
}

function q6final() {
	q1func();
	sleep(100);
	q6func();
}

function q6func() {
	if($('#idField').val() > 200000 || $('#idField').val() == "" || $('#idField').val() == 0){
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
		q6func();
	}
	else{ //이어서 요청하는 경우
		var order_dt = $('#dateField').val();
		data.cust_id = index; //key로 똑같이 치환, input 넣을 때 사용
		data.order_dt = order_dt;
		
		var jsonData = JSON.stringify(data);
		
		var urlText = "http://localhost:8080/com/intern/u03/tr6";
		
		$.ajax({
			async : true,
			type : "POST",
			contentType : "application/json; charset=UTF-8",
			url : urlText,
			data : jsonData,
			success : function(dat) {
				var idx = dat.lastIndexOf('}');
				var obj = JSON.parse(dat);
				console.log(obj);
				
				var inner;
				if(index == input) //첫 데이터 반환 시 html을 초기화
					inner = "";
				else
					inner = tableBody.innerHTML; //데이터를 이어서 붙이는 경우 안의 데이터를 미리 받아서 저장
				
				for(var i = 0; i < obj.arr.length; i++){ //데이터를 덧붙여준다
					inner += '<tr id="dbTR">';
					inner += '<td>' + obj.arr[i].order_id + '</td>';
					inner += '<td>' + obj.arr[i].order_dt + '</td>';
					inner += '<td>' + obj.arr[i].order_channel_type + '</td>';
					inner += '<td>' + obj.arr[i].order_status + '</td></tr>';
				}
				tableBody.innerHTML = inner;
				index = Number(index) + Number(obj.arr.length);
				$("#index").val(index);
			}
		});
	}
}

function sleep(delay) {
	var start = new Date().getTime();
	while(new Date().getTime() < start + delay);
}

