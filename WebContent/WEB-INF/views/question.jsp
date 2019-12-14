<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Lattes - Onepage Multipurpose Bootstrap HTML</title>


<link href="../resource/css/bootstrap.min.css" rel="stylesheet">
<link href="../resource/css/owl.theme.default.min.css" rel="stylesheet">
<link href="../resource/css/style.css" rel="stylesheet">

<script src="../resource/js/jquery-3.3.1.min.js"></script>
<script src="../resource/js/ie-emulation-modes-warning.js"></script>
<script src="../resource/js/bootstrap.js"></script>
<script src="../resource/js/ie10-viewport-bug-workaround.js"></script>


</head>
<body id="page-top">
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand page-scroll" href="#page-top">
				DAOU
			</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="#portfolio">RESTful API</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<!-- Header -->
	<header>
	<div class="container">
		<div class="slider-container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome To DAOU Tech!</div>
				<div class="intro-heading"><strong class="its">It's</strong> Nice To Meet You</div>
			</div>
		</div>
	</div>
	</header>
	
	<section id="portfolio" class="light-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="section-title">
					<h2>RESTful API</h2>
					<p>Question 박스를 통해 과제내용을 확인한 후 Execute를 통한 모달창에 과제를 구현합니다.</p>
					<a href="#" data-toggle="modal" data-target="#Modal-sys" id="openMD-11" class="">시스템 아키텍쳐 보기</a>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba1"> <img
						src="../resource/images/demo/portfolio-1.jpg" alt="img02"
						class="img-responsive" /> 
						<figcaption>
							<h2>Question NO.1</h2>
							<a href="#" data-toggle="modal" data-target="#Modal-11" id="openMD-11" class="modalClk">View
							more</a>
						</figcaption> 
					</figure>
				</div>
			</div>
			<!-- end portfolio item -->
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba1"> <img
						src="../resource/images/demo/portfolio-2.jpg" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>Question NO.2</h2>
					<a href="#" data-toggle="modal" data-target="#Modal-12" id="openMD-12" class="modalClk">View
						more</a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba1"> <img
						src="../resource/images/demo/portfolio-3.jpg" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>Question NO.3</h2>
					<a href="#" data-toggle="modal" data-target="#Modal-13" id="openMD-13" class="modalClk">View
						more</a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
		</div>
		
		<div class="row">
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba2"> <img
						src="../resource/images/demo/portfolio-10.JPG" alt="img02"
						class="img-responsive" /> 
						<figcaption>
							<h2>EXECUTE1</h2>
							<!-- <a href="#" data-toggle="modal" data-target="#Modal-1" id="openMD-1" class="modalClk">View
							more</a> -->
							<a href="http://192.168.0.94:8080/result/${stdid}/q1" class="modalClk"
								onclick="window.open(this.href, '_black', 
								'width=800px,height=600px,toolbars=no, scrollbar=yes'); return false;" )></a>
						</figcaption> 
					</figure>
				</div>
			</div>
			<!-- end portfolio item -->
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba2"> <img
						src="../resource/images/demo/portfolio-10.JPG" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>EXECUTE</h2>
					<a href="http://192.168.0.94:8080/result/${stdid}/q2" class="modalClk"
								onclick="window.open(this.href, '_black', 
								'width=800px,height=600px,toolbars=no, scrollbar=yes'); return false;" )></a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba2"> <img
						src="../resource/images/demo/portfolio-10.JPG" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>EXECUTE</h2>
					<a href="http://192.168.0.94:8080/result/${stdid}/q3" class="modalClk"
								onclick="window.open(this.href, '_black', 
								'width=800px,height=600px,toolbars=no, scrollbar=yes'); return false;" )></a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
		</div>
		
		
		
		
		
		<div class="row">
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba1"> <img
						src="../resource/images/demo/portfolio-4.jpg" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>Question NO.4</h2>
					<a href="#" data-toggle="modal" data-target="#Modal-14" id="openMD-14" class="modalClk">View
						more</a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba1"> <img
						src="../resource/images/demo/portfolio-5.jpg" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>Question NO.5</h2>
					<a href="#" data-toggle="modal" data-target="#Modal-15" id="openMD-15" class="modalClk">View
						more</a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba1"> <img
						src="../resource/images/demo/portfolio-6.jpg" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>Question NO.6</h2>
					<a href="#" data-toggle="modal" data-target="#Modal-16" id="openMD-16" class="modalClk">View
						more</a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
		</div>
		
		<div class="row">
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba2"> <img
						src="../resource/images/demo/portfolio-10.JPG" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>EXECUTE</h2>
					<a href="http://192.168.0.94:8080/result/${stdid}/q4" class="modalClk"
								onclick="window.open(this.href, '_black', 
								'width=800px,height=600px,toolbars=no, scrollbar=yes'); return false;" )></a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba2"> <img
						src="../resource/images/demo/portfolio-10.JPG" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>EXECUTE</h2>
					<a href="http://192.168.0.94:8080/result/${stdid}/q5" class="modalClk"
								onclick="window.open(this.href, '_black', 
								'width=800px,height=600px,toolbars=no, scrollbar=yes'); return false;" )></a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
			<!-- start portfolio item -->
			<div class="col-md-4">
				<div class="ot-portfolio-item">
					<figure class="effect-bubba effect-bubba2"> <img
						src="../resource/images/demo/portfolio-10.JPG" alt="img02"
						class="img-responsive" /> <figcaption>
							<h2>EXECUTE</h2>
					<a href="http://192.168.0.94:8080/result/${stdid}/q6" class="modalClk"
								onclick="window.open(this.href, '_black', 
								'width=800px,height=600px,toolbars=no, scrollbar=yes'); return false;" )></a> </figcaption> </figure>
				</div>
			</div>
			<!-- end portfolio item -->
		</div>
		
		
	</div>
	<!-- end container --> </section>
	
	<p id="back-top">
		<a href="#top" style="padding-top:10px;font-size:40px;font-weight:900">↑</a>
	</p>
	<footer>
	<div class="container text-center">
		<p>
			Business Infra. Daou Tech.
		</p>
	</div>
	</footer>
	
	
	<div class="modal fade" id="Modal-11" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">과제1 : 고객정보 조회</h4>
				</div>
				<div class="modal-body">
					<div class="div-desc">
						<h4 class="subtitle">조건</h4>
						Input값으로 고객ID를 이용하여 '고객' 테이블에서 해당 고객의 정보를 불러온다. <br />
						Output은 '고객' 테이블에서 해당 고객ID에 해당하는 모든 컬럼의 데이터이다.<br />
						고객ID는 유니크하므로 단 한 줄의 행(Row)만이 조회된다.<br />
						<br />
						<h4 class="subtitle">API</h4>
						절대경로 : http://localhost:8080/com/intern/{u01}/q1<br />
						상대경로 : /com/intern/{u01}/q1<br />
						<br />
						{}안은 "u+본인에게 할당된 번호"를 적는다.<br />
						만약 12번이라면 이 문제에 대한 api uri는 "http://localhost:8080/com/intern/u12/q1"이 된다.<br />
						html form 태그 등을 이용해 호출할 경우 상대경로인 "/com/intern/u12/q1"로도 호출이 가능하다.
					</div>
					<div class="div-io">
						<h4 class="subtitle">I/O</h4>
						리스트는 <b style="color:#79b8fd;">하늘색</b>으로 표시.
						<table class="tab-io">
							<tr><th colspan="2">Input</th><th colspan="2">Output</th></tr>
							<tr><th>컬럼명</th><th>데이터 타입</th><th>컬럼명</th><th>데이터 타입</th></tr>
							<tr><td>고객ID</td><td>Number</td><td>고객ID</td><td>Number</td></tr>
							<tr><td></td><td></td><td>고객이름</td><td>String(40)</td></tr>
							<tr><td></td><td></td><td>고객성별</td><td>String(1)</td></tr>
							<tr><td></td><td></td><td>로그인ID</td><td>String(10)</td></tr>
							<tr><td></td><td></td><td>로그인비밀번호</td><td>String(40)</td></tr>
							<tr><td></td><td></td><td>접속별명</td><td>String(40)</td></tr>
							<tr><td></td><td></td><td>고객등급</td><td>String(1)</td></tr>
						</table>
						<div class="div-txtar">
						<span><textarea class="json-txt">{"고객ID": 1234}</textarea></span><span><textarea class="json-txt">{"고객ID": 1234, "고객이름": "홍길동", "고객성벌": "남", "로그인ID": "daou2019",  "로그인비밀번호": "daou2019!", "접속별명": "hongload", "고객등급": "gold"}</textarea></span>
						</div>
					</div>
					<div class="div-view">
						<h4 class="subtitle">VIEW</h4>
						예시화면<br />
						<img class="img-view" alt="" src="../resource/images/q1.JPG">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="Modal-12" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">과제2 : 고객정보 리스트 조회</h4>
				</div>
				<div class="modal-body">
					<div class="div-desc">
						<h4 class="subtitle">조건</h4>
						주어진 Input 데이터를 이용하여 해당하는 고객 리스트를 불러온다.<br />
						조회할 데이터는 Output에 명시된 4개의 데이터와 같다.<br />
						입력한 고객ID와 문자열 비교하여 사전순으로 같거나 큰 데이터를 20개씩 화면에 보여준다. <br />
						한 화면에 보이는 최대 데이터는 20건이며 버튼 등의 추가 동작을 통해 20건씩 갱신 조회한다.
						<br /><br />
						<h4 class="subtitle">API</h4>
						절대경로 : http://localhost:8080/com/intern/{u01}/q2<br />
						상대경로 : /com/intern/{u01}/q2<br />
					</div>
					<div class="div-io">
						<h4 class="subtitle">I/O</h4>
						리스트는 <b style="color:#79b8fd;">하늘색</b>으로 표시.
						<table class="tab-io">
							<tr><th colspan="2">Input</th><th colspan="2">Output</th></tr>
							<tr><th>컬럼명</th><th>데이터 타입</th><th class="th-blue">컬럼명</th><th class="th-blue">데이터 타입</th></tr>
							<tr><td>고객ID</td><td>Number</td><td class="th-blue">고객ID</td><td class="th-blue">Number</td></tr>
							<tr><td></td><td></td><td class="th-blue">고객이름</td><td class="th-blue">String(40)</td></tr>
							<tr><td></td><td></td><td class="th-blue">로그인ID</td><td class="th-blue">String(10)</td></tr>
							<tr><td></td><td></td><td class="th-blue">고객등급</td><td class="th-blue">String(11)</td></tr>
						</table>
						<div class="div-txtar">
						<span><textarea class="json-txt">{"고객ID": 1234}</textarea></span><span><textarea class="json-txt">{"g1": [{"고객ID": 1234, "고객이름": "홍길동", "로그인ID": "daou2019",  "고객등급": "gold"}, {"고객ID": 1235, "고객이름": "홍길동2", "로그인ID": "daou2020",  "고객등급": "gold"}, {"고객ID": 1236, "고객이름": "홍길동3", "로그인ID": "daou2021",  "고객등급": "silver"}, {"고객ID": 1237, "고객이름": "홍길동4", "로그인ID": "daou2022",  "고객등급": "gold"}, {"고객ID": 1238, "고객이름": "홍길동5", "로그인ID": "daou2023",  "고객등급": "gold"}]}</textarea></span>
						</div>
					</div>
					<div class="div-view">
						<h4 class="subtitle">VIEW</h4>
						예시화면<br />
						<img class="img-view" alt="" src="../resource/images/q2.jpg">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="Modal-13" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">과제3 : 고객정보 조회(Single/Multi)</h4>
				</div>
				<div class="modal-body">
					<div class="div-desc">
						<h4 class="subtitle">조건</h4>
						과제 1과 과제 2를 한 화면에 나타낸다.<br /><br />
						[리스트 테이블]<br />
						주어진 Input 데이터를 이용하여 해당하는 고객 리스트를 불러온다.<br />
						조회할 데이터는 Output에 명시된 4개의 데이터와 같다.<br />
						입력한 고객ID와 데이터를 비교하여, 일치하거나 사전 순으로 뒤쪽에 위치한 데이터를 20개씩 화면에 보여준다. <br />
						문자열 연산 대신 일반 부등호를 사용하여 사전 순으로 비교할 수 있다.<br />
						한 화면에 보이는 최대 데이터는 20건이며 버튼 등의 추가 동작을 통해 20건씩 갱신 조회한다.<br />
						<br />
						[고객정보 테이블]<br />
						데이터가 조회된 화면의 데이터 중 한 건을 클릭하면 클릭한 데이터에 대응하는 고객정보를 조회한다.<br />
						조회된 고객 한 명의 데이터는 예시 화면과 같이 고객 리스트와는 별도의 화면에 출력된다.<br />
						고객ID는 유니크하므로 단 한 줄의 행(Row)만이 조회된다.
						<br /><br />
						<h4 class="subtitle">API</h4>
						절대경로 : http://localhost:8080/com/intern/{u01}/q3<br />
						상대경로 : /com/intern/{u01}/q3<br />
						
					</div>
					<div class="div-io">
						<h4 class="subtitle">I/O</h4>
						리스트는 <b style="color:#79b8fd;">하늘색</b>으로 표시.
						<table class="tab-io3">
							<tr><th colspan="2">Input</th><th colspan="2">Output</th></tr>
							<tr><th>컬럼명</th><th>데이터 타입</th><th>컬럼명</th><th>데이터 타입</th></tr>
							<tr><td>고객ID</td><td>Number</td><td>고객ID</td><td>Number</td></tr>
							<tr><td></td><td></td><td>고객이름</td><td>String(40)</td></tr>
							<tr><td></td><td></td><td>고객성별</td><td>String(1)</td></tr>
							<tr><td></td><td></td><td>로그인ID</td><td>String(10)</td></tr>
							<tr><td></td><td></td><td>로그인비밀번호</td><td>String(40)</td></tr>
							<tr><td></td><td></td><td>접속별명</td><td>String(40)</td></tr>
							<tr><td></td><td></td><td>고객등급</td><td>String(1)</td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td>고객ID</td><td>Number</td><td class="th-blue">고객ID</td><td class="th-blue">Number</td></tr>
							<tr><td></td><td></td><td class="th-blue">고객이름</td><td class="th-blue">String(40)</td></tr>
							<tr><td></td><td></td><td class="th-blue">로그인ID</td><td class="th-blue">String(10)</td></tr>
							<tr><td></td><td></td><td class="th-blue">고객등급</td><td class="th-blue">String(11)</td></tr>
						</table>
						<div class="div-txtar">
						<span><textarea class="json-txt">상단:{"고객ID": 1234} 

