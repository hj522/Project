<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 정보 수정</title>
<style>
.box {
	display: inline-block;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
	z-index: 100;
	position: absolute;
	left: 700px;
	top: 90px;
	width: 800px;
	height: 610px;
	background-color: white;
}

button {
	width: 100px;
	height: 50px;
	font-size: 11pt;
	text-align: center;
	background-color: #2E6BAA;
	color: white;
	border: 0px;
	border-radius: 2%;
	margin-top: 15px;
	margin-left: 630px;
}
</style>
</head>
<body>
	<form action="projectInsert4.do" method="post">
	<div>
		<div
			style="position: relative; padding-left: 430px; padding-top: 70px; background-color: #F5F5F5; width: 1473px; height: 740px;">
			<h2>프로젝트 정보 수정</h2>
			<br> <br>
			<ul style="line-height: 40pt; list-style: none; font-size: 11pt;">
				<li>프로젝트 정보 수정</li>
			</ul>
			<ul style="line-height: 30pt; list-style: none; font-size: 11pt;">
				<li>1. 기본 정보 <img src="./images/check.png" width="17px"
					height="17px"></li>
				<li>2. 준비 상태 <img src="./images/check.png" width="17px"
					height="17px"></li>
				<li>3. 프로젝트 상세<img src="./images/check.png" width="17px"
					height="17px"></li>
				<li>4. 예산 및 일정</li>
				<li>5. 미팅</li>
				<li>6. 모집 요건</li>
				<li>7. 추가 정보</li>
			</ul>
		</div>
		<div class="box">
			<div
				style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				예산 및 일정</div>
			<hr>
			<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
				<b>지출 가능 예산</b> <b style="color: red;">*</b><br>
				<div style="font-size: 8pt; padding-top: 10px;">
					<b>프로젝트에 지출 가능한 예산을 입력해 주세요.</b><br>
				</div>
			</div>
			<div class="budget"
				style="padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				<input class="clientBudget" name="budget" type="number"
					style="width: 200px; padding-left: 10px; line-height: 40px; outline-color: #2E6BAA">
				<br>
				<div style="font-size: 8pt; padding-left: 10px; padding-top: 10px;">
					<p>
						예상 결제 금액 : <img src="./images/won.png" width="12px" height="12px">
						(부가가치세 10% 추가)
					</p>
					<br>
				</div>
			</div>
			<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
				<b>예상 시작일</b> <b style="color: red;">*</b><br>
				<div>
					<div style="font-size: 8pt; padding-top: 10px;">
						<b>파트너가 프로젝트에 착수하는 날짜입니다.<br>해당 날짜에 프로젝트 시작이 가능한 파트너들이
							지원하게 됩니다.
						</b><br> <br>
					</div>
				</div>
				<div>
					<label> <input type="radio" name="class1" value="date"
						id="a" onclick="f_unCheck()" /> <input type="date"
						class="calendar" id="datePickerInRadio" name="launchDate"
						data-toggle="datepicker" style="width: 120px;">
					</label> <br> <label> <input type="radio" name="class1"
						value="now" id="b" onclick="f_check()" /> <span
						style="font-size: 11pt;">계약 체결 이후, 즉시 시작하길 희망합니다.</span>
					</label>
				</div>
			</div>

			<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
				<b>예상 진행 기간</b> <b style="color: red;">*</b><br>
				<div>
					<div style="font-size: 8pt; padding-top: 10px;">
						<b>프로젝트 진행 기간을 입력해 주세요.</b><br>
					</div>
				</div>
				<div class=" projectPlanning"
					style="padding-top: 30px; padding-bottom: 30px;">
					<input class="clientPlanning" name="projectPlanning" type="number"
						style="width: 200px; padding-left: 10px; line-height: 40px; outline-color: #2E6BAA">
					<br>
					<div>
						<input type="checkbox" value=""> <label>프로젝트 진행 기간의
							조율이 가능합니다. </label>
					</div>
				</div>
				<br>
				<hr>
				<div>
					<button>수정 완료</button>
				</div>
			</div>
		</div>
		</form>
		<script>
			function f_check() {
				document.getElementById('datePickerInRadio').disabled = true;
			}

			function f_unCheck() {
				document.getElementById('datePickerInRadio').disabled = false;
			}
		</script>
</body>
</html>
<%@ include file="./footer.jsp"%>