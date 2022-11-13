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
<link rel="stylesheet" href="css/bootstrap.css">
<title>자격증</title>
<script src="https://code.jquery.com/jquery-3/1/1/min.js"></script>
<script src="js/bootstrap.js"></script>
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

a {
	text-decoration: none;
	color: black;
	cursor: pointer;
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
							<a href="#" class="w3-bar-item w3-button">보유기술</a> <a
								href="./technologyP.jsp" class="w3-bar-item w3-button">자격증</a> <a
								href="#" class="w3-bar-item w3-button">포트폴리오</a>
						</div>
					</div>
					<a href="./supportHistory.jsp" class="w3-bar-item w3-button">지원
						내역</a> <a href="./mypageInqueryP.do" class="w3-bar-item w3-button">문의
						내역</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							프로젝트<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="./interestPJ.jsp" class="w3-bar-item w3-button">관심
								프로젝트</a> <a href="./progressPJ.jsp" class="w3-bar-item w3-button">진행
								중인 프로젝트</a> <a href="./finishedPJ.jsp" class="w3-bar-item w3-button">완료환
								프로젝트</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div
				style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				자격증
				<div style="font-size: 13pt; padding-top: 10px;">
					<b>소유한 자격증을 확인할 수 있습니다.</b><br>
				</div>
			</div>
			<hr>
			<div class="container" style="margin-top:200px;">
				<div class="form-group row pull-right">
					<div class="col-xs-8">
						<input class="form-control" id="userName" type="text"
							onkeyup="f_search()" size="20">
					</div>
					<div>
						<button class="btn btn-primary" onclick="f_search()" type="button">검색</button>
					</div>
				</div>
				<table class="table"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #fafafa; text-align: center;">자격증명</th>
							<th style="background-color: #fafafa; text-align: center;">기관명</th>
							<th style="background-color: #fafafa; text-align: center;">취득일</th>
						</tr>
					</thead>
					<tbody id="ajaxTable">
						<tr>
							<td style="text-align: center;">산업기사</td>
							<td style="text-align: center;">몰라</td>
							<td style="text-align: center;">2022월 9월 21일</td>
						</tr>
					</tbody>
				</table>

			</div>



		</div>
	</form>
	<script>
		function f_showImage() {
			window.open("managerMemDetail.jsp", "tab",
					"left=500, top=500, width=550, height=550");
		}

		var request = new XMLHttpRequest();
		function f_search() {
			request.open("Post", )
		}
	</script>
</body>
</html>
<%@ include file="footer.jsp"%>