하단:{"고객ID": 1234}</textarea></span><span><textarea class="json-txt">상단: {"고객ID": 1234, "고객이름": "홍길동", "고객성벌": "남", "로그인ID": "daou2019",  "로그인비밀번호": "daou2019!", "접속별명": "hongload", "고객등급": "gold"} 

하단: {"g1": [{"고객ID": 1234, "고객이름": "홍길동", "로그인ID": "daou2019",  "고객등급": "gold"}, {"고객ID": 1235, "고객이름": "홍길동2", "로그인ID": "daou2020",  "고객등급": "gold"}, {"고객ID": 1236, "고객이름": "홍길동3", "로그인ID": "daou2021",  "고객등급": "silver"}, {"고객ID": 1237, "고객이름": "홍길동4", "로그인ID": "daou2022",  "고객등급": "gold"}, {"고객ID": 1238, "고객이름": "홍길동5", "로그인ID": "daou2023",  "고객등급": "gold"}]}</textarea></span>
						</div>
					</div>
					<div class="div-view">
						<h4 class="subtitle">VIEW</h4>
						예시화면<br />
						<img class="img-view" alt="" src="../resource/images/q3.jpg">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="Modal-14" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">과제4 : 고객정보관리(입력/조회/수정/삭제)</h4>
				</div>
				<div class="modal-body">
					<div class="div-desc">
						<h4 class="subtitle">조건</h4>
						'고객' 테이블에 대해 입력, 조회, 수정, 삭제(CRUD)를 가능하게 한다. <br><br>

						입력 : 신규 고객 정보를 입력하여 저장할 수 있도록 한다.<br />　　　'고객ID'는 유니크 속성을 가지므로 다른 고객과 중복되어서는 안 된다.<br>
						조회 : 고객ID를 입력하여 해당 고객 정보를 조회한다.<br>
						수정 : 조회된 정보를 수정하여 데이터를 전송한다.<br>
						삭제 : 조회된 데이터를 삭제 요청한다.<br>
						<br>						
						요청에 대한 결과를 Output으로 보여준다. 4개의 요청 모두 하나의 API를 콜한다.			
						<br /><br />
						<h4 class="subtitle">API</h4>
						절대경로 : http://localhost:8080/com/intern/{u01}/q4<br />
						상대경로 : /com/intern/{u01}/q4<br />			
					</div>
					<div class="div-io">
						<h4 class="subtitle">I/O</h4>
						리스트는 <b style="color:#79b8fd;">하늘색</b>으로 표시.
						<table class="tab-io">
							<tr><th colspan="2">Input</th><th colspan="2">Output</th></tr>
							<tr><th>컬럼명</th><th>데이터 타입</th><th>컬럼명</th><th>데이터 타입</th></tr>
							<tr><td>고객ID</td><td>Number</td><td>결과메세지</td><td></td></tr>
							<tr><td>고객이름</td><td>String(40)</td><td></td><td></td></tr>
							<tr><td>고객성별</td><td>String(1)</td><td></td><td></td></tr>
							<tr><td>로그인ID</td><td>String(10)</td><td></td><td></td></tr>
							<tr><td>로그인비밀번호</td><td>String(40)</td><td></td><td></td></tr>
							<tr><td>접속별명</td><td>String(40)</td><td></td><td></td></tr>
							<tr><td>고객등급</td><td>String(1)</td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td>고객ID</td><td>Number</td><td>좌측상단과 동일</td><td></td></tr>
						</table>
						<div class="div-txtar">
						<span><textarea class="json-txt">입력,수정 : 
{"고객ID": 1234, "고객이름": "홍길동", "고객성벌": "남", "로그인ID": "daou2019",  "로그인비밀번호": "daou2019!", "접속별명": "hongload", "고객등급": "gold"}

