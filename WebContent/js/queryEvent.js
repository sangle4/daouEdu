var flag = false; //alert check 변수

function q1func() {
	var input = $('#idField').val(); //사용자 input값 저장
	var data = new Object(); //data를 담을 객체 생성
	
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
			if(obj.err_code != 0) { //에러가 존재하면
				$("#cust_id").html("");
				alert("데이터 조회에 실패하였습니다.");
				flag = true; //에러 alert 출력함을 알림
				$("#idField").val("");
			}
		}, //ajax 통신 오류 발생 시
		err : function() {
			alert("요청에 실패하였습니다.")
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
				
				if(obj.arr.length == 0) {
					if(flag == false)
						alert("조회할 데이터가 없습니다.");
					return 0;
				}
				else
					alert(obj.arr.length + "건이 조회되었습니다.");
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
				index = Number(obj.arr[obj.arr.length-1].cust_id) + 1; //맨 마지막으로 확인한 데이터를 저장
				$("#index").val(index);
			},
			err : function() { //ajax 통신 오류 발생 시
				alert("요청에 실패하였습니다.")
			}
		});
	}
}

function q3func() {
	q1func(); //고객 정보 조회 함수 실행
	sleep(100); //0.1초 딜레이
	q2func(); //테이블 데이터 조회 함수 실행
}

function q4func() {
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
			if(obj.err_code != 0) {
				alert("조회할 데이터가 없습니다.");
				$("#cust_id2").val("");
				$('#idField').val("");
				return 0;
			}
			else { // 각 필드에 데이터를 채움
				$("#cust_id2").val(obj.cust_id);
				$("#cust_name2").val(obj.cust_name);
				$("#login_id2").val(obj.login_id);
				$("#login_pswd2").val(obj.login_pswd);
				$("#login_name2").val(obj.login_name);
				$("#cust_gender_type2").val(obj.cust_gender_type);
				$("#cust_grade2").val(obj.cust_grade);
			}
		},
		err : function() {
			alert("요청에 실패하였습니다.")
		}
	});
}

function q4Clear(type) { //데이터 클리어 함수
	$("#cust_id" + type).val("");
	$("#cust_name" + type).val("");
	$("#login_id" + type).val("");
	$("#login_pswd" + type).val("");
	$("#login_name" + type).val("");
	$("#cust_gender_type" + type).val("");
	$("#cust_grade" + type).val("");
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
				
				if(obj.arr.length == 0) {
					alert("조회할 데이터가 없습니다.");
					return 0;
				}
				else
					alert(obj.arr.length + "건이 조회되었습니다.");
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
				index = Number(obj.arr[obj.arr.length-1].cust_id) + 1;
				$("#index").val(index);
			},
			err : function() { //ajax 통신 오류 발생 시
				alert("요청에 실패하였습니다.")
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
				if(obj.arr.length == 0) {
					alert("조회할 주문내역 데이터가 없습니다.");
					
					var inner = "";
					for(var i = 0; i < 4; i++) //테이블 초기화
						inner += '<tr id="dbTR"><td>-</td><td>-</td><td>-</td><td>-</td></tr>';
					
					tableBody.innerHTML = inner;
					return 0;
				}
				else
					alert(obj.arr.length + "건이 조회되었습니다.");
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
				index = Number(obj.arr[obj.arr.length-1].cust_id) + 1;
				$("#index").val(index);
			},
			err : function() {
				alert("요청에 실패하였습니다.")
			}
		});
	}
}

function sleep(delay) { //딜레이 함수
	var start = new Date().getTime(); //현재 시간을 받아와서
	while(new Date().getTime() < start + delay); //현재시각에 딜레이 시간을 추가한 만큼 대기
}

function crudFunc(signal) { // 1 : register, 2 : modify, 3 : delete
	var data = new Object(); //전송할 데이터 객체 생성
	data.type_num = signal; //받은 signal을 저장하여 타입을 결정
	
	if(signal == 3){ // delete
		data.cust_id = $('#idField').val(); //delete에는 cust_id만 필요하므로 하나만 저장
	}
	else { // insert or update, 두 쿼리 실행에 필요한 데이터를 필드에서 불러와서 저장
		data.cust_id = $('#cust_id' + signal).val();
		data.cust_name = $('#cust_name' + signal).val();
		data.login_id = $('#login_id' + signal).val();
		data.login_pswd = $('#login_pswd' + signal).val();
		data.login_name = $('#login_name' + signal).val();
		data.cust_gender_type = $('#cust_gender_type' + signal).val();
		data.cust_grade = $('#cust_grade' + signal).val();
	}
	var jsonData = JSON.stringify(data);
	
	var urlText = "http://localhost:8080/com/intern/u03/tr4";
	if(confirm("정말로 수행하시겠습니까?")){ // 예 버튼 클릭시
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
				if(obj.err_code == 0)
					alert("성공적으로 수행되었습니다.");
				else
					alert("요청에 실패하였습니다. \n에러코드 : " + obj.err_code);
			},
			err : function() { //ajax 통신 오류 발생 시
				alert("요청에 실패하였습니다.")
			}
		});
	}
}