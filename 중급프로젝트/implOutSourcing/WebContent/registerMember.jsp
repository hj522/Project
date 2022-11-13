<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.mail.*"%>
<%@ page import="java.util.Properties"%>
<%@ page import="client.dao.ClientDAOImpl"%>
<%@ page import="partners.dao.PartnersDAOImpl"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
/** 폰트 적용해봤는데 맘에안들면 빼기..!**/
@font-face {
    font-family: 'MICEGothic Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}

* {
	margin: 0;
	padding: 0;
	/** 폰트 적용해봤는데 맘에안들면 빼기..!**/
	font-family: 'MICEGothic Bold';
	
}

input[type=text] {
	border-radius: 4%;
	border: 2px solid rgb(239, 239, 239);
	font-size: 11pt;
	width: 450px;
	height: 40px;
	padding-left: 10px;
}

input[type=password] {
	border-radius: 4%;
	border: 2px solid rgb(239, 239, 239);
	font-size: 11pt;
	width: 450px;
	height: 40px;
	padding-left: 10px;
}

select {
	border-radius: 4%;
	border: 2px solid rgb(239, 239, 239);
	font-size: 11pt;
	width: 130px;
	height: 40px;
	padding-left: 10px;
}

input:focus {
	outline: none !important;
	border-color: #2099BB;
}

button {
	width: 465px;
	height: 40px;
	font-size: 11pt;
	text-align: center;
	background-color: #2099BB;
	color: white;
	border: 0px;
	border-radius: 3%;
	cursor: pointer;
}

.btn {
	width: 120px;
	height: 40px;
	font-size: 11pt;
	text-align: center;
	background-color: #2099BB;
	color: white;
	border: 0px;
	border-radius: 3%;
	cursor: pointer;
}
</style>
</head>
<body>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

	<form id="frm" action="cinsert.do" method="post"
		onsubmit="return f_submit()">
		<div style="position: relative;">
			<div
				style="position: absolute; padding-left: 280px; padding-top: 200px; background-color: rgb(250, 250, 250); width: 560px; height: 765px;">
				<p style="font-size: 17pt; font-weight: 500; line-height: 30pt;">
					임플의 다양한 서비스를<br> 하나의 계정으로!
				</p>
				<p style="font-size: 10pt; line-height: 18pt;">
					이용 목적에 따라 서비스 이용에 차이가 발생합니다.<br> <br>
				</p>
				<p style="font-size: 12pt; line-height: 18pt;">
					<b>이용 목적</b> <b style="color: red;">*</b><br> <br>
				</p>
				<input type="radio" id="rd" name="rad" value="client"
					style="display: none;"> <a href="javascript:f_rad1()"><img
					id="cks" src="./images/prog3_ckn.PNG"
					style="border: 1px solid #E0E0E0; border-radius: 1%;"
					onmouseover="f_mo1()" onmouseout="f_mr1()"></a> <input
					type="radio" id="rd" name="rad" value="partners"
					style="display: none;"> <a href="javascript:f_rad2()"><img
					id="cks" src="./images/prog4_ckn.PNG"
					style="border: 1px solid #E0E0E0; border-radius: 1%;"
					onmouseover="f_mo2()" onmouseout="f_mr2()"></a>
			</div>
			<div
				style="font-size: 17pt; padding-top: 70px; padding-left: 200px; position: absolute; left: 860px; width: 465px; height: 590px;">
				임플 통합 회원가입<br> <br>
				<h6 style="line-height: 40px;">아이디</h6>
				<input type="text" id="idck" name="id" placeholder="아이디를 입력해주세요."
					required pattern="^[a-z]+[a-z0-9]{5,19}$"
					style="line-height: 40px; width: 300px;">
				<button type="button" style="margin-left: 40px; width: 100px;"
					onclick="f_check()">중복확인</button>
				<div>
					<h6 style="line-height: 40px;">비밀번호</h6>
					<input type="password" id="pwone" name="pw"
						placeholder="영문+숫자 조합으로 8~20자리 사이로 입력해주세요." required
						pattern="^[a-zA-Z0-9]{8,20}$"
						style="line-height: 40px; position: absolute;"><input
						id="eye" type="checkbox" style="display: none;" value="eye1"><img
						id="eye"
						style="position: absolute; left: 620px; top: 265px; cursor: pointer;"
						onclick="f_eye1()" src="./images/eye1.png" width="25px"
						height="25px">
					<h6 style="line-height: 40px; position: absolute; top: 300px;">비밀번호
						확인</h6>
					<input type="password" id="pwtwo" name="pw2"
						placeholder="비밀번호를 한 번 더 입력해주세요." required
						pattern="^[a-zA-Z0-9]{8,20}$"
						style="line-height: 40px; position: absolute; top: 340px;"><input
						id="eye" type="checkbox" style="display: none;" value="eye2"><img
						id="eye"
						style="position: absolute; top: 350px; left: 620px; cursor: pointer;"
						onclick="f_eye2()" src="./images/eye1.png" width="25px"
						height="25px">
				</div>
				<br>
				<br>
				<br>
				<h6 style="line-height: 40px; padding-top: 50px;">이름</h6>
				<input type="text" name="nm" placeholder="이름을 입력해주세요." required
					pattern="^[a-zA-Zㄱ-힣][a-zA-Zㄱ-힣 ]*$" style="line-height: 40px;">
				<h6 style="line-height: 40px;">전화번호</h6>
				<input type="text" name="ph" placeholder="전화번호를 입력해주세요. 하이픈(-) 제외"
					required pattern="^\d{3}\d{3,4}\d{4}$" style="line-height: 40px;">
				<h6 style="line-height: 40px;">이메일</h6>
				<input type="text" id="mailid" name="em2" placeholder="이메일을 입력해주세요."
					required pattern="^[a-z]+[a-z0-9]{3,20}$"
					style="line-height: 40px; width: 170px;">&nbsp;@ <input
					type="hidden" id="mailid2" name="em" value=""> <select
					id="selectmail">
					<option selected>선택해주세요</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
				</select>
				<button type="button" id="mailck" style="margin-left: 0px; width: 100px;" onclick="f_codeSend()">인증번호 발송</button>
				<input type="text" id="mailn" name="mailNum" value="" placeholder="인증번호를 입력해주세요."
				style="line-height: 40px; width: 170px;">&nbsp;
				<button type="button" id="confM" style="margin-left: 0px; width: 100px;" onclick="f_codeCk()">인증번호 확인</button>

				<h6 style="line-height: 40px;">주소</h6>
				<input type="text" name="addr2" id="sample4_postcode"
					placeholder="우편번호" required pattern="^\d{5,6}$" value=""
					style="width: 220px; margin-right: 90px;"> <input
					type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"
					class="btn"><br> <input style="width: 220px;"
					type="text" id="sample4_roadAddress" placeholder="도로명주소"> <input
					type="text" style="width: 207px;" id="sample4_jibunAddress"
					placeholder="지번주소"> <span id="guide"
					style="color: #999; display: none"></span> <input type="text"
					style="width: 220px;" id="sample4_detailAddress" placeholder="상세주소">
				<input type="text" id="sample4_extraAddress" style="width: 207px;"
					placeholder="참고항목"> <br> <br> <input
					type="hidden" name="addr" value="">
				<button>회원가입</button>
				<br> <br>
				<hr>
				<br>
			</div>
		</div>
	</form>

	<script>
		var v_eyes = document.querySelectorAll("#eye");
		var v_pw1 = document.querySelector("#pwone");
		var v_pw2 = document.querySelector("#pwtwo");
		var v_form = document.querySelector("#frm");
		
		const hj_clAddr = document.querySelector("input[name=addr]");
		const hj_clAddr2 = document.querySelector("#sample4_postcode");
		const hj_clRoad = document.querySelector("#sample4_roadAddress");
		const hj_clJibun = document.querySelector("#sample4_jibunAddress");
		const hj_clDetail = document.querySelector("#sample4_detailAddress");
		const hj_em = document.querySelector("#mailid");
		const hj_emHidden = document.querySelector("#mailid2");
		const hj_selectM = document.querySelector("#selectmail");
		const hj_mailN = document.querySelector("#mailn");
		
		
		// 회원가입 전송 직전(onsubmit 기능)
		// DB에 주소, 메일 입력 + 메일 번호인증을 하지 않으면 회원가입이 되지 않도록 막아둠
		function f_submit(){
			
			if(!verifyM){
				Swal.fire('메일 인증을 하지 않았습니다.');
//				alert("메일 인증을 하지 않았습니다.");
				hj_mailN.focus();
				return false;
			} else if (! $('input[name=rad]:checked').val()) {
				alert('이용 목적을 선택해주세요.');
				return false;
			}
			hj_clAddr.value = `\${hj_clAddr2.value} \${hj_clRoad.value} \${hj_clJibun.value} \${hj_clDetail.value} `;	// DB 주소 합치기
	//		alert(hj_clAddr.value);
			hj_emHidden.value = hj_em.value + "@" + hj_selectM.value; 	// DB 메일 합치기
			alert("회원가입이 완료되었습니다!")
			return true;  // 쩐송
		}
		
		function f_eye1() {
			if(v_eyes[0].checked == true) {
				v_eyes[0].checked = false;
				v_eyes[1].src = "./images/eye1.png";
				v_pw1.type = "password";
			} else {
				v_eyes[0].checked = true;
				v_eyes[1].src = "./images/eye2.png";
				v_pw1.type = "text";
			}
		}
		
		function f_eye2() {
			if(v_eyes[2].checked == true) {
				v_eyes[2].checked = false;
				v_eyes[3].src = "./images/eye1.png";
				v_pw2.type = "password";
			} else {
				v_eyes[2].checked = true;
				v_eyes[3].src = "./images/eye2.png";		
				v_pw2.type = "text";
			}
		}
		
		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 참고 항목 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_roadAddress").value = roadAddr;
							document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

							// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
							if (roadAddr !== '') {
								document.getElementById("sample4_extraAddress").value = extraRoadAddr;
							} else {
								document.getElementById("sample4_extraAddress").value = '';
							}

							var guideTextBox = document.getElementById("guide");
							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								guideTextBox.innerHTML = '(예상 지번 주소 : '
										+ expJibunAddr + ')';
								guideTextBox.style.display = 'block';
							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
						}
					}).open();
		}

		var v_rds = document.querySelectorAll("#rd");
		var v_cks = document.querySelectorAll("#cks");

		function f_rad1() {
			v_rds[0].checked = true;
			v_cks[0].src = "./images/prog3_cky.PNG";
			v_cks[1].src = "./images/prog4_ckn.PNG";
			v_cks[1].style.border = "1px solid #E0E0E0";
			v_form.action = "cinsert.do";
		}
		function f_rad2() {
			v_rds[1].checked = true;
			v_cks[1].src = "./images/prog4_cky.PNG";
			v_cks[0].src = "./images/prog3_ckn.PNG";
			v_cks[0].style.border = "1px solid #E0E0E0";
			v_form.action = "pinsert.do";
		}
		function f_mo1() {
			v_cks[0].style.border = "1px solid #2E6BAA";
		}
		function f_mr1() {
			if (v_rds[0].checked == true) {
				return;
			}
			v_cks[0].style.border = "1px solid #E0E0E0";
		}
		function f_mo2() {
			v_cks[1].style.border = "1px solid #2E6BAA";
		}
		function f_mr2() {
			if (v_rds[1].checked == true) {
				return;
			}
			v_cks[1].style.border = "1px solid #E0E0E0";
		}
		

		// 아이디 중복체크
		var idck = document.querySelector("#idck");
		
		function f_check(){
			let checkSpell= /^[a-z]+[a-z0-9]{5,19}$/;

			if(!checkSpell.test($("#idck").val())){
				alert("ID는 영문으로 시작하는 6~20자 영문 또는 숫자여야 합니다.");
				$("#idck")[0].focus();
				return;
			}
			
			$.ajax({
				type:"get",
				url:"<%=request.getContextPath()%>/IdCheckController",
				data : "check=" + $("#idck").val(),
				dataType : "text",
				success : function(p_rslt) {
					console.log("확인", p_rslt);
					if (p_rslt == "OK") {
						alert("사용할 수 있는 아이디입니다.");

					} else {
						alert("중복된 아이디입니다. 다시 입력해주세요.");
					}

				},
				error : function(request, status, error) {
					console.log("code: " + request.status)
					console.log("message: " + request.responseText)
					console.log("error: " + error);
				}
			});
		}
		$(function() {//비밀번호 확인
			$('#pwtwo').blur(function() {
				if ($('#pwone').val() != $('#pwtwo').val()) {
					if ($('#pwtwo').val() != '') {
						alert("비밀번호가 일치하지 않습니다.");
						$('#pwtwo').val('');
						$('#pwtwo').focus();
					}
				}
			})
		});
		
		
		// 인증번호 메일 발송
		var Mcode;
		
		function f_codeSend(){
			
			var userMail = hj_em.value + "@" + hj_selectM.value;
		//	console.log("qqq",userMail);
	
			$.ajax({
				type:"get",
				url:"<%=request.getContextPath()%>/MailCheck",
				data:"MailCk=" + userMail,
				dataType:"text",
				success:function(rslt){
					console.log("확인: ", rslt);
					Mcode = rslt;
					Swal.fire('인증 메일 발송 완료!','인증번호를 확인해주세요.');
	//				alert("인증메일이 발송되었습니다!\n메일을 확인해주세요.");
				}
			})
		}
		
		// 메일 인증번호 일치 여부
		var verifyM = false;
		
		function f_codeCk(){
			
			if(Mcode == $('#mailn').val()){
				verifyM=true;
				Swal.fire({
					  position: 'center',
					  icon: 'success',
					  title: '인증에 성공하셨습니다.',
					  showConfirmButton: false,
					  timer: 1500
					})
			} else {
				Swal.fire({
					  position: 'center',
					  icon: 'error',
					  title: '인증에 실패하였습니다.',
					  showConfirmButton: false,
					  timer: 1500
					})
			}
		}
		

	</script>
</body>
</html>