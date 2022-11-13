<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
	/** 폰트 적용해봤는데 맘에안들면 빼기..!**/
	@font-face {
	    font-family: 'MICEGothic Bold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
	    font-weight: 700;
	    font-style: normal;
	}

	* {
		margin: 0;
		padding: 0;
		/** 폰트 적용해봤는데 맘에안들면 빼기..!**/
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
	input[type=password] {
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
	button {
		width: 465px;
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
<form action="login.do" method="post">
	<div style="position: relative;">
	<div style="position: absolute; padding-left: 300px; padding-top: 280px; background-color: rgb(250,250,250); width: 560px; height: 680px;">
		<p style="font-size: 17pt; font-weight: 500; line-height: 30pt;">
			임플의 다양한 서비스를<br>
			하나의 계정으로!
		</p>
		<p style="font-size: 10pt; line-height:18pt;">
			임플 서비스뿐만 아니라 임플 잡스, 요즘IT까지<br>
			하나의 계정으로 간편하게 이용해 보세요.<br>
		</p>
		<br><br><br>
		<img src="./images/login.png"> 
	</div>
	<div style="font-size: 17pt; padding-top: 220px; padding-left: 200px; position: absolute; left: 860px; width: 465px; height: 650px;">
		로그인<br><br>
		<h6>임플 통합회원 아이디</h6><br>
		<input type="text" name="id" placeholder="아이디" value=""><br><br>
		<h6>비밀번호</h6><br>
		<input type="password" name="pw" placeholder="비밀번호"><br>
		<div style="padding-bottom: 20px; padding-top: 20px; padding-left: 270px; display: inline-block;">
			<a href="javascript:f_idFound()" style=" font-weight:bold; font-size: 11pt; color:#2099BB; text-decoration: none;">아이디 찾기</a>
		</div>
		<div style="padding-bottom: 20px; padding-top: 20px; padding-left: 10px; display: inline-block;">
			<a href="javascript:f_pwFound()" style=" font-weight:bold; font-size: 11pt; color:#2099BB; text-decoration: none;">비밀번호 찾기</a>
		</div>
		<button>로그인</button><br><br>
		<hr><br>
		<p style="font-size: 11pt; padding-left: 100px;">
			아직 임플 회원이 아니신가요? <a href="./registerMember.jsp" style="text-decoration: none; color: #2099BB; font-weight: bold;">회원가입</a>
		</p> 
	</div>
	</div>
</form>
<script>
	var v_newWin;
	function f_idFound() {
    	v_newWin = window.open("idFound.jsp", "tab", "width=572, height=460");
	}
	function f_pwFound() {
    	v_newWin = window.open("pwFound.jsp", "tab", "width=584, height=515");
	}
</script>
</body>
</html>