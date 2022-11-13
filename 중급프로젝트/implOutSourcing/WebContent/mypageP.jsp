<%@page import="inquery.vo.InqueryVO"%>
<%@page import="partners.vo.PartnersVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%
	List<PartnersVO> ptList = (List<PartnersVO>) request.getAttribute("ptList");
	List<InqueryVO> inList = (List<InqueryVO>) request.getAttribute("inList");
	PartnersVO vo = (PartnersVO) session.getAttribute("pInfo");
	String loginIdP = (String) session.getAttribute("loginIdP");
%>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>마이페이지</title>
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
</style>
</head>
<body>
	<form action="ptmodifyinfo.do" method="get">
		<input type="hidden" value="<%=vo.getPartId()%>">
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
						<div class="userName">
							&nbsp;<%=pvo.getPartId()%></div>
						<div class="userEmail">
							&nbsp;<%=pvo.getPartEm()%></div>
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
								중인 프로젝트</a> <a href="./finishedPJ.jsp" class="w3-bar-item w3-button">완료한
								프로젝트</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div
				style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				파트너스 정보
				<div style="font-size: 13pt; padding-top: 10px;">
					<b>파트너스 정보를 수정할 수 있습니다.</b><br>
				</div>
			</div>
			<hr>
			<div>
				<div class="introduction"
					style="padding-left: 30px; padding-top: 30px;">
					<div style="font-size: 16pt; padding-bottom: 20px;">파트너스 소개</div>
					<div>
						<div
							style="font-size: 13pt; padding-left: 160px; padding-bottom: 20px;">파트너스
							소개</div>
					</div>
					<div>
						<div style="font-size: 16pt; padding-bottom: 20px;">파트너스 정보</div>
						<div
							style="font-size: 13pt; padding-left: 140px; padding-bottom: 20px;">
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">파트너스
									형태</div>
								<div><%=vo.getPartTy()%></div>
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">이름</div>
								<div><%=vo.getPartNm()%></div>
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">생년월일</div>
								<div>생년월일</div>
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">주소</div>
								<div><%=vo.getPartAddr()%></div>
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">이메일</div>
								<div><%=vo.getPartEm()%></div>
							</div>
						</div>
					</div>
					<div>
						<div style="font-size: 16pt; padding-bottom: 20px;">연락처 정보</div>
						<div
							style="font-size: 13pt; padding-left: 140px; padding-bottom: 20px;">
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">핸드폰
									번호</div>
								<div><%=vo.getPartPh()%></div>
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">전화
									번호</div>
								<div></div>
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">팩스
									번호</div>
								<div>정보를 입력해 주세요</div>
							</div>
						</div>
					</div>
					<input type="button" name="" value="수정"
						onclick="location.href='./mypageModifyP.jsp'"
						style="float: right; width: 50px; margin-right: 60px; cursor: pointer;">
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
