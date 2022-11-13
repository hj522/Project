<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 정보 등록</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
	height: relative;
	background-color: white;
	padding-bottom: 20px;
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

[type="radio"]:disabled+span {
	opacity: 0.7;
	cursor: not-allowed;
}
</style>
</head>
<body>
	<form action="projectInsert6.do" method="post">
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
					<li>4. 예산 및 일정<img src="./images/check.png" width="17px"
						height="17px"></li>
					<li>5. 미팅<img src="./images/check.png" width="17px"
						height="17px"></li>
					<li>6. 모집 요건</li>
					<li>7. 추가 정보</li>
					<li>프로젝트 등록 완료</li>
				</ul>
			</div>
			<div class="box">
				<div
					style="font-size: 20pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
					모집 요건</div>
				<hr>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>지원자 모집 마감일</b> <b style="color: red;">*</b><br>
					<div style="font-size: 12pt; padding-top: 13px;">
						<p>
							지원자를 모집하는 기간은 최대 14일까지 가능합니다.<br>지원자 모집 기간 중에도 파트너 선정과 계약
							진행이 가능합니다.
						</p>
						<br>  <input type="date" class="calendar"
							id="datePickerInRadio" name="launchDate" data-toggle="datepicker"
							console.log("launchDate");
						style="width: 120px;" required>
					</div>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>지원 사업 여부</b> <b style="color: red;">*</b><br>
					<div>
						<label> <input type="radio" name="meetingMethod"
							value="정부지원사업 또는 연구과제" checked /> <span style="font-size: 13pt;">네,
								정부지원사업 또는 연구과제입니다.</span>
						</label> <br> <label> <input type="radio"
							name="meetingMethod" value="아닙니다" /> <span
							style="font-size: 13pt;">아닙니다.</span><br>
						</label>
					</div>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>지원자 필수 요건</b><br>
					<div style="font-size: 812t; padding-top: 7px; padding-bottom: 10px;">
						<p>
							아래 조건에 맞는 파트너를 지원자로 받습니다. <br>
						</p>
					</div>
					<div>
						<label> <input type="checkbox" name="requirements"
							value="개인 또는 팀" checked /> <span>개인 또는 팀 가능</span>
						</label> <br> <input type="checkbox"> <label>사업자 가능
							(세금계산서 발행)</label><br> <input type="checkbox"> <label>개인사업자</label><br>
						<input type="checkbox">
						<label>법인사업자</label><br> <label>
							<input type="checkbox" name="requirements" value="request" /> <span>업력
								1년차 이상 (사업자등록증 기준)</span>
						</label><br> <label> <input type="checkbox"
							name="requirements" value="request" /> <span>보증보험 발급 가능</span><br>
						</label> <input type="checkbox" name="requirements" value=""> <input
							type="text" placeholder="기타 (직접 입력)">
					</div>
				</div>

				<br>
				<hr>
				<div>
					<button>계속</button>
				</div>
			</div>
	</form>
	<script>
		$(document)
				.ready(
						function() {
							$('.btnAdd')
									.click(
											function() {
												$('.buttons')
														.append(
																'<input type="text" name="txt" style="width: 500px; font-size: 10pt; padding-left: 5px;" placeholder="예) 물류 분야 프로젝트를 수행한 경험이 있습니까?"> <input type="button" class="btnRemove" value="삭제"><br>'); // end append                            
												$('.btnRemove').on(
														'click',
														function() {
															$(this).prev()
																	.remove(); // remove the textbox
															$(this).next()
																	.remove(); // remove the <br>
															$(this).remove(); // remove the button
														});
											}); // end click                                            
						}); // end ready
	</script>
</body>
</html>
<%@ include file="./footer.jsp"%>