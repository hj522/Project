<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	String loginInfo = (String) session.getAttribute("loginId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imp! 관리자 페이지</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="./images/favicon-32x32.png">
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

header {
	position: relative;
	margin: 0 auto;
	border-bottom: 1px solid rgb(218, 218, 218);
	box-sizing: border-box;
	font-size: 12pt;
	height: 70px;
	width: 100%;
}

section.s {
	left: 325px;
	position: absolute;
	background-color: white;
	height: 50px;
}

.container {
	position: absolute;
	left: 20px;
	top: 10px;
	display: inline-block;
}

.left-nav {
	position: absolute;
	display: inline-block;
	padding-left: 180px; 
	padding-top: 20px;
	width: 800px;
}

.right-navi {
	position: absolute;
	width: 200px;
	left: 970px;
	padding-top: 20px;
}

.menu-body {
	text-decoration: none;
	color: black;
	padding-right: 32px;
	
}

.log {
	border-radius: 8%;
	text-decoration: none;
	color: rgb(255, 255, 255);
	background-color: rgb(162, 166, 173);
	padding: 6px 10px;
}

.sign {
	border-radius: 8%;
	text-decoration: none;
	color: rgb(255, 255, 255);
	background-color: rgb(32, 153, 187);
	padding: 6px 10px;
}
</style>
</head>
<body>
	<input type="hidden" id="session" value="<%= loginInfo %>">
	<header>
		<section class="s">
			<div class="container">
				<a href="./index.jsp"><img src="./images/impl-nu.png" width="100px" height="45px"></a>
			</div>
			<div class="left-nav">
				<a class="menu-body" href="./inspection.do">프로젝트 검수 관리</a>
				<a class="menu-body" href="./managerQnA.jsp">자주 묻는 질문 관리</a>
				<a class="menu-body" href="./managerInqList.do">1:1문의 관리</a>			
				<a class="menu-body" href="./managerInfoCl.do">전체회원 조회</a>			
			</div>

			<div class="right-navi" style="z-index: 999;">
			<% if(loginInfo != null) { %>
				<a href="#" style="padding-right: 10px;"><img src="./images/center.png"></a>
				<a href="#" style="padding-right: 15px;"><img src="./images/bell.png"></a>
				<a href="#"><img style="border-radius: 50%;" src="./images/who.png" width="30px" height="30px" onmouseover="f_in()"></a>
				<div id="moda" style="display: none; margin-left: 10px; margin-top: 10px; padding-left: 20px; padding-right: 20px; padding-top: 20px; padding-bottom: 20px; border-radius: 4%; border:2px solid grey; width: 120px; background-color: white;" onmouseover="f_in()" onmouseout="f_out()">
					<form id="logout" action="logout.do">
						<a href="javascript:f_logout()" class="menu-body">로그아웃</a>
					</form>
				</div>
			<% } else { %>
				<a class="log" href="./login.jsp">로그인</a>
				<a class="sign" href="./registerMember.jsp">회원가입</a>
			<% } %>
			</div>
			
		</section>
	</header>
	<script>
		var session = document.querySelector("#session");
		var modal = document.querySelector("#moda");
		sessionStorage.setItem("loginID", session.value);
		function f_in() {
			modal.style.display = "block";
		}
		function f_out() {
			modal.style.display = "none";
		}
		function f_logout() {
			logout.submit();
		}
	</script>
</body>
</html>