<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("findId");
%>
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
		width: 215px;
		height: 50px;
		font-size: 11pt;
		text-align: center;
		background-color: #2099BB;
		color: white;
		border: 0px;
		border-radius: 3%;
		cursor: pointer;
		margin-left: 45px;
	}
</style>
</head>
<body>
	<div style="border: 1px solid grey; width: 555px; height: 415px; padding-top: 25px; border-radius: 4%;">
		<div style="font-size: 18pt; padding-bottom: 20px; padding-left: 45px; ">
			아이디 찾기<br>
		</div>
		<hr>
		<% if(id != null) { %>
		<p style="padding-left: 45px; font-size: 18pt;">
			<br><br>회원님의 아이디는 [<%= id %>] 입니다.
		</p>
		<br><br><br><br><br><br>
			<button onclick="f_log()">로그인</button><button onclick="f_pw()">비밀번호 찾기</button>
		<% } else { %>
		<p style="padding-left: 45px;">
			<br><br>해당 정보로 등록된 회원이 없습니다.<br><br>
		</p>
		<br><br><br><br><br><br><br>
			<button onclick="f_back()" style="background-color: rgb(162, 166, 173)">돌아가기</button>
		<% } %>
	</div>
	<script>
		function f_back() {
			location.href = "idFound.jsp";
			<% session.removeAttribute("findId"); %>
		}
		function f_log() {
			window.close();
			
		}
		function f_pw() {
			location.href = "pwFound.jsp";
		}
	</script>
</body>
</html>