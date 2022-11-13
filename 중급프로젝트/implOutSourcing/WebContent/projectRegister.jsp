<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>프로젝트 등록</title>
<style>
.box {
	display: inline-block;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
	z-index: 100;
	position: absolute;
	left: 700px;
	top: 170px;
	width: 770px;
	height: relative;
	background-color: white;
	padding-bottom: 20px;
}

.ibox {
	display: inline-block;
	border: 2px solid #BFEDFA;
	width: 1040px;
	height: 35px;
	border-radius: 1%;
	z-index: 101;
	position: absolute;
	left: 420px;
	top: 90px;
	background-color: #E8FAFF;
	padding-top: 15px;
	padding-left: 10px;
	font-size: 13pt;
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
	cursor: pointer;
}
</style>
</head>
<body>
	<form action="projectInsert.do" method="post">
		<input type="hidden" id="hid" name="id"
			value="<%=session.getAttribute("loginIdC")%>">
		<div>
			<div class="ibox">
				<div style="display: inline-block;">
					<img src="./images/i.png" width="17px" height="17px">
				</div>
				<div style="display: inline-block;">
					수주할 프로젝트를 찾는다면 파트너로 <a href="./registerMember.jsp"
						style="text-decoration: none; color: #4BABCC; font-weight: bold;">회원가입</a>하세요!
				</div>
			</div>
			<div
				style="position: relative; padding-left: 430px; padding-top: 140px; background-color: #F5F5F5; width: 1473px; height: 690px;">
				<h2>프로젝트 정보 등록</h2>
				<br>
				<br>
				<ul style="line-height: 40pt; list-style: none; font-size: 13pt;">
					<li>프로젝트 정보 등록</li>
					<li>회원가입</li>
					<li>프로젝트 등록 완료</li>
				</ul>
			</div>
			<div class="box">
				<div
					style="font-size: 20pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
					프로젝트 정보 등록</div>
				<hr>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 진행 방식</b> <b style="color: red;">*</b><br>
					<br>
					<p style="font-size: 13pt;">프로젝트에 적합한 작업자를 모집하기 위해 프로젝트 진행 방식을
						선택해 주세요.</p>
					<br>
					<br> <input type="radio" id="rd" name="rad" value="외주(도급)"
						style="display: none;"> <a href="javascript:f_rad1()"><img
						id="cks" src="./images/prog1_ckn.png"
						style="border: 1px solid #E0E0E0; border-radius: 2%;"
						onmouseover="f_mo1()" onmouseout="f_mr1()"></a>&nbsp;&nbsp;&nbsp;
					<input type="radio" id="rd" name="rad" value="기간제(상주)"
						style="display: none;"> <a href="javascript:f_rad2()"><img
						id="cks" src="./images/prog2_ckn.png"
						style="border: 1px solid #E0E0E0; border-radius: 2%;"
						onmouseover="f_mo2()" onmouseout="f_mr2()"></a>
				</div>
				<div style="font-size:13pt; padding-left: 30px; padding-top: 30px;">
					<div style="display: inline-block;">
						<img src="./images/i2.png" width="17px" height="17px">
					</div>
					선택하신 프로젝트 진행 방식에 따라 입력해야 하는 항목들이 변경됩니다.
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
		var v_hid = document.querySelector("#hid");
		var v_rds = document.querySelectorAll("#rd");
		var v_cks = document.querySelectorAll("#cks");

		console.log(v_hid.value);
		function f_rad1() {
			v_rds[0].checked = true;
			v_cks[0].src = "./images/prog1_cky.png";
			v_cks[1].src = "./images/prog2_ckn.png";
			v_cks[1].style.border = "1px solid #E0E0E0";
		}
		function f_rad2() {
			v_rds[1].checked = true;
			v_cks[1].src = "./images/prog2_cky.png";
			v_cks[0].src = "./images/prog1_ckn.png";
			v_cks[0].style.border = "1px solid #E0E0E0";
		}
		function f_mo1() {
			v_cks[0].src = "./images/prog1_cky.png";
			v_cks[0].style.border = "1px solid #2E6BAA";
		}
		function f_mr1() {
			if (v_rds[0].checked == true) {
				return;
			}
			v_cks[0].src = "./images/prog1_ckn.png";
			v_cks[0].style.border = "1px solid #E0E0E0";
		}
		function f_mo2() {
			v_cks[1].src = "./images/prog2_cky.png";
			v_cks[1].style.border = "1px solid #2E6BAA";
		}
		function f_mr2() {
			if (v_rds[1].checked == true) {
				return;
			}
			v_cks[1].src = "./images/prog2_ckn.png";
			v_cks[1].style.border = "1px solid #E0E0E0";
		}
	</script>
</body>
</html>
<%@ include file="./footer.jsp"%>