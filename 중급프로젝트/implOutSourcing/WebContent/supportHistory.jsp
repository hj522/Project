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
<title>지원 내역</title>
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

.cardLeft {
	width: 70%;
	height: 100%;
	float: left;
}

.cardRight {
	top: 100px;
	left: 400px;
	width: 30%;
	height: 100%;
	float: right;
	left: 400px;
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
					<h4 class="userNameTagHead" style="padding-left: 20px">파트너스</h4>
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
					<a href="./mypageP.jsp" class="w3-bar-item w3-button">회원 정보</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							내 프로필<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="#" class="w3-bar-item w3-button">보유기술</a> <a href="./technologyP.jsp"
								class="w3-bar-item w3-button">자격증</a> <a href="#"
								class="w3-bar-item w3-button">포트폴리오</a>
						</div>
					</div>
					<a href="./supportHistory.jsp" class="w3-bar-item w3-button">지원 내역</a>
					<a href="./mypageInqueryP.do" class="w3-bar-item w3-button">문의 내역</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							프로젝트<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="./interestPJ.jsp" class="w3-bar-item w3-button">관심 프로젝트</a> <a href="./progressPJ.jsp"
								class="w3-bar-item w3-button">진행 중인 프로젝트</a> <a href="./finishedPJ.jsp"
								class="w3-bar-item w3-button">완료한 프로젝트</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div
				style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				지원 중
				<div style="font-size: 13pt; padding-top: 10px;">
					<b>지원한 프로젝트를 확인할 수 있습니다.</b><br>
				</div>
			</div>
			<hr>
			<br> <br>
			<div class="guideBox">
				<img src="./images/guide.png" style="float: left; top: 5px;">
				<p style="float: left; padding-left: 8px;">
					1. 현재 지원 중인 프로젝트 목록입니다.<br> 
					2. 클라이언트는 프로젝트의 지원자 모집 마감 이후, 지원자 검토 기간을 가집니다.<br>
					3. <strong>프로젝트 지원 결과</strong>는 클라이언트의 <strong>지원자 검토가 완료되면 안내</strong>해드립니다.<br>
					4. 클라이언트가 미팅을 원하는 경우, <strong>임플에서 개별적으로 연락</strong>을 드립니다.
				</p>
			</div>
			<div class="projectBox" style="float: left;">
				<div class="cardLeft">
					<h4 class="title">
						<a href="./preview.jsp">제목</a>
					</h4>
					<div class="summaryContainer" style="width: 100%;">
						<div class="summaryBox" style="float: left; width: 190px;">
							<span class="summaryBoxTitle" style="margin-rigth: 5px"><img
								src="./images/won-1.png" style="margin-right: 5px;">예상금액</span> <span
								class="summaryBoxContent" style="margin-left: 10px">19,500,000원</span>
						</div>
						<div class="summaryBox" style="float: left; width: 190px;">
							<span class="summaryBoxTitle" style="margin-rigth: 5px"><img
								src="./images/time.png" style="margin-right: 5px;">예상기간</span> <span
								class="summaryBoxContent" style="margin-left: 10px">90일</span>
						</div>
					</div>
					<div style="float: left; padding-top: 20px;">
						<span style="margin-right: 10px;"><img
							src="./images/cate-1.png">개발</span> <span
							style="margin-right: 10px;"><img src="./images/pre4.png">게임,
							웹</span> <span style="margin-right: 10px;"><img
							src="./images/loc-1.png">서울특별시 > 마포구</span>
					</div>
					<div></div>
				</div>
				<div class="cardRight" style="padding:30px;">
					<div class="deadline" style="padding-bottom:10px;">
						<img src="./images/pre8.png">마감 2주전
					</div>
					<div class="apply" style="padding-bottom:10px;">
						<img src="./images/pre9.png">총 17명 지원
					</div>
					<input type="button" value="프로젝트 지원 중" style="width:150px; cursor:pointer;">
				</div>
			</div>
		</div>
	</form>
	<script>
		function f_showImage() {
			window.open("managerMemDetail.jsp", "tab",
					"left=500, top=500, width=550, height=550");
		}
	</script>
</body>
</html>
<%@ include file="footer.jsp"%>
