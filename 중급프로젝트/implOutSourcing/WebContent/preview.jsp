<%@page import="projectinsert.vo.ProjectInsertVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	ProjectInsertVO pVO = (ProjectInsertVO) request.getAttribute("pVO"); 
	String loginIdC = (String) session.getAttribute("loginIdC");
	
	if(loginIdC != null){
%>
	<%@ include file="./header.jsp"%>
<%
	}else {
%>
	<%@ include file="./managerHeader.jsp"%>
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>프로젝트 미리보기</title>
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
	height: relative;
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

.outsourcing {
	border: 1px solid blue;
	border-radius: 10px;
	padding: 1px;
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
							<a href="./temporaryStorage.jsp" class="w3-bar-item w3-button">임시
								저장</a> <a href="./registrationFailed.jsp"
								class="w3-bar-item w3-button">등록 실패</a>
						</div>
					</div>
					<a href="./recruitmentApplicants.jsp" class="w3-bar-item w3-button">지원자
						모집 중</a> <a href="./projectInProgress.jsp"
						class="w3-bar-item w3-button">진행중인 프로젝트</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							종료된 프로젝트<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="./waitingForEvaluation.jsp"
								class="w3-bar-item w3-button">평가 대기 중</a> <a
								href="./completeProject.jsp" class="w3-bar-item w3-button">완료한
								프로젝트</a> <a href="./canceledProject.jsp"
								class="w3-bar-item w3-button">취소한 프로젝트</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<%
				if(loginIdC == null) {
			%>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
					<button type="button" onclick="location.href='./inspectionComplate.do?pjId=<%=pVO.getPjId()%>'">검수완료</button>
					<button type="button" onclick="location.href='./inspectionComplete2.do?pjId=<%=pVO.getPjId()%>'">반려</button>
				</div>
			<%
				}
			%>
			<div
				style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				<%=pVO.getPjTit() %></div>
			<div style="font-size: 13pt; padding-left: 30px;">
				<div style="float: left; " class="outsourcing"><%=pVO.getPjProg() %></div>
				<div style="float: left; padding-left: 40px;"><%=pVO.getPjCat() %></div>
				<div style="float: left; padding-left: 40px;"><%=pVO.getPjFi() %></div>
				<br> <br>
			</div>
			<hr>


			<div class="summaryContainer" style="margin: 60px;">
				<div class="summaryBox"
					style="float: left; width: 200px; text-align: center;">
					<span class="summaryBoxTitle"><img src="./images/won.png">예상금액</span>
					<span class="summaryBoxContent"><%=pVO.getPjBudStr() %></span>
				</div>
				<div class="summaryBox"
					style="float: left; width: 33%; text-align: center;">
					<span class="summaryBoxTitle"><img src="./images/pre8.png">예상기간</span>
					<span class="summaryBoxContent" style="margin-left: 30px"></span>
				</div>
				<div class="summaryBox"
					style="float: left; width: 33%; text-align: center;">
					<span class="summaryBoxTitle"><img src="./images/pre9.png">지원자
						수</span> <span class="summaryBoxContent" style="margin-left: 30px"><%=pVO.getAppCnt() %>명</span><br>
					<br>
				</div>
			</div>
			<br> <br> <br>
			<div
				style="padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				<div
					style="font-size: 13pt; padding-left: 40px; padding-bottom: 20px;">
					<div style="padding-bottom: 8px;">
						<div
							style="float: left; text-align: left; padding-right: 30px; width: 170px;">
							<img src="./images/pre1.png">모집 마감일
						</div>
						<div><%=String.valueOf(pVO.getPjPartRd()).substring(0,10) %></div>
					</div>
					<div style="padding-bottom: 8px;">
						<div
							style="float: left; text-align: left; padding-right: 30px; width: 170px;">
							<img src="./images/pre2.png">진행 분류
						</div>
						<div><%=pVO.getPjProgSt() %></div>
					</div>
					<div style="padding-bottom: 8px;">
						<div
							style="float: left; text-align: left; padding-right: 30px; width: 170px;">
							<img src="./images/pre3.png">기획 상태
						</div>
						<div><%=pVO.getPjPlan() %></div>
					</div>
					<div style="padding-bottom: 8px;">
						<div
							style="float: left; text-align: left; padding-right: 30px; width: 170px;">
							<img src="./images/pre4.png">매니징 경험
						</div>
						<div><%=pVO.getPjManaEx()%></div>
					</div>
					<div style="padding-bottom: 8px;">
						<div
							style="float: left; text-align: left; padding-right: 30px; width: 170px;">
							<img src="./images/pre5.png">인력 상황
						</div>
						<div><%=pVO.getPjManSi() %></div>
					</div>
					<div style="padding-bottom: 8px;">
						<div
							style="float: left; text-align: left; padding-right: 30px; width: 170px;">
							<img src="./images/pre6.png">예상 시작일
						</div>
						<div><%=pVO.getPjSta() %></div>
					</div>
					<div style="padding-bottom: 8px;">
						<div
							style="float: left; text-align: left; padding-right: 30px; width: 170px;">
							<img src="./images/pre7.png">우선 순위
						</div>
						<div style="float: left;">
							<div>[1순위] <%=pVO.getPjPrif() %></div>
							<div>[2순위] <%=pVO.getPjPris() %></div>
							<div>[3순위] <%=pVO.getPjPrit() %></div>
						</div>
					</div>
				</div>
			</div>
			<br> <br>
			<hr>
			<div style="font-size: 15pt; padding-left: 70px; padding-top: 30px;">
				<div>업무 내용</div>
				<br>
				<div style="font-size: 13pt; padding-top: 10px;">
					<p class="content">
						<%=pVO.getPjWork() %>
<!-- 						&lt;프로젝트의 현재 상황&gt;<br> &#13;&#10;예시) 프로젝트의 목적, 현재 준비 상황, 진행 -->
<!-- 						계획 등 <br> &#13;&#10;&lt;상세한 업무 내용&gt; <br> &#13;&#10; -->
<!-- 						예시) 소프트웨어의 용도, 주요 기능 List 등 <br> &#13;&#10;&lt;참고자료 / -->
<!-- 						유의사항&gt; <br> &#13;&#10; 예시) 참고할 소프트웨어, 기타 유의사항 등 <br> -->
					</p>
				</div>
			</div>
			<br> <br>
			<hr>
			<div style="font-size: 15pt; padding-left: 70px; padding-top: 30px;">
				<div>모집 요건</div>
				<br>
				<div style="font-size: 13pt; padding-top: 10px;">
					<p class="content"></p>
				</div>
			</div>
			<br> <br>
			<hr>
			<div style="font-size: 15pt; padding-left: 70px; padding-top: 30px;">
				<div>미팅</div>
				<br>
				<div style="font-size: 13pt; padding-bottom: 8px;">
					<div
						style="float: left; text-align: left; padding-right: 30px; width: 170px;">사전
						미팅 방식</div>
					<div><%=pVO.getPjMm() %></div>
				</div>
				<div style="font-size: 13pt; padding-bottom: 8px;">
					<div
						style="float: left; text-align: left; padding-right: 30px; width: 170px;">진행
						중 미팅</div>
					<div><%=pVO.getPjMm() %>, <%=pVO.getPjMc() %></div>
				</div>
				<div style="font-size: 13pt; padding-bottom: 8px;">
					<div
						style="float: left; text-align: left; padding-right: 30px; width: 170px;">클라이언트
						위치</div>
					<div><%=pVO.getPjClLo() %></div>
				</div>
			</div>
			<br> <br>
			<hr>
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
