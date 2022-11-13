<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 정보 등록</title>
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
	height: relaive;
	background-color: white;
	padding-bottom:20px;
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
[type="radio"] {
  vertical-align: middle;
  appearance: none;
  border: max(2px, 0.1em) solid gray;
  border-radius: 50%;
  width: 1.25em;
  height: 1.25em;
  transition: border 0.5s ease-in-out;
}

[type="radio"]:checked {
  border: 0.4em solid #2E6BAA;
}

[type="radio"]:focus-visible {
  outline-offset: max(2px, 0.1em);
  outline: max(2px, 0.1em) dotted #2E6BAA;
}

[type="radio"]:hover {
  box-shadow: 0 0 0 max(4px, 0.2em) lightgray;
  cursor: pointer;
}

[type="radio"]:disabled {
  background-color: lightgray;
  box-shadow: none;
  opacity: 0.7;
  cursor: not-allowed;
}

[type="radio"]:disabled + span {
  opacity: 0.7;
  cursor: not-allowed;
}
.checkbox input {
  display: none;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>
</head>
<body>
	<form action="projectInsert4.do" method="post">
	<div>
		<div
			style="position: relative; padding-left: 430px; padding-top: 70px; background-color: #F5F5F5; width: 1473px; height: 740px;">
			<h2>프로젝트 정보 등록</h2>
			<br> <br>
			<ul style="line-height: 40pt; list-style: none; font-size: 13pt;">
				<li>프로젝트 정보 등록</li>
			</ul>
			<ul style="line-height: 30pt; list-style: none; font-size: 13pt;">
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
				<li>프로젝트 등록 완료</li>
			</ul>
		</div>
		<div class="box">
			<div
				style="font-size: 20pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				예산 및 일정</div>
			<hr>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>지출 가능 예산</b> <b style="color: red;">*</b><br>
				<div style="font-size: 12pt; padding-top: 12px;">
					<p>프로젝트에 지출 가능한 예산을 입력해 주세요.</p>
				</div>
			</div>
			<div class="budget"
				style="padding-left: 30px; padding-top: 10px; padding-bottom: 10px;">
				<input class="clientBudget" name="budget" type="number"
				required pattern="^[0-9]$" 
					style="width: 200px; padding-left: 10px; line-height: 40px; outline-color: #2E6BAA">
				<br><br>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 1px;">
				<b>예상 시작일</b> <b style="color: red;">*</b><br>
				<div>
					<div style="font-size: 12pt; padding-top: 10px;">
						<p>파트너가 프로젝트에 착수하는 날짜입니다.<br>해당 날짜에 프로젝트 시작이 가능한 파트너들이
							지원하게 됩니다.
						</p><br>
					</div>
				</div>
				<div>
					<label> <input type="radio" name="class1" value="22-9-28"
						id="a" onclick="f_unCheck()" checked/> <input type="date" 
						class="calendar" id="datePickerInRadio" name="launchDate"
						data-toggle="datepicker" style="width: 120px;">
					</label> <br> <label> <input type="radio" name="class1"
						value="계약 체결 이후, 즉시 시작 희망" id="b" onclick="f_check()" /> <span
						style="font-size: 12pt;">계약 체결 이후, 즉시 시작하길 희망합니다.</span>
					</label>
				</div>
			</div>

			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>예상 진행 기간</b> <b style="color: red;">*</b><br>
				<div>
					<div style="font-size: 12pt; padding-top: 10px;">
						<p>프로젝트 진행 기간을 입력해 주세요.</p><br>
					</div>
				</div>
				<div class=" projectPlanning"
					style="padding-top: 10px; padding-bottom: 30px;">
					<input class="clientPlanning" name="projectPlanning" type="number"
						style="width: 200px; padding-left: 10px; line-height: 40px; outline-color: #2E6BAA">
					<br><br>
					<div>
						<input type="checkbox" value="" checked> <label>프로젝트 진행 기간의
							조율이 가능합니다. </label>
					</div>
				</div>
				<br>
				<hr>
				<div>
					<button>계속</button>
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