<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>마이페이지</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
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
	height: 1000px;
	background-color: white;
}

.guideBox {
	display: inline-block;
	position: absolute;
	border-radius: 1%;
	z-index: 101;
	left: 30px;
	top: 180px;
	width: 710px;
	height: relative;
	background-color: white;
	font-size: 15px;
}

.projectBox {
	padding: 20px;
	display: inline-block;
	border: 1px solid #dedede;
	position: absolute;
	border-radius: 1%;
	z-index: 101;
	left: 30px;
	top: 330px;
	width: 710px;
	height: 200px;
	background-color: white;
}

button {
	border: 1px solid #dedede;
	border-radius: 1%;
}

.sidebarBox {
	display: inline-block;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
	z-index: 100;
	position: absolute;
	left: 380px;
	top: 90px;
	width: 250px;
	height: 140px;
	background-color: white;
}

.sideUnderBox {
	display: inline-block;
	z-index: 100;
	position: absolute;
	left: 380px;
	top: 270px;
}

.under {
	padding-under: 20px;
	color: black;
}

.img {
	height: 50px;
	width: 50px;
	left: 30px;
	border-radius: 50%;
	float: left;
	border: 1px solid #dedede;
	border-radius: 50%
}

.imageBox {
	padding-left: 20px;
}

