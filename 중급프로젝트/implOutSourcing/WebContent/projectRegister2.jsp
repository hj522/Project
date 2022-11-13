<%@page import="projectinsert.vo.ProjectInsertVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%
	ProjectInsertVO vo = new ProjectInsertVO();
	vo.getClId();
%>
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
	cursor: pointer;
}
label {
  font-size: 18px;
  line-height: 1rem;
  padding: 0.2em 0.4em;
}

span {
  vertical-align: middle;
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

.checkbox_icon {
  display: inline-block;
  width: 20px;
  height: 20px;
  background-color: transparent;
  border: 1px solid red;
  position: relative;
  cursor: pointer;
}


.checkbox_icon::before, .checkbox_icon::after {
  content: '';
  display: inline-block;
  width: 1px;
  height: 0;
  background-color: red;
  position: absolute;
  transform-origin: left top;
}

.checkbox_icon::before {
  top: 9px;
  left: 2px;
  transform: rotate(-45deg);
}

.checkbox_icon::after {
  top: 16px;
  left: 9px;
  transform: rotate(-135deg);
}

.checkbox input:checked + .checkbox_icon {
  border-color: red;
}

.checkbox input:checked + .checkbox_icon::before {
  height: 10px;
  transition: all 0.15s ease;
}

.checkbox input:checked + .checkbox_icon::after {
  height: 20px;
  transition: all 0.15s ease 0.15s;
}

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #999;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

.filebox input[type="file"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

</style>
</head>
<body>
	<form action="projectInsert2.do" method="post">
	<div>
		<div
			style="position: relative; padding-left: 430px; padding-top: 70px; background-color: #F5F5F5; width: 1473px; height: 1140px;">
			<h2>프로젝트 정보 등록</h2>
			<br> <br>
			<ul style="line-height: 40pt; list-style: none; font-size: 13pt;">
				<li>프로젝트 정보 등록</li>
			</ul>
			<ul style="line-height: 30pt; list-style: none; font-size: 13pt;">
				<li>1. 기본 정보 <img src="./images/check.png" width="17px"
					height="17px""></li>
				<li>2. 준비 상태</li>
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
				준비 상태</div>
			<hr>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>프로젝트 진행 분류</b> <b style="color: red;">*</b><br> <br>
				<div>
					<label>
				    	<input type="radio" name="class" value="신규 프로젝트를 진행" />
				    	<span style="font-size: 11pt;">신규 프로젝트를 진행하려 합니다.</span>
				  	</label>
				<br>
				  	<label>
				    	<input type="radio" name="class" value="운영 중인 서비스의 리뉴얼 또는 유지보수" />
				    	<span style="font-size: 11pt;">운영 중인 서비스의 리뉴얼 또는 유지보수를 하려 합니다.</span>
				  	</label>
				</div>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>기획 상태</b> <b style="color: red;">*</b><br>
				<div style="font-size: 12pt; padding-top: 10px;">
					<p>업무 범위 산정과 예산 및 일정 상담을 위해 현재 기획 상태를 선택해 주세요.</p><br> <br>
				</div>
				<input type="radio" id="rd" name="plan" value="아이디어만 있음"
					style="display: none;"> <a href="javascript:f_rad1()"><img
					id="cks" src="./images/prog5_ckn.png"
					style="border: 1px solid #E0E0E0; border-radius: 2%;"
					onmouseover="f_mo1()" onmouseout="f_mr1()"></a>&nbsp;&nbsp; <input
					type="radio" id="rd" name="plan" value="필요한 내용들을 간단히 정리" style="display: none;">
				<a href="javascript:f_rad2()"><img id="cks"
					src="./images/prog6_ckn.png"
					style="border: 1px solid #E0E0E0; border-radius: 2%;"
					onmouseover="f_mo2()" onmouseout="f_mr2()"></a>&nbsp;&nbsp; <input
					type="radio" id="rd" name="plan" value="상세한 기획 문서가 존재" style="display: none;">
				<a href="javascript:f_rad3()"><img id="cks"
					src="./images/prog7_ckn.png"
					style="border: 1px solid #E0E0E0; border-radius: 2%;"
					onmouseover="f_mo3()" onmouseout="f_mr3()"></a>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>상세 기획 상태</b><br>
				<div style="font-size: 12pt; padding-top: 10px;">
					<p>준비된 상세 기획 문서를 선택해주세요.</p><br>
				</div>
				<div class="formContent">
					<label class="checkbox" style="padding-left:5px;">
					    <input type="checkbox" name="deplan">
					    <span class="checkbox_icon"></span>
						<span class="checkbox_text" style="font-size: 12pt;">요구사항정의서
						<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구현을 원하는 기능과 그에 대한 설명, 작업 우선순위 등이 작성된 문서입니다.</span><br>
					</label>
				</div>
			</div>
			<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
				<b>프로젝트 관련 자료</b><br>
				<div style="font-size: 12pt; padding-top: 10px;">
					<p>아이디어 또는 필요한 내용을 정리한 문서를 추가해 주세요.<br> 프로젝트 예산 및 일정 산정에
						활용되며, 문서 및 이미지 파일만 추가 가능합니다.
					</p> <br> <br>
				</div>
				<div class="filebox">
				<label for="ex_file">프로젝트 관련 자료 추가</label>
				 <input type="file" name="uploadFile" multiple="multiple" id="ex_file">
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