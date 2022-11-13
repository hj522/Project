<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>완료한 프로젝트</title>
<style>
.box {
	display: inline-block;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
	z-index: 100;
	position: absolute;
	left: 700px;
	top: 90px;
	width: 770px;
	height: 1000px;
	background-color: white;
}

.guideBox {
	display: inline-block;
	position: absolute;
	border-radius: 1%;
	z-index: 101;
	left: 30px;
	top: 180px;
	width: 710px;
	height: relative;
	background-color: white;
	font-size: 15px;
}

.projectBox {
	padding: 20px;
	display: inline-block;
	border: 1px solid #dedede;
	position: absolute;
	border-radius: 1%;
	z-index: 101;
	left: 30px;
	top: 330px;
	width: 710px;
	height: 200px;
	background-color: white;
}

.summaryContainer {
	display: inline-block;
	left: 15px;
	top: 40px;
	width: 680px;
	height: relative;
	background-color: white;
	font-size: 13px;
}

.summaryTable {
	display: inline-block;
	border: 1px solid #dedede;
	border-radius: 1%;
	left: 15px;
	top: 190px;
	width: 670px;
	height: relative;
	border-collapse: collapse;
	display: table;
	border-color: grey;
	font-size: 13px;
}

button {
	border: 1px solid #dedede;
	border-radius: 1%;
}

.sidebarBox {
	display: inline-block;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
	z-index: 100;
	position: absolute;
	left: 380px;
	top: 90px;
	width: 250px;
	height: 140px;
	background-color: white;
}

.sideUnderBox {
	display: inline-block;
	z-index: 100;
	position: absolute;
	left: 380px;
	top: 270px;
}

.under {
	padding-under: 20px;
	color: black;
}

.img {
	height: 50px;
	width: 50px;
	left: 30px;
	border-radius: 50%;
	float: left;
	border: 1px solid #dedede;
	border-radius: 50%
}

.imageBox {
	padding-left: 20px;
}

.page {
	height: 1500px;
	background-color: rgb(239, 239, 239);
}
a{
	text-decoration: none;
	color:black;
	cursor:pointer;
}
</style>
</head>
<body>
	<form action="" method="">
		<div class="page">
			<div class="sidebarBox">
				<div class="userNameHead">
					<h4 class="userNameTagHead" style="padding-left: 20px">클라이언트</h4>
					<hr>
					<div class="userNameBody">
						<div class="imageBox">
							<img alt="image" class="img" src="./images/who.png"
								onclick="f_showImage()">
						</div>
						<div class="userName">홍길동</div>
						<div class="userEmail">이메일</div>
					</div>
				</div>
			</div>
			<div class="sideUnderBox">
				<div class="w3-sidebar w3-bar-block w3-light-grey w3-card"
					style="width: 13%; height: 33%;">
					<a href="./mypageC.jsp" class="w3-bar-item w3-button">회원 정보</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							검수<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="./inspection.jsp" class="w3-bar-item w3-button">검수 중</a>
							<a href="./temporaryStorage.jsp" class="w3-bar-item w3-button">임시 저장</a> <a href="./registrationFailed.jsp"
								class="w3-bar-item w3-button">등록 실패</a>
						</div>
					</div>
					<a href="./recruitmentApplicants.jsp" class="w3-bar-item w3-button">지원자 모집 중</a> <a href="./projectInProgress.jsp"
						class="w3-bar-item w3-button">진행중인 프로젝트</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							종료된 프로젝트<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="./waitingForEvaluation.jsp" class="w3-bar-item w3-button">평가 대기 중</a> <a href="./completeProject.jsp"
								class="w3-bar-item w3-button">완료한 프로젝트</a> <a href="./canceledProject.jsp"
								class="w3-bar-item w3-button">취소한 프로젝트</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div
				style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				완료한 프로젝트
				<div style="font-size: 13pt; padding-top: 10px;">
					<b>성공적으로 완료한 프로젝트를 확인할 수 있습니다.</b><br>
				</div>
			</div>
			<hr>
			<br> <br>
			<div class="guideBox">
				<img src="./images/guide.png" style="float: left; top: 5px;">
				<p style="float: left; padding-left: 8px;">
					1. 프로젝트가 <strong>성공적으로 완료된 프로젝트 목록</strong>입니다.
					<br>2. 공정하게 평가를 작성할 수 있도록 <strong>상호 평가가 완료</strong>되거나 <br>&nbsp;&nbsp;&nbsp;<strong>
					작성 기한이 종료된 뒤에 평가가 공개</strong>됩니다.
				</p>
			</div>
			<div class="projectBox">
				<h4 class="title">
					<a href="./preview.jsp">제목</a>
				</h4>
			</div>
		</div>
	</form>
	<script>
		function f_showImage() {
			window.open("managerMemDetail.jsp", "tab", "left=500, top=500, width=550, height=550");	
		}
	</script>
</body>
</html>
<%@ include file="footer.jsp" %>
