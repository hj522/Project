<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	@font-face {
	    font-family: 'MICEGothic Bold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
	    font-weight: 700;
	    font-style: normal;
	}
	
	* {
		font-family: 'MICEGothic Bold';
		
	}
		
	input[type=text] {
		border-radius: 4%;
		border: 2px solid rgb(239,239,239);
		font-size: 11pt;
		width: 450px;
		height: 40px;
		padding-left: 10px;
	}
	
	input:focus {
		outline: none !important; 
		border-color: #2099BB; 
	}
	select {
		border-radius: 4%;
		border: 2px solid rgb(239, 239, 239);
		font-size: 11pt;
		width: 130px;
		height: 46px;
		padding-left: 10px;
	}
	button {
		width: 135px;
		height: 50px;
		font-size: 11pt;
		text-align: center;
		background-color: #2099BB;
		color: white;
		border: 0px;
		border-radius: 3%;
		cursor: pointer;
	}
</style>
</head>
<body>
	<div style="border: 1px solid grey; width: 530px; height: 470px; padding-top: 25px; border-radius: 4%;">
		<div style="font-size: 18pt; padding-bottom: 20px; padding-left: 45px; ">
			비밀번호 찾기<br>
		</div>
		<hr>
		<p style="padding-left: 45px;">
			임플 통합회원 가입정보를 입력해주세요.
		</p>
		<div style="padding-left: 45px;">
		<form action="pwFound.do" onsubmit="return f_find()">
			아이디<br><br>
			<input name="id" type="text"><br><br>
			이메일<br><br>
			<input id="inputM" name="email1" type="text" style="width:150px;">&nbsp;@
			<select id="selectM" name="email2">
					<option selected>선택해주세요</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
				</select>&nbsp;
			<button type="button" id="in" onclick="f_in()">인증번호 받기</button><br><br> 
			<input id="in2" type="text" style="width:200px;" disabled>&nbsp;
			<button type="button" id="num" onclick="f_numCk()" disabled>인증번호 확인</button><br><br>
			<button style="width:470px;">비밀번호 찾기</button>
		</form>	
		</div>
	</div>
	<script>
		var v_in = document.querySelector("#in");
		var v_in2 = document.querySelector("#in2");
		var v_num = document.querySelector("#num");
		const c_mailIn = document.querySelector("#inputM");
		const c_selM = document.querySelector("#selectM");
		
		var numCode;

		// 메일 발송
		function f_in() {
//			alert("클릭");
			v_in2.disabled = false;
			v_num.disabled = false;

			var inMail = c_mailIn.value + "@" + c_selM.value;
	//		console.log("fullMail: ", inMail);

			$.ajax({
				type:"get",
				url:"<%=request.getContextPath()%>/PwMailCheck",
				data:"pwMailCk=" + inMail,
				dataType:"text",
				success:function(result){
					console.log("확인: ", result);
					numCode = result;
					alert("인증메일이 발송되었습니다!\n메일을 확인해주세요.")
					v_in2.focus();
				}
			})
		}

		// 인증번호 일치 확인
		var verifyNum = false;

		function f_numCk() {
	//		alert("클릭2");
			
			if(numCode == $('#in2').val()) {
				verifyNum = true;
				alert("인증에 성공하셨습니다.")
			} else {
				alert("인증에 실패하셨습니다.")
			}
		}

		// 비밀번호 찾기 전송 직전
		
		function f_find() {

			if(!verifyNum) {
				alert("메일 인증을 하지 않았습니다.");
				v_in2.focus();
				return false;
			}
		}
	</script>
</body>
</html>