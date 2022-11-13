<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./managerHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>자주 묻는 질문 관리 페이지</title>
<style>
	.bg {
		background-color: #efefef;
		height: 1600px;
		padding-left:360px;
		padding-top: 150px;
	}
	
	.frame {
		box-shadow: 2px 3px 5px 5px rgb(232,232,232);
		width: 1000px;
		height: 700px;
		font-size: 16pt;
		background-color: white;
		border-radius: 1%;
	}
	
	.btn {
		background-color:#c2c2c2;
		border-radius:1px;
		display:inline-block;
		cursor:pointer;
		color:#000000;
		font-size:19px;
		padding:14px 57px;
		text-decoration: none;
		font-weight:bold;
	}
	
	.btn:hover {
		background-color:#c2c2c2;
	}
	
	.btn:active {
		position:relative;
		top:1px;
	}
	
	.btn2 {
		background-color:#efefef;
		border-radius:1px;
		display:inline-block;
		cursor:pointer;
		color:#000000;
		font-size:19px;
		padding:14px 57px;
		text-decoration: none;
		font-weight:bold;
	}
	
	.btn2:hover {
		background-color:#c2c2c2;
	}
	
	.btn2:active {
		position:relative;
		top:1px;
	}
	
	table {
		border-top: 1px solid #2099BB;
		border-collapse: collapse;
		margin-left: auto;
    	margin-right: auto;
	}
	
	th, td {
		border-bottom: 1px solid #2099BB;
		text-align: center;
		padding: 10px;
	}

	.bt {
		background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
		background-color:#599bb3;
		border-radius:6px;
		display:inline-block;
		cursor:pointer;
		color:#ffffff;
		font-size: 18px;
		padding:7px 7px;
		text-decoration:none;
	}
	
	.bt:hover {
		background:linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
		background-color:#408c99;
	}
	
	.bt:active {
		position:relative;
		top:1px;
	}

	
</style>
</head>
<body>
	<form action="" method="">
		<div class="bg">
		<div style="padding-left:380px; font-size: 22pt; font-weight: bold;">
		자주 묻는 질문 관리<br><br><br>
		</div>
			<a href="./managerQnA.jsp" class="btn" style="padding-left:205px; padding-right:205px;">클라이언트</a>
			<a href="./managerQnA2.jsp" class="btn2" style="padding-left:207px; padding-right:205px;">파트너스</a>
		<div class="frame">
			<div style="padding-top: 40px;">
				<table style="font-size: 15pt; padding-left: 30px;">
					<tr>
						<th>질문번호</th>
						<th>제목</th>
					</tr>
					<tr>
						<td>1</td>
						<td>서비스 이용 절차를 알려주세요.</td>
					</tr>
					<tr>
						<td>2</td>
						<td>프로젝트를 의뢰하려면 클라이언트/파트너 중 어떤 유형으로 가입해야 하나요?</td>
					</tr>
					<tr>
						<td>3</td>
						<td>의뢰하려는 프로젝트의 견적이 궁금합니다.</td>
					</tr>
					<tr>
						<td>4</td>
						<td>프로젝트 내용이 외부로 유출되면 안 되는 경우에는 어떻게 하나요?</td>
					</tr>
					<tr>
						<td>5</td>
						<td>위시켓에서 정부지원사업도 진행이 가능한가요?</td>
					</tr>
					<tr>
						<td>6</td>
						<td>프로젝트의 예상 기간, 지출 가능 예산을 작성하기 어렵습니다.</td>
					</tr>
					<tr>
						<td>7</td>
						<td>에스크로 방식의 대금보호시스템이 무엇인가요?</td>
					</tr>
					<tr>
						<td>8</td>
						<td>계약 절차를 알려주세요.</td>
					</tr>
					<tr>
						<td>9</td>
						<td>세금계산서 발행은 누가 해주나요?</td>
					</tr>
					<tr>
						<td style="border-bottom: 0px;">10</td>
						<td style="border-bottom: 0px;">파트너에게 대금을 지급하는 절차가 어떻게 되나요?</td>
					</tr>
				</table>
			</div>
			<div style="padding-left:380px;">
				<a href="#" class="bt">등록</a>
				<a href="#" class="bt">수정</a>
				<a href="#" class="bt">삭제</a>
			</div>
		</div>
		</div>
	</form>
</body>
</html>
<%@ include file="footer.jsp" %>
