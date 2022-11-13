<%@page import="client.vo.ClientVO"%>
<%@page import="partners.vo.PartnersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	String loginC = (String) session.getAttribute("loginIdC");
	String loginP = (String) session.getAttribute("loginIdP");
	PartnersVO pvo = (PartnersVO) session.getAttribute("pInfo");
	ClientVO cvo = (ClientVO) session.getAttribute("cInfo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연결고리 imp!</title>
<link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png">
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

.hheader {
	position: relative;
	margin: 0 auto;
	border-bottom: 1px solid rgb(218, 218, 218);
	box-sizing: border-box;
	font-size: 12pt;
	height: 70px;
	width: 100%;
}

section.sss {
	left: 325px;
	position: absolute;
	background-color: white;
	height: 50px;
}

.containers {
	position: absolute;
	left: 20px;
	top: 10px;
	display: inline-block;
}

.left-navv {
	position: absolute;
	display: inline-block;
	padding-left: 180px; 
	padding-top: 20px;
	width: 800px;
}

.right-navv {
	position: absolute;
	width: 200px;
	left: 970px;
	padding-top: 20px;
}

.menu-bodyy {
	text-decoration: none;
	color: black;
	padding-right: 32px;
	
}

.logg {
	border-radius: 8%;
	text-decoration: none;
	color: rgb(255, 255, 255);
	background-color: rgb(162, 166, 173);
	padding: 6px 10px;
}

.signn {
	border-radius: 8%;
	text-decoration: none;
	color: rgb(255, 255, 255);
	background-color: rgb(32, 153, 187);
	padding: 6px 10px;
}
</style>
</head>
<body>
	<input type="hidden" id="client" value="<%= loginC %>">
	<input type="hidden" id="partners" value="<%= loginP %>">
	<header class="hheader">
		<section class="sss">
			<div class="containers">
				<a href="./index.jsp"><img src="./images/impl-nu.png" width="100px" height="45px"></a>
			</div>
			<div class="left-navv">
				<% if(loginC != null || (loginC == null && loginP == null)) { %>
				<a class="menu-bodyy" href="./projectRegister.jsp">프로젝트 등록</a>
				<% } %>
				<a class="menu-bodyy" href="/implOutSourcing/projectFind.do">프로젝트 찾기</a>
				<a class="menu-bodyy" href="./partnersFind.jsp">파트너스 찾기</a>
				<a class="menu-bodyy" href="./howToUse.jsp">이용방법</a>			
			</div>

			<div class="right-navv" style="z-index: 999;">
			<% if(loginC != null || loginP != null) { %>
				<a href="./customerCL.jsp" style="padding-right: 10px;"><img src="./images/center.png"></a>
				<a href="./message.jsp" style="padding-right: 15px;"><img src="./images/bell.png"></a>
				<a href="#"><img style="border-radius: 50%;" src="./images/who.png" width="30px" height="30px" onmouseover="f_in()"></a>
				<div id="mmoda" style="display: none; margin-left: 10px; margin-top: 10px; padding-left: 20px; padding-right: 20px; padding-top: 20px; padding-bottom: 20px; border-radius: 4%; border:2px solid grey; width: 200px; background-color: white;" onmouseover="f_in()" onmouseout="f_out()">
					<% if(loginC != null) { %>
					<a href="./mypageC.jsp" class="menu-bodyy">마이페이지</a><br><br><hr><br>
					<% } %>
					<% if(loginP != null) { %>
					<a href="./mypageP.jsp" class="menu-bodyy">마이페이지</a><br><br><hr><br>
					<% } %>
					<form id="logoutt" action="logout.do">
						<a href="javascript:f_logout()" class="menu-bodyy">로그아웃</a>
					</form>
				</div>
			<% } else { %>
				<a class="logg" href="./login.jsp">로그인</a>
				<a class="signn" href="./registerMember.jsp">회원가입</a>
			<% } %>
			</div>
			
		</section>
	</header>
	<script>
		var client = document.querySelector("#client");
		var partners = document.querySelector("#partners");
		var modal = document.querySelector("#mmoda");
		sessionStorage.setItem("loginIdC", client.value);
		sessionStorage.setItem("loginIdP", partners.value);
		function f_in() {
			modal.style.display = "block";
		}
		function f_out() {
			modal.style.display = "none";
		}
		function f_logout() {
			logoutt.submit();
		}
	</script>
</body>
</html>