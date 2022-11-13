<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 정보 수정</title>
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
	height: 740px;
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

.tree, .tree ul {
	list-style: none; /* 기본 리스트 스타일 제거 */
}

.tree input[type="checkbox"]~ul{
	display: none;
	padding-left: 10px;
}

.tree input[type="checkbox"]:checked ~ul {
	display: block;
	padding-left: 10px;
}
</style>
</head>
<body>
<form action="projectInsert6.do" method="post">
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
				<li>4. 예산 및 일정<img src="./images/check.png" width="17px"
					height="17px"></li>
				<li>5. 미팅<img src="./images/check.png" width="17px"
					height="17px"></li>
				<li>6. 모집 요건</li>
				<li>7. 추가 정보</li>
			</ul>
		</div>
		<div class="box">
			<div
				style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				모집 요건</div>
			<hr>
			<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
				<b>지원자 모집 마감일</b> <b style="color: red;">*</b><br>
				<div style="font-size: 8pt; padding-top: 10px;">
					<b>지원자를 모집하는 기간은 최대 14일까지 가능합니다.<br>지원자 모집 기간 중에도 파트너 선정과
						계약 진행이 가능합니다.
					</b><br> <br> <input type="date" class="calendar"
						id="datePickerInRadio" name="launchDate" data-toggle="datepicker"
						console.log("launchDate");
						style="width: 120px;">
				</div>
			</div>
			<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
				<b>지원 사업 여부</b> <b style="color: red;">*</b><br>
				<div>
					<label> <input type="radio" name="meetingMethod"
						value="online" /> <span style="font-size: 11pt;">네, 정부지원사업
							또는 연구과제입니다.</span>
					</label> <br> <label> <input type="radio" name="meetingMethod"
						value="offline" /> <span style="font-size: 11pt;">아닙니다.</span><br>
					</label>
				</div>
			</div>
			<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
				<b>지원자 필수 요건</b><br>
				<div style="font-size: 8pt; padding-top: 10px;">
					<b>아래 조건에 맞는 파트너를 지원자로 받습니다.<br> <br>
					</b>
				</div>
				<div>
					<label> <input type="checkbox" name="requirements"
						value="twiceWeek" /> <span style="font-size: 11pt;">개인 또는
							팀 가능</span>
					</label> <br>
					<ul class="tree">
						<li><input type="checkbox" id="root"> <label
							for="root">사업자 가능 (세금계산서 발행)</label>
							<ul>
								<li><input type="checkbox" id="node1" style="left: 20px;"> <label
									for="node1">개인사업자</label></li>
								<li><input type="checkbox" id="node2" style="left: 20px;"> <label
									for="node2" class="lastTree">법인사업자</label></li>
							</ul>
					</ul>
					<label> <input type="checkbox" name="requirements"
						value="request" /> <span style="font-size: 11pt;">업력 1년차
							이상 (사업자등록증 기준)</span>
					</label><br> <label> <input type="checkbox"
						name="requirements" value="request" /> <span
						style="font-size: 11pt;">보증보험 발급 가능</span><br>
					</label> <input type="checkbox" name="requirements" value=""> <input
						type="text" placeholder="기타 (직접 입력)">
				</div>
			</div>
			<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
				<b>파트너 지원 전 질문</b><br>
				<div style="font-size: 8pt; padding-top: 10px;">
					<b>파트너가 프로젝트에 지원할 때 답변해야 할 질문을 작성해 주세요. 최대 3개까지 입력 가능합니다.<br>클라이언트님이
						파트너를 선정할 때 지원서와 함께 답변 내용을 검토할 수 있습니다.<br> <br></b>
				</div>
				<div class="buttons">
					<input type="text" name="text"
						style="width: 500px; font-size: 10pt; padding-left: 5px;"
						placeholder="예) 물류 분야 프로젝트를 수행한 경험이 있습니까?"> <input
						type="button" class="btnAdd" value="추가"><br>
				</div>
			</div>
			<br>
			<hr>
			<div>
				<button>수정 완료</button>
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
													$('.btnRemove')
															.on(
																	'click',
																	function() {
																		$(this)
																				.prev()
																				.remove(); // remove the textbox
																		$(this)
																				.next()
																				.remove(); // remove the <br>
																		$(this)
																				.remove(); // remove the button
																	});
												}); // end click                                            
							}); // end ready
		</script>
</body>
</html>
<%@ include file="./footer.jsp"%>