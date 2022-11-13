<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
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
	<div style="border: 1px solid grey; width: 555px; height: 415px; padding-top: 25px; border-radius: 4%;">
		<div style="font-size: 18pt; padding-bottom: 20px; padding-left: 45px; ">
			아이디 찾기<br>
		</div>
		<hr>
		<p style="padding-left: 45px;">
			임플 통합회원 가입정보를 입력해주세요.
		</p>
		<div style="padding-left: 45px;">
			<form action="idFound.do">
				이름<br><br>
				<input type="text" name="name"><br><br>
				전화번호<br><br>
				<input type="text" name="tel"><br><br>
				<button>아이디 찾기</button>
			</form>
		</div>
	</div>
</body>
</html>