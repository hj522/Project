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
			<a href="./managerQnA.jsp" class="btn2" style="padding-left:205px; padding-right:205px;">클라이언트</a>
			<a href="./managerQnA2.jsp" class="btn" style="padding-left:207px; padding-right:205px;">파트너스</a>
		<div class="frame">
			<div style="padding-top: 40px;">
				<table style="font-size: 15pt; padding-left: 30px;">
					<tr>
						<th>질문번호</th>
						<th>제목</th>
					<tr>
					<tr>
						<td>1</td>
						<td>프로젝트에 지원하려면 어떻게 해야 하나요?</td>
					</tr>
					<tr>
						<td>2</td>
						<td>사업자가 아닌 개인도 프로젝트에 지원할 수 있나요?</td>
					</tr>
					<tr>
						<td>3</td>
						<td>클라이언트가 미팅할 파트너를 선정하는 기준이 무엇인가요?</td>
					</tr>
					<tr>
						<td>4</td>
						<td>지원할 때 제안한 금액, 기간 그대로 계약되는 건가요?</td>
					</tr>
					<tr>
						<td>5</td>
						<td>지원한 프로젝트가 모집 마감이 되었는데 아무런 연락이 없어요.</td>
					</tr>
					<tr>
						<td>6</td>
						<td>선급금(착수금) 형태로도 진행할 수 있나요?</td>
					</tr>
					<tr>
						<td>7</td>
						<td>대금 지급은 언제, 어떻게 이루어지나요?</td>
					</tr>
					<tr>
						<td>8</td>
						<td>지급 금액은 어떻게 계산되는 건가요?</td>
					</tr>
					<tr>
						<td>9</td>
						<td>프로젝트 완료 후 대금 지급을 받으려면 어떻게 해야 하나요?</td>
					</tr>
					<tr>
						<td style="border-bottom: 0px;">10</td>
						<td style="border-bottom: 0px;">프로젝트 진행 도중 분쟁이 생기면 어떻게 해야 하나요?</td>
					</tr>
				</table>
			</div>
			<div>
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
