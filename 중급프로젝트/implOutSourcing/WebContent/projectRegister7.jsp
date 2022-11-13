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

.fcb {
	background-color: #EEEEEE;
	color: #717171;
	padding-left: 5px;
	padding-top: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
	border-bottom-left-radius: 25%;
	border-top-right-radius: 25%;
	font-style: normal;
	line-height: 50px;
}

.tree, .tree ul {
	list-style: none; /* 기본 리스트 스타일 제거 */
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

.tree input[type="radio"] ~ul {
	display: none;
	padding-left: 10px;
}

.tree input[type="radio"]:checked ~ul {
	display: block;
	padding-left: 10px;
}
</style>
</head>
<body>
<form action="projectInsert7.do" method="post">
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
				<li>6. 모집 요건<img src="./images/check.png" width="17px"
					height="17px"></li>
				<li>7. 추가 정보</li>
				<li>프로젝트 등록 완료</li>
			</ul>
		</div>
		<div class="box">
			<div
				style="font-size: 20pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				추가 정보</div>
			<hr>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px; padding-bottom:10px;">
				<b>프로젝트 인력 상황</b> <b style="color: red;">*</b><br>
				<div style="padding-top:10px">
					<ul class="tree">
						<li><input type="radio" name="man" value="IT 프로젝트 경험이 있는 있력 있음" checked> <label
							for="root">IT 프로젝트 경험이 있는 인력이 있습니다.</label>
							<ul>
								<li><div style="font-size: 15pt; padding-top: 20px;">
										<b>인력 구성</b> <b style="color: red;">*</b><br> <input
											type="checkbox" id="kk" name="fi" value="프로젝트 매니저"
											style="display: none;"> <a href="javascript:f_fi1()"
											style="text-decoration: none;"> <i class="fcb">프로젝트
												매니저</i>
										</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
											value="기획자" style="display: none;"> <a
											href="javascript:f_fi2()" style="text-decoration: none;">
											<i class="fcb">기획자</i>
										</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
											value="developer" style="display: none;" value="개발자"> <a
											href="javascript:f_fi3()" style="text-decoration: none;">
											<i class="fcb">개발자</i>
										</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
											value="designer" style="display: none;" value="디자이너"> <a
											href="javascript:f_fi4()" style="text-decoration: none;">
											<i class="fcb">디자이너</i>
										</a>
									</div></li>
							</ul>
					</ul>
					<label> <input type="radio" name="man" value="IT 프로젝트 경험이 있는 인력 없음"
						value="offline" checked/> <span style="font-size: 13pt;">IT 프로젝트
							경험이 있는 인력이 없습니다.</span><br>
					</label>
				</div>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>프로젝트 매니징 경험</b> <b style="color: red;">*</b><br>
				<div style="padding-top:10px">
					<label> <input type="radio" name="requ"
						value="프로젝트 매니징 경험 있음" /> <span style="font-size: 13pt;">프로젝트
							매니징 경험이 있습니다.</span>
					</label> <br> <label> <input type="radio" name="requ"
						value="request" checked/> <span style="font-size: 13pt;">없습니다.</span>
					</label><br>
				</div>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>향후 계획</b><br>
				<div style="padding-top:10px">
					<label> <input type="checkbox" name="futurePlan"
						value="월 단위 유지보수를 의뢰 예정, 미팅 시 논의 필요" /> <span style="font-size: 13pt;">월 단위
							유지보수를 의뢰 예정입니다. 미팅 시 논의가 필요합니다.</span>
					</label> <br> <label> <input type="checkbox"
						name="requirements" value="고도화 프로젝트를 의뢰 예정, 미팅시 논의 필요" /> <span
						style="font-size: 13pt;">고도화 프로젝트를 의뢰 예정입니다. 미팅 시 논의가
							필요합니다.</span>
					</label><br>
				</div>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>프로젝트 우선 순위</b> <b style="color: red;">*</b><br>
				<div style="font-size: 12pt; padding-top: 10px;">
					<p>프로젝트 우선순위를 3순위까지 선택해주세요. 파트너가 우선순위를 고려하여 지원합니다.<br> <br>
					<p>
				</div>
				<select id="selectBox1" name="selectBox1"
					style="width: 160px; height: 40px;">
					<option value="" disabled selected hidden>1순위 선택</option>
					<option value="산출물 완성도">산출물 완성도</option>
					<option value="금액">금액</option>
					<option value="일정 준수">일정 준수</option>
				</select> <select id="selectBox2" name="selectBox2"
					style="width: 160px; height: 40px;">
					<option value="" disabled selected hidden>2순위 선택</option>
					<option value="산출물 완성도">산출물 완성도</option>
					<option value="금액">금액</option>
					<option value="일정 준수">일정 준수</option>
				</select> <select id="selectBox3" name="selectBox3"
					style="width: 160px; height: 40px;">
					<option value="" disabled selected hidden>3순위 선택</option>
					<option value="산출물 완성도">산출물 완성도</option>
					<option value="금액">금액</option>
					<option value="일정 준수">일정 준수</option>
				</select>
			</div>
			<br>
			<hr>
			<div>
				<button>계속</button>
			</div>
		</div>
		</form>
		<script>
			var v_kks = document.querySelectorAll("#kk");
			var v_fcbs = document.querySelectorAll(".fcb");

			function f_fi1() {
				if (v_kks[0].checked == false) {
					v_kks[0].checked = true;
					v_fcbs[0].style.backgroundColor = "#E3EDFA";
					v_fcbs[0].style.color = "#2E6BAA";
				} else {
					v_kks[0].checked = false;
					v_fcbs[0].style.backgroundColor = "#EEEEEE";
					v_fcbs[0].style.color = "#717171";
				}
			}
			function f_fi2() {
				if (v_kks[1].checked == false) {
					v_kks[1].checked = true;
					v_fcbs[1].style.backgroundColor = "#E3EDFA";
					v_fcbs[1].style.color = "#2E6BAA";
				} else {
					v_kks[1].checked = false;
					v_fcbs[1].style.backgroundColor = "#EEEEEE";
					v_fcbs[1].style.color = "#717171";
				}
			}
			function f_fi3() {
				if (v_kks[2].checked == false) {
					v_kks[2].checked = true;
					v_fcbs[2].style.backgroundColor = "#E3EDFA";
					v_fcbs[2].style.color = "#2E6BAA";
				} else {
					v_kks[2].checked = false;
					v_fcbs[2].style.backgroundColor = "#EEEEEE";
					v_fcbs[2].style.color = "#717171";
				}
			}
			function f_fi4() {
				if (v_kks[3].checked == false) {
					v_kks[3].checked = true;
					v_fcbs[3].style.backgroundColor = "#E3EDFA";
					v_fcbs[3].style.color = "#2E6BAA";
				} else {
					v_kks[3].checked = false;
					v_fcbs[3].style.backgroundColor = "#EEEEEE";
					v_fcbs[3].style.color = "#717171";
				}
			}
		</script>
</body>
</html>
<%@ include file="./footer.jsp"%>