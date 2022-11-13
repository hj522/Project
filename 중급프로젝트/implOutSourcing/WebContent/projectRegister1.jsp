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
	cursor: pointer;
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
</style>
</head>
<body>
	<form action="projectInsert1.do" method="post">
		<input type="hidden" name="id"
			value="<%=session.getAttribute("loginId")%>">
		<div>
			<div
				style="position: relative; padding-left: 430px; padding-top: 70px; background-color: #F5F5F5; width: 1473px; height: 780px;">
				<h2>프로젝트 정보 등록</h2>
				<br> <br>
				<ul style="line-height: 40pt; list-style: none; font-size: 13pt;">
					<li>프로젝트 정보 등록</li>
				</ul>
				<ul style="line-height: 30pt; list-style: none; font-size: 13pt;">
					<li>1. 기본 정보</li>
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
					기본 정보</div>
				<hr>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 제목</b> <b style="color: red;">*</b><br> <br> <input
						class="clientProject" data-type="text" name="title"
						placeholder="예) B2B 미디어 커머스 모바일 플랫폼 구축" type="text" required
						pattern="^[a-zA-Z0-9ㄱ-힣]{4,30}$"
						style="width: 730px; padding-left: 10px; line-height: 40px; outline-color: #2E6BAA">
					<br>
					<div
						style="font-size: 10pt; padding-left: 10px; padding-top: 10px;">
						<b>4~30자 이내로 작성해주세요.</b>
					</div>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 카테고리</b> <b style="color: red;">*</b><br>
					<div style="font-size: 12pt; padding-top: 10px;">
						<p>해당하는 프로젝트 카테고리를 모두 선택해 주세요.</p><br> <br>
					</div>
					<input type="checkbox" id="cb" name="cate" value="개발"
						style="display: none;"> <a href="javascript:f_rad1()">
						<img id="cks" src="./images/devel_ckn.png"
						style="border: 1px solid #E0E0E0; border-radius: 2%;"
						onmouseover="f_mo1()" onmouseout="f_mr1()">
					</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="cb" name="cate"
						value="디자인" style="display: none;"> <a
						href="javascript:f_rad2()"> <img id="cks"
						src="./images/dsgn_ckn.png"
						style="border: 1px solid #E0E0E0; border-radius: 2%;"
						onmouseover="f_mo2()" onmouseout="f_mr2()">
					</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="cb" name="cate"
						value="기획" style="display: none;"> <a
						href="javascript:f_rad3()"> <img id="cks"
						src="./images/pla_ckn.png"
						style="border: 1px solid #E0E0E0; border-radius: 2%;"
						onmouseover="f_mo3()" onmouseout="f_mr3()">
					</a>
				</div>

				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 분야</b> <b style="color: red;">*</b><br> <br>
					<div style="font-size: 13pt;">
						<input type="checkbox" id="kk" name="fi" value="web"
							style="display: none;"> <a href="javascript:f_fi1()"
							style="text-decoration: none;"> <i class="fcb">웹</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="애플리케이션" style="display: none;"> <a
							href="javascript:f_fi2()" style="text-decoration: none;"> <i
							class="fcb">애플리케이션</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="커머스,쇼핑몰" style="display: none;"> <a
							href="javascript:f_fi3()" style="text-decoration: none;"> <i
							class="fcb">커머스,쇼핑몰</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="일반소프트웨어" style="display: none;"> <a
							href="javascript:f_fi4()" style="text-decoration: none;"> <i
							class="fcb">일반 소프트웨어</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="워드프레스" style="display: none;"> <a
							href="javascript:f_fi5()" style="text-decoration: none;"> <i
							class="fcb">워드프레스</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="임베디드" style="display: none;"> <a
							href="javascript:f_fi6()" style="text-decoration: none;"> <i
							class="fcb">임베디드</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="프레젠테이션" style="display: none;"> <a
							href="javascript:f_fi7()" style="text-decoration: none;"> <i
							class="fcb">프레젠테이션</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="그레픽" style="display: none;"> <a
							href="javascript:f_fi8()" style="text-decoration: none;"> <i
							class="fcb">그래픽</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="인쇄물" style="display: none;"> <a
							href="javascript:f_fi9()" style="text-decoration: none;"> <i
							class="fcb">인쇄물</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="로고" style="display: none;"> <a
							href="javascript:f_fi10()" style="text-decoration: none;"> <i
							class="fcb">로고</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="영상" style="display: none;"> <a
							href="javascript:f_fi11()" style="text-decoration: none;"> <i
							class="fcb">영상</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="게임" style="display: none;"> <a
							href="javascript:f_fi12()" style="text-decoration: none;"> <i
							class="fcb">게임</i>
						</a>&nbsp;&nbsp;&nbsp; <input type="checkbox" id="kk" name="fi"
							value="기타" style="display: none;"> <a
							href="javascript:f_fi13()" style="text-decoration: none;"> <i
							class="fcb">기타</i>
						</a>&nbsp;&nbsp;&nbsp;
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
		var v_cbs = document.querySelectorAll("#cb");
		var v_cks = document.querySelectorAll("#cks");
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
		function f_fi5() {
			if (v_kks[4].checked == false) {
				v_kks[4].checked = true;
				v_fcbs[4].style.backgroundColor = "#E3EDFA";
				v_fcbs[4].style.color = "#2E6BAA";
			} else {
				v_kks[4].checked = false;
				v_fcbs[4].style.backgroundColor = "#EEEEEE";
				v_fcbs[4].style.color = "#717171";
			}
		}
		function f_fi6() {
			if (v_kks[5].checked == false) {
				v_kks[5].checked = true;
				v_fcbs[5].style.backgroundColor = "#E3EDFA";
				v_fcbs[5].style.color = "#2E6BAA";
			} else {
				v_kks[5].checked = false;
				v_fcbs[5].style.backgroundColor = "#EEEEEE";
				v_fcbs[5].style.color = "#717171";
			}
		}
		function f_fi7() {
			if (v_kks[6].checked == false) {
				v_kks[6].checked = true;
				v_fcbs[6].style.backgroundColor = "#E3EDFA";
				v_fcbs[6].style.color = "#2E6BAA";
			} else {
				v_kks[6].checked = false;
				v_fcbs[6].style.backgroundColor = "#EEEEEE";
				v_fcbs[6].style.color = "#717171";
			}
		}
		function f_fi8() {
			if (v_kks[7].checked == false) {
				v_kks[7].checked = true;
				v_fcbs[7].style.backgroundColor = "#E3EDFA";
				v_fcbs[7].style.color = "#2E6BAA";
			} else {
				v_kks[7].checked = false;
				v_fcbs[7].style.backgroundColor = "#EEEEEE";
				v_fcbs[7].style.color = "#717171";
			}

		}
		function f_fi9() {
			if (v_kks[8].checked == false) {
				v_kks[8].checked = true;
				v_fcbs[8].style.backgroundColor = "#E3EDFA";
				v_fcbs[8].style.color = "#2E6BAA";
			} else {
				v_kks[8].checked = false;
				v_fcbs[8].style.backgroundColor = "#EEEEEE";
				v_fcbs[8].style.color = "#717171";
			}
		}
		function f_fi10() {
			if (v_kks[9].checked == false) {
				v_kks[9].checked = true;
				v_fcbs[9].style.backgroundColor = "#E3EDFA";
				v_fcbs[9].style.color = "#2E6BAA";
			} else {
				v_kks[9].checked = false;
				v_fcbs[9].style.backgroundColor = "#EEEEEE";
				v_fcbs[9].style.color = "#717171";
			}
		}
		function f_fi11() {
			if (v_kks[10].checked == false) {
				v_kks[10].checked = true;
				v_fcbs[10].style.backgroundColor = "#E3EDFA";
				v_fcbs[10].style.color = "#2E6BAA";
			} else {
				v_kks[10].checked = false;
				v_fcbs[10].style.backgroundColor = "#EEEEEE";
				v_fcbs[10].style.color = "#717171";
			}
		}
		function f_fi12() {
			if (v_kks[11].checked == false) {
				v_kks[11].checked = true;
				v_fcbs[11].style.backgroundColor = "#E3EDFA";
				v_fcbs[11].style.color = "#2E6BAA";
			} else {
				v_kks[11].checked = false;
				v_fcbs[11].style.backgroundColor = "#EEEEEE";
				v_fcbs[11].style.color = "#717171";
			}
		}
		function f_fi13() {
			if (v_kks[12].checked == false) {
				v_kks[12].checked = true;
				v_fcbs[12].style.backgroundColor = "#E3EDFA";
				v_fcbs[12].style.color = "#2E6BAA";
			} else {
				v_kks[12].checked = false;
				v_fcbs[12].style.backgroundColor = "#EEEEEE";
				v_fcbs[12].style.color = "#717171";
			}
		}

		function f_rad1() {
			if (v_cbs[0].checked == false) {
				v_cbs[0].checked = true;
				v_cks[0].src = "./images/devel_cky.png";
				v_cks[0].style.border = "1px solid #2E6BAA";
			} else {
				v_cbs[0].checked = false;
				v_cks[0].src = "./images/devel_ckn.png";
				v_cks[0].style.border = "1px solid #E0E0E0";
			}

		}
		function f_rad2() {
			if (v_cbs[1].checked == false) {
				v_cbs[1].checked = true;
				v_cks[1].src = "./images/dsgn_cky.png";
				v_cks[1].style.border = "1px solid #2E6BAA";
			} else {
				v_cbs[1].checked = false;
				v_cks[1].src = "./images/dsgn_ckn.png";
				v_cks[1].style.border = "1px solid #E0E0E0";
			}
		}
		function f_rad3() {
			if (v_cbs[2].checked == false) {
				v_cbs[2].checked = true;
				v_cks[2].src = "./images/pla_cky.png";
				v_cks[2].style.border = "1px solid #2E6BAA";
			} else {
				v_cbs[2].checked = false;
				v_cks[2].src = "./images/pla_ckn.png";
				v_cks[2].style.border = "1px solid #E0E0E0";
			}
		}

		function f_mo1() {
			v_cks[0].style.border = "1px solid #2E6BAA";
		}
		function f_mr1() {
			if (v_cbs[0].checked == true) {
				return;
			}
			v_cks[0].style.border = "1px solid #E0E0E0";
		}
		function f_mo2() {
			v_cks[1].style.border = "1px solid #2E6BAA";
		}
		function f_mr2() {
			if (v_cbs[1].checked == true) {
				return;
			}
			v_cks[1].style.border = "1px solid #E0E0E0";
		}
		function f_mo3() {
			v_cks[2].style.border = "1px solid #2E6BAA";
		}
		function f_mr3() {
			if (v_cbs[2].checked == true) {
				return;
			}
			v_cks[2].style.border = "1px solid #E0E0E0";
		}
	</script>


</body>
</html>
<%@ include file="./footer.jsp"%>