.page {
	height: 1500px;
	background-color: rgb(239, 239, 239);
}
</style>
</head>
<body>
	<form action="" method="">
		<div class="page">
			<div class="sidebarBox">
				<div class="userNameHead">
					<h4 class="userNameTagHead" style="padding-left: 20px">파트너스</h4>
					<hr>
					<div class="userNameBody">
						<div class="imageBox">
							<img alt="image" class="img" src="./images/who.png"
								onclick="f_showImage()">
						</div>
						<div class="userName">홍길동</div>
						<div class="userEmail">이메일</div>
					</div>
				</div>
			</div>
			<div class="sideUnderBox">
				<div class="w3-sidebar w3-bar-block w3-light-grey w3-card"
					style="width: 13%; height: 33%;">
					<a href="./mypageP.jsp" class="w3-bar-item w3-button">회원 정보</a>
					<a href="./mypageInqueryC.do" class="w3-bar-item w3-button">문의 내역</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							내 프로필<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="#" class="w3-bar-item w3-button">보유기술</a> <a href="./technologyP.jsp"
								class="w3-bar-item w3-button">자격증</a> <a href="#"
								class="w3-bar-item w3-button">포트폴리오</a>
						</div>
					</div>
					<a href="./supportHistory.jsp" class="w3-bar-item w3-button">지원 내역</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							프로젝트<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="./interestPJ.jsp" class="w3-bar-item w3-button">관심 프로젝트</a> <a href="./progressPJ.jsp"
								class="w3-bar-item w3-button">진행 중인 프로젝트</a> <a href="./finishedPJ.jsp"
								class="w3-bar-item w3-button">완료환 프로젝트</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div
				style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				파트너스 정보
				<div style="font-size: 13pt; padding-top: 10px;">
					<b>파트너스 정보를 수정할 수 있습니다.</b><br>
				</div>
			</div>
			<hr>
			<div>
				<div class="introduction"
					style="padding-left: 30px; padding-top: 30px;">
					<div style="font-size: 16pt; padding-bottom: 20px;">파트너스 소개
					</div>
					<div>
						<div
							style="float: left; font-size: 13pt; padding-left: 140px; padding-bottom: 20px;">
							<b style="color: red;">*&nbsp;</b>파트너스 소개
						</div>
						<input type="text"
							style="font-size: 15px; margin-left: 40px; width: 350px; height: 150px;">
					</div>
					<div>
						<div style="font-size: 16pt; padding-bottom: 20px;">파트너스 정보</div>
						<div
							style="font-size: 13pt; padding-left: 140px; padding-bottom: 20px;">
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">
									<b style="color: red;">*&nbsp;</b>파트너스 형태
								</div>
								<select name="form" id="clientSelect" style="width: 350px;">
									<option>개인</option>
									<option>팀</option>
									<option>개인사업자</option>
									<option>법인사업자</option>
								</select>
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">
									<b style="color: red;">*&nbsp;</b>이름
								</div>
								<input type="text" class="name" style="width: 350px;">
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">생년월일</div>
								<select name="yy" id="year"></select>년 <select name="mm"
									id="month"></select>월 <select name="dd" id="day"></select>일
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">주소</div>
								<input type="text" name="addr2" id="sample4_postcode"
									placeholder="우편번호" required pattern="^\d{5,6}$" value=""
									style="width: 200px; margin-right: 40px;"> <input
									type="button" onclick="sample4_execDaumPostcode()"
									value="우편번호 찾기" class="btn"><br> <input
									style="width: 220px;" type="text" id="sample4_roadAddress"
									placeholder="도로명주소"> <input type="text"
									style="width: 207px;" id="sample4_jibunAddress"
									placeholder="지번주소"> <span id="guide"
									style="color: #999; display: none"></span> <input type="text"
									style="width: 220px;" id="sample4_detailAddress"
									placeholder="상세주소"> <input type="text"
									id="sample4_extraAddress" style="width: 207px;"
									placeholder="참고항목"> <br> <br> <input
									type="hidden" name="addr" value="">
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">이메일</div>
								<input type="text" id="mailid" name="em2"
									placeholder="이메일을 입력해주세요." required
									pattern="^[a-z]+[a-z0-9]{3,20}$"
									style="line-height: 20px; width: 190px;">&nbsp;@ <input
									type="hidden" id="mailid2" name="em" value=""> <select
									id="selectmail">
									<option selected>선택해주세요</option>
									<option value="naver.com">naver.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="gmail.com">gmail.com</option>
									<option value="nate.com">nate.com</option>
								</select>
							</div>
						</div>
					</div>
					<div>
						<div style="font-size: 16pt; padding-bottom: 20px;">연락처 정보</div>
						<div
							style="font-size: 13pt; padding-left: 140px; padding-bottom: 20px;">
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">
									<b style="color: red;">*&nbsp;</b>핸드폰 번호
								</div>
								<select id="phone">
									<option>010</option>
									<option>011</option>
									<option>016</option>
									<option>017</option>
									<option>018</option>
									<option>019</option>
								</select> <input type="text" style="width: 140px;" title="핸드폰 두번째자리">
								<input type="text" style="width: 140px;" title="핸드폰 세번째자리">
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">전화
									번호</div>
								<select id="phone">
									<option>---</option>
									<option>02</option>
									<option>031</option>
									<option>032</option>
									<option>033</option>
									<option>041</option>
									<option>042</option>
									<option>043</option>
									<option>044</option>
									<option>051</option>
									<option>052</option>
									<option>053</option>
									<option>054</option>
									<option>055</option>
									<option>061</option>
									<option>062</option>
									<option>063</option>
									<option>064</option>
									<option>070</option>
									<option>해외</option>
								</select> <input type="text" style="width: 286px;" title="전화번호">
							</div>
							<div style="padding-bottom: 8px;">
								<div
									style="float: left; text-align: right; padding-right: 30px; width: 170px;">팩스
									번호</div>
								<input type="text" style="width: 350px;" title="팩스 번">
							</div>
						</div>
					</div>
					<input type="button" name="" value="수정 완료"
						onclick="location.href='./mypageP.jsp'"
						style="float: right; width: 75px; margin-right: 60px; cursor:pointer;">
				</div>
			</div>
		</div>
	</form>
	<script>
		$(document)
				.ready(
						function() {
							var now = new Date();
							var year = now.getFullYear();
							var mon = (now.getMonth() + 1) > 9 ? ''
									+ (now.getMonth() + 1) : '0'
									+ (now.getMonth() + 1);
							var day = (now.getDate()) > 9 ? ''
									+ (now.getDate()) : '0' + (now.getDate());
							//년도 selectbox만들기               
							for (var i = 1900; i <= year; i++) {
								$('#year').append(
										'<option value="' + i + '">' + i
												+ '년</option>');
							}

							// 월별 selectbox 만들기            
							for (var i = 1; i <= 12; i++) {
								var mm = i > 9 ? i : "0" + i;
								$('#month').append(
										'<option value="' + mm + '">' + mm
												+ '월</option>');
							}

							// 일별 selectbox 만들기
							for (var i = 1; i <= 31; i++) {
								var dd = i > 9 ? i : "0" + i;
								$('#day').append(
										'<option value="' + dd + '">' + dd
												+ '일</option>');
							}
							$("#year  > option[value=" + year + "]").attr(
									"selected", "true");
							$("#month  > option[value=" + mon + "]").attr(
									"selected", "true");
							$("#day  > option[value=" + day + "]").attr(
									"selected", "true");

						})
		function f_showImage() {
			window.open("managerMemDetail.jsp", "tab",
					"left=500, top=500, width=550, height=550");
		}
	</script>
</body>
</html>
<%@ include file="footer.jsp"%>
