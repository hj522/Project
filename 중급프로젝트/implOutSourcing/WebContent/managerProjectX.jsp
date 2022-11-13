<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./managerHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>등록 실패 프로젝트 리스트</title>
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
		height: 800px;
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
		border-radius: 1%;
		z-index: 100;
		position: absolute;
		left: 380px;
		top: 170px;
		width: 250px;
		height: 70px;
		background-color: #efefef;
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
	
	.page {
		height: 1500px;
		background-color: rgb(239, 239, 239);
	}
</style>
</head>
<body>
	<form action="" method="">
		<div class="page">
			<div class="sidebarBox">
				<div class="userNameHead">
					<h3 class="userNameTagHead" style="padding-left: 20px; font-weight: bold;">프로젝트 검수 관리</h3>
				</div>
			</div>
			<div class="sideUnderBox">
				<div class="w3-sidebar w3-bar-block w3-light-grey w3-card" style="left: 400px; width: 10%; height: 12%;">
					<a href="./managerProject.jsp" class="w3-bar-item w3-button" style="font-align: center;">프로젝트 등록 대기</a>
					<a href="./managerProjectO.jsp" class="w3-bar-item w3-button" style="font-align: center;">프로젝트 등록 완료</a>
					<a href="./managerProjectX.jsp" class="w3-bar-item w3-button" style="font-align: center;">프로젝트 등록 실패</a>
				</div>
			</div>
		</div>
		<div class="box">
			<div style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				등록 실패한 프로젝트
				<div style="font-size: 13pt; padding-top: 10px;">
					<b>현재 등록 실패한 프로젝트 리스트입니다.</b><br>
				</div>
			</div>
			<hr>
			<br> <br>
			<div class="guideBox">
				<img src="./images/guide.png" style="float: left; top: 5px;">
				<p style="float: left; padding-left: 8px;">
					1. imp! 내부에서 검수 중인 프로젝트 목록입니다.<br> 2. 검수 과정에서 imp! 매니저가 <strong>유선
						또는 이메일 연락</strong>을 할 수 있습니다.<br> 3. 검수가 완료되면 <strong>지원자 모집이
						시작</strong>됩니다.<br> 4. 이용약관에 위배되거나 불법적인 내용이 있는 경우, 프로젝트가 등록되지 않을 수
					있습니다.
				</p>
			</div>
			<div class="projectBox">
				<h4 class="title">
					<a href="#">제목</a>
				</h4>
						<div class="subData" style="font-size: 10px">
					<div>개발 디자인 애플리케이션 외1</div>
				</div>
				<div class="summaryContainer">
					<div class="summaryBox" style="float: left; width: 33%;">
						<span class="summaryBoxTitle" style="margin-rigth: 5px">예상금액</span>
						<span class="summaryBoxContent" style="margin-rigth: 5px">500만원</span>
					</div>
					<div class="summaryBox" style="float: left; width: 33%;">
						<span class="summaryBoxTitle" style="margin-rigth: 5px">예상기간</span>
						<span class="summaryBoxContent" style="margin-rigth: 5px">60일</span>
					</div>
					<div class="summaryBox" style="float: left; width: 33%;">
						<span class="summaryBoxTitle" style="margin-rigth: 5px">모집기간</span>
						<span class="summaryBoxContent" style="margin-rigth: 5px">2022년
							09월 17일</span><br> <br>
					</div>
				</div>
				<table class="summaryTable">
					<colgroup>
						<col class="tbTitle" style="width: 50px">
						<col style="width: 90px">
						<col class="tbTitle" style="width: 50px">
						<col style="width: 90px">
						<col class="tbTitle" style="width: 50px">
						<col style="width: 90px">
					</colgroup>
					<thead></thead>
					<tbody>
						<tr class="firstRow">
							<td class="tableTitle">진행 방식</td>
							<td class="tableContent">외주(도급)</td>
							<td class="tableTitle">매니징 경험</td>
							<td class="tableContent">있음</td>
							<td class="tableTitle">제출 일자</td>
							<td class="tableContent">2022년 09월 17일</td>
						</tr>
						<tr class="lastRow">
							<td class="tableTitle">예상 시작일</td>
							<td class="tableContent">즉시 시작 희망</td>
							<td class="tableTitle">미팅 방식</td>
							<td class="tableContent">온라인 미팅</td>
							<td class="tableTitle">위치</td>
							<td class="tableContent">대전광역시 > 오류동</td>
						</tr>
					</tbody>
				</table>
				<div class="managementTools" style="float: rigth">
					<a class="cancel" data-toggle="modal" href="#" role="button"
						style="margin-rigth: 5px;">취소</a> <a class="modify" href="#"
						role="button" style="margin-rigth: 5px;">수정</a> <a
						class="showProject" href="#" role="button">미리보기</a>
				</div>
			</div>
		</div>
	</form>
	<script>
		function f_showImage() {
			alert("이미지파일");
		}
	</script>
</body>
</html>
<%@ include file="footer.jsp" %>