조회,삭제: 
{"고객ID": 1234}
</textarea></span><span><textarea class="json-txt">입력,수정,삭제 : 
{"결과메세지": "정상"}

조회: 
{"고객ID": 1234, "고객이름": "홍길동", "고객성벌": "남", "로그인ID": "daou2019",  "로그인비밀번호": "daou2019!", "접속별명": "hongload", "고객등급": "gold"}</textarea></span>
						</div>
					</div>
					<div class="div-view">
						<h4 class="subtitle">VIEW</h4>
					      예시화면<br />
						<img class="img-view" alt="" src="../resource/images/q4.jpg">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="Modal-15" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">과제5 : 주문내역 존재하는 고객리스트 조회</h4>
				</div>
				<div class="modal-body">
					<div class="div-desc">
						<h4 class="subtitle">조건</h4>
						고객들중 주문내역이 한 건 이상 존재하는 고객들의 리스트를 가져온다.<br />
						'주문내역' 테이블에 접근하여 Output으로 고객ID, 모든 주문의 건수를 출력한다.<br />
						'주문내역' 테이블에는 주문 건수 컬럼은 존재하지 않으며, 고객ID와 일치하는 주문의 개수를 계산하여 가져와야 한다.<br />
						한 번에 최대 20개의 데이터를 가져오며 추가 조회를 통해 20개씩 끊어서 출력한다.
						<br /><br />
						<h4 class="subtitle">API</h4>
						절대경로 : http://localhost:8080/com/intern/{u01}/q5<br />
						상대경로 : /com/intern/{u01}/q5<br />
					</div>
					<div class="div-io">
						<h4 class="subtitle">I/O</h4>
						리스트는 <b style="color:#79b8fd;">하늘색</b>으로 표시.
						<table class="tab-io">
							<tr><th colspan="2">Input</th><th colspan="2">Output</th></tr>
							<tr><th>컬럼명</th><th>데이터 타입</th><th>컬럼명</th><th>데이터 타입</th></tr>
							<tr><td></td><td></td><td class="th-blue">고객ID</td><td class="th-blue">Number</td></tr>
							<tr><td></td><td></td><td class="th-blue">이름</td><td class="th-blue">String(40)</td></tr>
							<tr><td></td><td></td><td class="th-blue">로그인ID</td><td class="th-blue">String(10)</td></tr>
							<tr><td></td><td></td><td class="th-blue">주문건수</td><td class="th-blue">Number</td></tr>
						</table>
						<div class="div-txtar">
						<span><textarea class="json-txt"></textarea></span><span><textarea class="json-txt">{"g1": [{"고객ID": 2019, "이름":"홍길동", "로그인ID":"honggd", "주문건수": 37}, {"고객ID": 3544, "이름":"홍길서", "로그인ID":"honggs", "주문건수": 42}, {"고객ID": 9884, "이름":"홍길남", "로그인ID":"honggn", "주문건수": 3}]}</textarea></span>
						</div>
					</div>
					<div class="div-view">
						<h4 class="subtitle">VIEW</h4>
						예시화면<br />
						<img class="img-view" alt="" src="../resource/images/q5.jpg">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="Modal-16" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">과제6 : 날짜별 주문 조회</h4>
				</div>
				<div class="modal-body">
					<div class="div-desc">
						<h4 class="subtitle">조건</h4>
						Input으로 주문일자와 고객ID를 입력하여 해당일자에 고객이 주문한 내역을 가져온다.<br>
						'고객' 테이블과 '주문내역' 테이블을 이용한다.<br />
						캘린더를 이용하여 날짜를 입력하고, 1회 전송가능한 데이터는 20건으로 데이터가 20건이 넘을시 추가조회를 이용한다.
						<br /><br />
						<h4 class="subtitle">API</h4>
						절대경로 : http://localhost:8080/com/intern/{u01}/q6<br />
						상대경로 : /com/intern/{u01}/q6<br />
					</div>
					<div class="div-io">
						<h4 class="subtitle">I/O</h4>
						리스트는 <b style="color:#79b8fd;">하늘색</b>으로 표시.
						<table class="tab-io">
							<tr><th colspan="2">Input</th><th colspan="2">Output</th></tr>
							<tr><th>컬럼명</th><th>데이터 타입</th><th>컬럼명</th><th>데이터 타입</th></tr>
							<tr><td>고객ID</td><td>Number</td><td class="th-blue">주문ID</td><td class="th-blue">Number</td></tr>
							<tr><td>주문일자</td><td>String(40)</td><td class="th-blue">주문일시</td><td class="th-blue">String(40)</td></tr>
							<tr><td></td><td></td><td class="th-blue">주문채널</td><td class="th-blue">String(1)</td></tr>
							<tr><td></td><td></td><td class="th-blue">주문상태</td><td class="th-blue">String(1)</td></tr>
							<tr><td></td><td></td><td>고객ID</td><td>Number</td></tr>
							<tr><td></td><td></td><td>고객이름</td><td>String(40)</td></tr>
							<tr><td></td><td></td><td>로그인ID</td><td>String(10)</td></tr>
							<tr><td></td><td></td><td>고객등급</td><td>String(1)</td></tr>
						</table>
						<div class="div-txtar">
						<span><textarea class="json-txt">{"고객ID": 2019, "주문일자": "2019-12-05"}</textarea></span><span><textarea class="json-txt">{"g1": [{"주문ID": 11111, "주문일시": "2019-12-05", "주문채널": "W", "주문상태": "S"}, {"주문ID": 12221, "주문일시": "2019-12-05", "주문채널": "W", "주문상태": "S"}, {"주문ID": 11131, "주문일시": "2019-12-12", "주문채널": "M", "주문상태": "C"}], "고객정보": {"고객ID": 1234, "고객이름": "홍길동", "로그인ID": "daou2019",  "고객등급": "gold"}}</textarea></span>
						</div>
					</div>
					<div class="div-view">
						<h4 class="subtitle">VIEW</h4>
						예시화면<br />
						<img class="img-view" alt="" src="../resource/images/q6.jpg">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	
	

	<!-- Modal for portfolio item 1 -->
	<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-1">API TEST 1</h4>
				</div>
				<div class="modal-body">
					<!-- <div class="modal-works">
					</div> -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-send" id="m1_send">전송</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for portfolio item 2 -->
	<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-2">API TEST 2</h4>
				</div>
				<div class="modal-body">
					<!-- <div class="modal-works">
					</div> -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-send" id="m2_send">전송</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for portfolio item 3 -->
	<div class="modal fade" id="Modal-3" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-3">API TEST 3</h4>
				</div>
				<div class="modal-body">
					<!-- <div class="modal-works">
					</div> -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-send" id="m3_send">전송</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for portfolio item 4 -->
	<div class="modal fade" id="Modal-4" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-4">API TEST 4</h4>
				</div>
				<div class="modal-body">
					<!-- <div class="modal-works">
					</div> -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-send" id="m4_send">전송</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for portfolio item 5 -->
	<div class="modal fade" id="Modal-5" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-5">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-5">API TEST 5</h4>
				</div>
				<div class="modal-body">
					<!-- <div class="modal-works">
					</div> -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-send" id="m5_send">전송</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Modal for portfolio item 6 -->
	<div class="modal fade" id="Modal-6" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-5">API TEST 6</h4>
				</div>
				<div class="modal-body">
					<!-- <div class="modal-works">
					</div> -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-send" id="m6_send">전송</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="Modal-sys" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-5">
		<div class="modal-dialog modal-d-sys" role="document">
			<div class="modal-content modal-sys">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-5">SYSTEM ARCHITECTURE</h4>
				</div>
				<div class="modal-body">
					<img class="img-sys" src="../resource/images/archi.JPG">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>