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
	width: 770px;
	height: relative;
	padding-bottom:20px;
	background-color: white;
}

.ibox {
	display: inline-block;
	border: 2px solid #BFEDFA;
	width: 680px;
	height: 30px;
	left:30px;
	border-radius: 1%;
	z-index: 101;
	position: absolute;
	background-color: #E8FAFF;
	padding-top: 12px;
	padding-left: 10px;
	font-size: 11pt;
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
<form action="projectInsert3.do" method="post">
	<div>
		<div
			style="position: relative; padding-left: 430px; padding-top: 70px; background-color: #F5F5F5; width: 1473px; height: 820px;">
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
				<li>3. 프로젝트 상세</li>
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
				프로젝트 상세</div>
			<hr>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>상세 업무 내용</b> <b style="color: red;">*</b><br> <br>
				<div style="font-size:13pt">
					<img src="./images/icon_check.png" width="17px" height="17px">
					<label for="xs">업무 내용을 상세하게 작성해주실수록, 더 적합한 파트너를 만날 수 있습니다.</label>
				</div>
				<div style="font-size:13pt">
					<img src="./images/icon_check.png" width="17px" height="17px">
					<label for="xs">파트너가 알아야 할 유의사항(필수 사항, 전문 경험 등)도 함께 작성해
						주세요.</label>
				</div>
			</div><br>
			<div class="ibox">
				<div style="display: inline-block;">
					<img src="./images/icon_consulting.png" width="17px" height="17px">
				</div>
				<div style="display: inline-block;">
					<a href="#"
						style="text-decoration: none; color: #4BABCC; font-weight: bold;">
						내용 작성이 어렵다면, 가능한 만큼 작성해주세요. imp!이 정리를 도와드립니다.</a>
				</div>
			</div><br><br>
			<div style="font-size: 14pt; padding-left: 30px; padding-top: 30px;">
				<textarea class="clientProject"
				 id="content"
				 name="dework" 
				 rows="10" cols="5000"
				 style="font-size:13pt; width: 680px; height: 200px; padding-left: 10px; line-height: 30px; outline-color: #2E6BAA">&lt;프로젝트의 현재 상황&gt; &#13;&#10; 예시) 프로젝트의 목적, 현재 준비 상황, 진행 계획 등  &#13;&#10;&lt;상세한 업무 내용&gt;  &#13;&#10; 예시) 소프트웨어의 용도, 주요 기능 List 등  &#13;&#10;&lt;참고자료 / 유의사항&gt;  &#13;&#10; 예시) 참고할 소프트웨어, 기타 유의사항 등</textarea>
				<br>
				<div style="font-size: 10pt; padding-left: 10px; padding-top: 10px;">
					<b>5000자 이내로 작성해주세요.</b>
				</div>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>관련 기술</b><br> <br>
				<div style="font-size:13pt">
					<label for="xs">더 적합한 파트너가 프로젝트를 찾고 지원할 수 있도록 프로젝트와 관련된 기술을
						입력해주세요.</label>
				</div>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 20px;">
				<input class="clientProject" data-type="text" name="rel"
					placeholder="추가할 기술을 입력해 주세요." type="text"
					required pattern="^[a-zA-Zㄱ-힣0-9]{4,50}$"
					style="width: 680px; padding-left: 10px; line-height: 40px; outline-color: #2E6BAA">
				<br>
				<div style="font-size: 10pt; padding-left: 10px; padding-top: 10px;">
					<p>기술명을 입력한 후, 해당하는 기술을 추가해 주세요.</p>
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
		var v_rds = document.querySelectorAll("#rd");
		var v_cks = document.querySelectorAll("#cks");

		function f_rad1() {
			v_rds[0].checked = true;
			v_cks[0].src = "./images/prog5_cky.png";
			v_cks[1].src = "./images/prog6_ckn.png";
			v_cks[2].src = "./images/prog7_ckn.png";
			v_cks[1].style.border = "1px solid #E0E0E0";
			v_cks[2].style.border = "1px solid #E0E0E0";
		}
		function f_rad2() {
			v_rds[1].checked = true;
			v_cks[0].src = "./images/prog5_ckn.png";
			v_cks[1].src = "./images/prog6_cky.png";
			v_cks[2].src = "./images/prog7_ckn.png";
			v_cks[0].style.border = "1px solid #E0E0E0";
			v_cks[2].style.border = "1px solid #E0E0E0";
		}
		function f_rad3() {
			v_rds[2].checked = true;
			v_cks[0].src = "./images/prog5_ckn.png";
			v_cks[1].src = "./images/prog6_ckn.png";
			v_cks[2].src = "./images/prog7_cky.png";
			v_cks[0].style.border = "1px solid #E0E0E0";
			v_cks[1].style.border = "1px solid #E0E0E0";
		}

		function f_mo1() {
			v_cks[0].src = "./images/prog5_cky.png";
			v_cks[0].style.border = "1px solid #2E6BAA";
		}
		function f_mr1() {
			if (v_rds[0].checked == true) {
				return;
			}
			v_cks[0].src = "./images/prog5_ckn.png";
			v_cks[0].style.border = "1px solid #E0E0E0";
		}
		function f_mo2() {
			v_cks[1].src = "./images/prog6_cky.png";
			v_cks[1].style.border = "1px solid #2E6BAA";
		}
		function f_mr2() {
			if (v_rds[1].checked == true) {
				return;
			}
			v_cks[1].src = "./images/prog6_ckn.png";
			v_cks[1].style.border = "1px solid #E0E0E0";
		}
		function f_mo3() {
			v_cks[2].src = "./images/prog7_cky.png";
			v_cks[2].style.border = "1px solid #2E6BAA";
		}
		function f_mr3() {
			if (v_rds[2].checked == true) {
				return;
			}
			v_cks[2].src = "./images/prog7_ckn.png";
			v_cks[2].style.border = "1px solid #E0E0E0";
		}
	</script>


</body>
</html>
<%@ include file="./footer.jsp"%>