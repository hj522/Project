<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./managerHeader.jsp"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>관리자 페이지</title>

<style>
#content {
	margin-left: 300px;
	margin-right: 300px;
	padding: 60px;
}

#rev {
	padding: 360px;
	padding-top: 60px;
	background-color: rgb(247, 250, 252);
	height: 240px;
	font-size: 24pt;
	width: 1250px;
}

#seq {
	position: relative;
	padding: 360px;
	padding-top: 60px;
	background-color: rgb(247, 250, 252);
	height: 380px;
	font-size: 24pt;
	overflow: hidden;
}

#wr1 {
	background-color: rgb(247, 250, 252);
	height: 90px;
	padding: 50px;
	padding-left: 400px;
	padding-top: 90px;
}

.number {
	display: inline-block;
	font-size: 25pt;
	line-height: 20pt;
}

.box {
	display: inline-block;
	border: 0px solid black;
	width: 530px;
	height: 200px;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
}

.boxrev {
	display: inline-block;
	border: 0px solid black;
	width: 250px;
	height: 280px;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
	background-color: white;
	padding-left: 20px;
	padding-top: 10px;
}

.boxseq {
	position: absolute;
	border: 0px solid black;
	height: 450px;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 2%;
	background-color: white;
	padding-left: 20px;
	padding-top: 10px;
}

li {
	list-style: none;
	list-style-type: none;
	float: left;
	margin-right: 30px;
}

.bli {
	list-style: none;
	list-style-type: none;
	float: left;
	color: rgb(235, 235, 235);
	font-size: 11pt;
}

a {
	text-decoration: none;
}

.pjchk {
	background-color: rgb(247, 250, 252);
	height: 400px;
}

.signb {
	border-radius: 4%;
	text-decoration: none;
	color: rgb(63, 165, 200);
	background-color: rgb(255, 255, 255);
	padding: 15px 20px;
	font-size: 12pt;
	margin-left: 60px;
}

.boxp1 {
	position: absolute;
	display: inline-block;
	width: 1210px;
	left: 360px;
	height: 455px;
}

.boxp2 {
	position: absolute;
	opacity: 0.5;
	background-color: rgb(247, 250, 252);
	display: inline-block;
	width: 339px;
	height: 450px;
	left: 1210px;
	display: inline-block;
	z-index: 1001;
}
.btn {
  display: inline-block;
  font-weight: 400;
  line-height: 1.5;
  color: #212529;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background-color: transparent;
  border: 1px solid transparent;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  border-radius: 0.25rem;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.btn-outline-dark {
  color: #212529;
  border-color: #212529;
}
.btn-outline-dark:hover {
  color: #fff;
  background-color: #212529;
  border-color: #212529;
}
.btn-check:focus + .btn-outline-dark, .btn-outline-dark:focus {
  box-shadow: 0 0 0 0.25rem rgba(33, 37, 41, 0.5);
}
.btn-check:checked + .btn-outline-dark, .btn-check:active + .btn-outline-dark, .btn-outline-dark:active, .btn-outline-dark.active, .btn-outline-dark.dropdown-toggle.show {
  color: #fff;
  background-color: #212529;
  border-color: #212529;
}
.btn-check:checked + .btn-outline-dark:focus, .btn-check:active + .btn-outline-dark:focus, .btn-outline-dark:active:focus, .btn-outline-dark.active:focus, .btn-outline-dark.dropdown-toggle.show:focus {
  box-shadow: 0 0 0 0.25rem rgba(33, 37, 41, 0.5);
}
.btn-outline-dark:disabled, .btn-outline-dark.disabled {
  color: #212529;
  background-color: transparent;
}
.mt-auto {
  margin-top: auto !important;
}

</style>
</head>
<body>
	<img src="./images/banner1.png">
	<div id="wrapper">
		<div id="wr1">
			<div style="display: inline-block; margin-right: 120px;">
				<img src="./images/award.png">
			</div>
			<div style="display: inline-block; margin-right: 120px;">
				<h2 class="number">46245</h2>
				<h2 style="display: inline-block;">&nbsp;개</h2>
				<div>
					<i style="font-size: 10pt;">등록된 프로젝트</i>
				</div>
			</div>
			<div style="display: inline-block; margin-right: 120px;">
				<h2 class="number">7848</h2>
				<h2 style="display: inline-block;">&nbsp;억 원</h2>
				<div>
					<i style="font-size: 10pt;">프로젝트 등록 금액</i>
				</div>
			</div>
			<div style="display: inline-block; margin-right: 120px;">
				<h2 class="number"></h2>
				<h2 style="display: inline-block;">&nbsp;명</h2>
				<div>
					<i style="font-size: 10pt;">개발회사&프리랜서</i>
				</div>
			</div>
		</div>
		<br> <br> <br>
		<div id="content">
			<div style="font-size: 22pt;">다양한 카테고리의 IT 프로젝트를 등록하고 전문가를
				만나보세요.</div>
			<br>
			<div style="padding-bottom: 50px;">
				<ul>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:void(0)" onclick="">애플리케이션</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:void(0)" onclick="">웹</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:void(0)" onclick="">일반 소프트웨어</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:void(0)" onclick="">커머스, 쇼핑몰</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:void(0)" onclick="">임베디드</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:void(0)" onclick="">퍼블리싱</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:void(0)" onclick="">제품</a></li>
				</ul>
			</div>
			<br>
			<div class="box">
				<b style="margin-left: 20px; font-size: 13pt; line-height: 40pt;">
					<a href="#" style="color: rgb(32, 153, 187);">B2B SNS 미디어 커머스
						구축</a>
				</b>
				<ul>
					<li class=".bli"><img src="./images/won.png"><b>120,000,000원</b></li>
					<li class=".bli"><b style="color: rgb(232, 232, 232)">|</b><b
						style="margin-left: 30px; color: black;"><img
							src="./images/time.png">150일</b></li>
					<li class=".bli"><b style="color: rgb(232, 232, 232)">|</b><b
						style="margin-left: 30px; color: black;"><img
							src="./images/person.png">19명 지원</b></li>
				</ul>
				<br>
				<h6
					style="font-size: 10pt; margin-left: 20px; margin-right: 20px; color: rgb(136, 136, 136)">프로젝트
					개요: -B2B SNS 미디어 커머스 구축 프로젝트 준비 상황:-아이디어 단계이며 사업 기획(IR Eck)만 준비되어
					있습...</h6>
				<br>
				<p style="margin-left: 20px;">외주(도급)</p>
			</div>
			&nbsp;&nbsp;&nbsp;
			<div class="box">
				<b style="margin-left: 20px; font-size: 13pt; line-height: 40pt;">
					<a href="#" style="color: rgb(32, 153, 187);">아파트 입주민 단지내 통화 및
						입주자 편의용 앱 디자인 및 개발</a>
				</b>
				<ul>
					<li class=".bli"><img src="./images/won.png"><b>40,000,000원</b></li>
					<li class=".bli"><b style="color: rgb(232, 232, 232)">|</b><b
						style="margin-left: 30px; color: black;"><img
							src="./images/time.png">90일</b></li>
					<li class=".bli"><b style="color: rgb(232, 232, 232)">|</b><b
						style="margin-left: 30px; color: black;"><img
							src="./images/person.png">8명 지원</b></li>
				</ul>
				<br>
				<h6
					style="font-size: 10pt; margin-left: 20px; margin-right: 20px; color: rgb(136, 136, 136)">프로젝트
					개요 : - 아파트 각 세대 내 월패드의 인터폰 기능을 세대 입주민 앱으로 대체 사용 가능하도록 하기 위한 앱 개발을
					진행 중입니다. - 최...</h6>
				<br>
				<p style="margin-left: 20px;">외주(도급)</p>
			</div>
			<br> <br>
			<div class="box">
				<b style="margin-left: 20px; font-size: 12pt; line-height: 40pt;">
					<a href="#" style="color: rgb(32, 153, 187);">서비스 신청 반응형웹 및 앱
						리뉴얼 또는 신규 개발</a>
				</b>
				<ul>
					<li class=".bli"><img src="./images/won.png"><b>70,000,000원</b></li>
					<li class=".bli"><b style="color: rgb(232, 232, 232)">|</b><b
						style="margin-left: 30px; color: black;"><img
							src="./images/time.png">90일</b></li>
					<li class=".bli"><b style="color: rgb(232, 232, 232)">|</b><b
						style="margin-left: 30px; color: black;"><img
							src="./images/person.png">32명 지원</b></li>
				</ul>
				<br>
				<h6
					style="font-size: 10pt; margin-left: 20px; margin-right: 20px; color: rgb(136, 136, 136)">프로젝트
					개요 : - 자사 서비스 신청 웹 및 모바일 앱 리뉴얼 또는 신규 개발 의뢰 목표 : - 운영 중인 웹과 모바일 앱
					리뉴얼 현...</h6>
				<br>
				<p style="margin-left: 20px;">외주(도급)</p>
			</div>
			&nbsp;&nbsp;&nbsp;
			<div class="box">
				<b style="margin-left: 20px; font-size: 13pt; line-height: 40pt;">
					<a href="#" style="color: rgb(32, 153, 187);">지역기반 우리동네 전문가 연결
						O2O 플랫폼 개발 PM...</a>
				</b>
				<ul>
					<li class=".bli"><img src="./images/won.png"><b>48,000,000원</b></li>
					<li class=".bli"><b style="color: rgb(232, 232, 232)">|</b><b
						style="margin-left: 30px; color: black;"><img
							src="./images/time.png">180일</b></li>
					<li class=".bli"><b style="color: rgb(232, 232, 232)">|</b><b
						style="margin-left: 30px; color: black;"><img
							src="./images/person.png">2명 지원</b></li>
				</ul>
				<br>
				<h6
					style="font-size: 10pt; margin-left: 20px; margin-right: 20px; color: rgb(136, 136, 136)">프로젝트
					개요: 프로젝트 소개: - 지역기반 우리동네 전문가 연결 O2O 플랫폼 개발 간 CTO, PM 역할 가능하신 분을
					모집하고자 합니다. ...</h6>
				<br>
				<p style="margin-left: 20px;">기간제(상주)</p>
			</div>
			<br> <br>
		</div>
	</div>
	<div class="pjchk">
		<div style="padding: 90px; margin-left: 285px;">
			<a href="#"><img id="fnd"
				style="margin-right: 20px; border: 1px solid black; border-radius: 2%;"
				src="./images/pj-fnd1.png" onmouseover="f_mo1()"
				onmouseout="f_mr1()"></a> <a href="#"><img id="fnd"
				style="margin-right: 20px; border: 1px solid black; border-radius: 2%;"
				src="./images/pj-fnd2.png" onmouseover="f_mo2()"
				onmouseout="f_mr2()"></a> <a href="#"><img id="fnd"
				style="border: 1px solid black; border-radius: 2%;"
				src="./images/pj-fnd3.png" onmouseover="f_mo3()"
				onmouseout="f_mr3()"></a>
		</div>
	</div>
	<div
		style="background-color: rgb(63, 165, 200); height: 50px; color: white; font-size: 18pt; padding: 75px; padding-left: 510px;">
		다양한 카테고리의 IT 프로젝트를 찾고 있으신가요? <a class="signb" href="./registerMember.jsp">회원가입하기</a>
	</div>
	<div id="seq">
		임플의 빠르고 편리하고 안전한 프로세스를 경험해 보세요.
		<div style="padding-bottom: 70px;">
				<ul>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:f_seq1()">프로젝트 등록 및 상담</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:f_seq1()">지원자 모집 및 선택</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:f_seq1()">프로젝트 미팅</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:f_seq1()">프로젝트 계약</a></li>
					<li><a class="btn btn-outline-dark mt-auto"
						href="javascript:f_seq1()"">프로젝트 진행 및 완료</a></li>
				</ul>
			</div>
		<div class="boxp1">
			<div id="bsq" class="boxseq" style="left: 10px;">
				<div style="position: absolute; padding: 20px; font-size: 13pt;">
					<b style="color: rgb(63, 165, 200);">Step1</b> 프로젝트 등록 및 상담<br>
					<br>
					<p style="font-size: 17pt;">
						프로젝트에 딱 맞는 맞춤 상담을 받아보세요.<br> 프로젝트를 등록해 주시면<br> 견적 상담과 내용
						작성을 도와드립니다.<br>
					</p>
					<br>
					<ul>
						<li style="list-style: disc; font-size: 10pt; float: none;">
							임플에서는 68,000여 건을 상담한 경험을 가진 위시켓 매니저가<br> 요구사항 구체화를 도와드리고, 그에
							맞는 적정 견적을 안내합니다.<br>&nbsp;
						</li>
						<li style="list-style: disc; font-size: 10pt;">개발자와 디자이너가 이해할
							수 있는 용어로 프로젝트 내용을 수정해드립니다.</li>
					</ul>
				</div>
				<div style="position: relative; margin-left: 620px;">
					<img src="./images/seq1.png">
				</div>
				<hr>
			</div>
			<div id="bsq" class="boxseq" style="left: 1230px;"> 
				<div style="position: absolute; padding: 20px; font-size: 13pt;">
					<b style="color: rgb(63, 165, 200);">Step2</b> 지원자 모집 및 선택<br>
					<br>
					<p style="font-size: 17pt;">
						마음에 드는 믿을만한 파트너를 만나보세요.<br>
						유사 프로젝트를 진행한 경험이 있는 파트너에게<br>
						프로젝트 분석 및 제안을 받아볼 수 있습니다.<br>
					</p>
					<br>
					<ul>
						<li style="list-style: disc; font-size: 10pt; float: none;">
							임플에서는 24시간 내에 평균 5.2명의 지원자가 빠르게 발생합니다.<br>&nbsp;
						</li>
						<li style="list-style: disc; font-size: 10pt;">
							지원자들의 견적, 포트폴리오, 클라이언트 평가를 한눈에 비교할 수 있습니다.
						</li>
					</ul>
				</div>
				<div style="position: relative; margin-left: 620px;">
					<img src="./images/seq2.png">
				</div>
				<hr>
			</div>
			<div id="bsq" class="boxseq" style="left: 2440px;"> 
				<div style="position: absolute; padding: 20px; font-size: 13pt;">
					<b style="color: rgb(63, 165, 200);">Step3</b> 프로젝트 미팅<br>
					<br>
					<p style="font-size: 17pt;">
						프로젝트에 적합한 파트너 선정이 어려우셨나요?<br> 
						위시켓 매니저와 함께 미팅을 진행하면서<br>
						파트너를 검증할 수 있습니다.<br>
					</p>
					<br>
					<ul>
						<li style="list-style: disc; font-size: 10pt; float: none;">
							업무범위, 계약 조건, 견적 및 일정을 협의한 후 안전하게 계약하실 수 있습니다.<br>&nbsp;
						</li>
						<li style="list-style: disc; font-size: 10pt;">
							담당 매니저가 배정되어 성공적으로 파트너와 계약할 수 있도록 상담해 드립니다.
						</li>
					</ul>
				</div>
				<div style="position: relative; margin-left: 620px;">
					<img src="./images/seq3.png">
				</div>
				<hr>
			</div>
			<div id="bsq" class="boxseq" style="left: 3650px;"> 
				<div style="position: absolute; padding: 20px; font-size: 13pt;">
					<b style="color: rgb(63, 165, 200);">Step4</b> 프로젝트 계약<br>
					<br>
					<p style="font-size: 17pt;">
						계약 과정이 복잡하고 번거로우셨나요?<br>
						아웃소싱에 특화된 계약 시스템을 이용해 보세요.<br>
					</p>
					<br>
					<ul>
						<li style="list-style: disc; font-size: 10pt; float: none;">
							법무법인의 검토를 받은 신뢰할 수 있는 표준계약서를 사용해<br> 
							공정한 계약 체결을 도와드립니다.<br>&nbsp;
						</li>
						<li style="list-style: disc; font-size: 10pt;">
							계약서 검토, 날인 등 모든 계약과정을 임플 플랫폼 내에서 진행할 수 있어서<br>
							계약이력을 보호받을 수 있습니다.<br>
						</li>
					</ul>
				</div>
				<div style="position: relative; margin-left: 620px;">
					<img src="./images/seq4.png">
				</div>
				<hr>
			</div>
			<div id="bsq" class="boxseq" style="left: 4860px;"> 
				<div style="position: absolute; padding: 20px; font-size: 13pt;">
					<b style="color: rgb(63, 165, 200);">Step5</b> 프로젝트 진행 및 완료<br>
					<br>
					<p style="font-size: 17pt;">
						임플의 안전한 대금보호시스템을 사용해보세요.<br> 
						혹시 모를 분쟁도 안심중재솔루션 3단계를 통해<br> 
						원만하게 해결할 수 있습니다.<br>
					</p>
					<br>
					<ul>
						<li style="list-style: disc; font-size: 10pt; float: none;">
							에스크로 방식의 대금보호시스템을 통해 대금걱정 없이<br> 
							프로젝트에만 집중하실 수 있습니다.<br>&nbsp;
						</li>
						<li style="list-style: disc; font-size: 10pt;">
							커뮤니케이션 매니저가 수시로 프로젝트 진행상황을 체크하고<br>
							효율적인 커뮤니케이션을 도와드립니다.
						</li>
					</ul>
				</div>
				<div style="position: relative; margin-left: 620px;">
					<img src="./images/seq5.png">
				</div>
				<hr>
			</div>
			<div class="boxp2"></div>
		</div>

	</div>
	<img src="./images/banner2.png">
	<div id="rev">
		임플은 이렇게 빠르고 편리하고 안전합니다.<br> <br>
		<div class="boxrev">
			<img src="./images/''.png"><br>
			<p style="font-size: 12pt;">
				파트너스 프로필의<br> <b>실제 프로젝트 기록</b> 덕분에<br> 좋은 작업자를 만날 수 있었다.
			</p>
			<div style="position: absolute;">
				<img style="padding-top: 30px;" src="./images/br1.png"><br>
				<p style="padding-top: 10px; font-size: 10pt; color: grey;">
					윤민석<br> CEO
				</p>
			</div>
			<div style="position: relative; padding-left: 100px;">
				<img src="./images/pl.png" width="130px;" height="135px;">
			</div>

		</div>
		&nbsp;&nbsp;&nbsp;
		<div class="boxrev">
			<img src="./images/''.png"><br>
			<p style="font-size: 12pt;">
				<b>하루만에 8명의 지원자</b>가<br> 발생해서 빠르게 프로젝트를<br> 완료할 수 있었습니다.
			</p>
			<div style="position: absolute;">
				<img style="padding-top: 20px;" src="./images/br2.png"><br>
				<p style="padding-top: 10px; font-size: 10pt; color: grey;">
					김효정<br> 사업본부장
				</p>
			</div>
			<div style="position: relative; padding-left: 100px;">
				<img src="./images/aa.png" width="130px;" height="135px;">
			</div>

		</div>
		&nbsp;&nbsp;&nbsp;
		<div class="boxrev">
			<img src="./images/''.png"><br>
			<p style="font-size: 12pt;">
				<b>견적과 일정을 상담</b>해주고<br> <b>프로젝트 범위 정리</b>를 도와주어<br> 편리하게
				계약을 체결했다.
			</p>
			<div style="position: absolute;">
				<img style="padding-top: 30px;" src="./images/br3.png"><br>
				<p style="padding-top: 10px; font-size: 10pt; color: grey;">
					김강산<br> CEO
				</p>
			</div>
			<div style="position: relative; padding-left: 100px;">
				<img src="./images/da.png" width="130px;" height="135px;">
			</div>

		</div>
		&nbsp;&nbsp;&nbsp;
		<div class="boxrev">
			<img src="./images/''.png"><br>
			<p style="font-size: 12pt;">
				임플 덕분에 비지니스의<br> <b>핵심에 집중</b>할 수 있었습니다.<br> 스타트업에게 최고의
				서비스.
			</p>
			<div style="position: absolute;">
				<img style="padding-top: 20px;" src="./images/br4.png"><br>
				<p style="padding-top: 10px; font-size: 10pt; color: grey;">
					윤동기<br> CSO
				</p>
			</div>
			<div style="position: relative; padding-left: 100px;">
				<img src="./images/ua.png" width="133px;" height="138px;">
			</div>

		</div>
		&nbsp;&nbsp;&nbsp;
	</div>
	<div style="height: 600px; padding-left: 500px; padding-top: 40px; width: 1300px;">
		<i style="font-style: normal; font-size: 25pt;">이미 <b>85,199</b>개의 클라이언트가 이용하고 있습니다.</i>
		<div style="position: relative; height: 404px; width: 905px; overflow: hidden;">
			<div id="cp" style="position: absolute; left: 0px;">
				<img src="./images/cp1.png" width="1100px" height="400px" style="padding-right: 200px;">
			</div>
			<div id="cp" style="position: absolute; left: 950px;">
				<img src="./images/cp2.png" width="1100px" height="400px" style="padding-right: 200px;">
			</div>
			<div id="cp" style="position: absolute; left: 1900px">
				<img src="./images/cp3.png" width="1100px" height="400px" style="padding-right: 200px;">
			</div>
			<div id="cp" style="position: absolute; left: 2850px">
				<img src="./images/cp4.png" width="1100px" height="400px" style="padding-right: 200px;">
			</div>
			<div id="cp" style="position: absolute; left: 3800px">
				<img src="./images/cp5.png" width="1100px" height="400px" style="padding-right: 200px;">
			</div>
		</div>
	</div>
	<script>
		var v_boxp2 = document.querySelector(".boxp2");
		var v_bsqs = document.querySelectorAll("#bsq");
		var v_cps = document.querySelectorAll("#cp");
		var v_mvWidth = 10;
		
		function f_cp() {
			v_cps[0].style.left = parseInt(v_cps[0].style.left) - v_mvWidth + "px";
			v_cps[1].style.left = parseInt(v_cps[1].style.left) - v_mvWidth + "px";
			v_cps[2].style.left = parseInt(v_cps[2].style.left) - v_mvWidth + "px";
			v_cps[3].style.left = parseInt(v_cps[3].style.left) - v_mvWidth + "px";
			v_cps[4].style.left = parseInt(v_cps[4].style.left) - v_mvWidth + "px";
			
			if(v_cps[0].style.left == -950 + "px") {
				v_cps[0].style.left = 3800 + "px";
				return setTimeout(f_cp, 3000);
			}
			console.log(v_cps[1].style.left);
			if(v_cps[1].style.left == -950 + "px") {
				v_cps[1].style.left = 3800 + "px";
				return setTimeout(f_cp, 3000);
			}
			if(v_cps[2].style.left == -950 + "px") {
				v_cps[2].style.left = 3800 + "px";
				return setTimeout(f_cp, 3000);
			}
			if(v_cps[3].style.left == -950 + "px") {
				v_cps[3].style.left = 3800 + "px";
				return setTimeout(f_cp, 3000);
			}
			if(v_cps[4].style.left == -950 + "px") {
				v_cps[4].style.left = 3800 + "px";
				return setTimeout(f_cp, 3000);
			}
			setTimeout(f_cp, 1);
		}
		setTimeout(f_cp, 3000);
		
		function f_seq1() {
			v_bsqs[0].style.left = parseInt(v_bsqs[0].style.left) - v_mvWidth + "px";
			v_bsqs[1].style.left = parseInt(v_bsqs[1].style.left) - v_mvWidth + "px";
			v_bsqs[2].style.left = parseInt(v_bsqs[2].style.left) - v_mvWidth + "px";
			v_bsqs[3].style.left = parseInt(v_bsqs[3].style.left) - v_mvWidth + "px";
			v_bsqs[4].style.left = parseInt(v_bsqs[4].style.left) - v_mvWidth + "px";
			
			if (v_bsqs[0].style.left == -1190 + "px") {
				v_bsqs[0].style.left = 4860 + "px";
				return;
			}
			if(v_bsqs[1].style.left == -1190 + "px") {
				v_bsqs[1].style.left = 4860 + "px";
				return;
			}
			if(v_bsqs[2].style.left == -1190 + "px") {
				v_bsqs[2].style.left = 4860 + "px";
				return;
			}
			if(v_bsqs[3].style.left == -1190 + "px") {
				v_bsqs[3].style.left = 4860 + "px";
				return;
			}
			if(v_bsqs[4].style.left == -1190 + "px") {
				v_bsqs[4].style.left = 4860 + "px";
				return;
			}
			setTimeout(f_seq1, 0.1);
		}
		var v_fnds = document.querySelectorAll("#fnd");
		function f_mo1() {
			v_fnds[0].style.border = "1px solid rgb(32,153,187)";
		}
		function f_mr1() {
			v_fnds[0].style.border = "1px solid black";
		}
		function f_mo2() {
			v_fnds[1].style.border = "1px solid rgb(32,153,187)";
		}
		function f_mr2() {
			v_fnds[1].style.border = "1px solid black";
		}
		function f_mo3() {
			v_fnds[2].style.border = "1px solid rgb(32,153,187)";
		}
		function f_mr3() {
			v_fnds[2].style.border = "1px solid black";
		}

		$(function() {
			var count0 = count1 = count2 = 0;

			timeCounter();
			function numberWithCommas(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
			function timeCounter() {

				id0 = setInterval(count0Fn, 0.0000000000000001);

				function count0Fn() {
					count0 += 160;
					if (count0 > 46560) {
						clearInterval(id0);
					} else {
						$(".number").eq(0).text(numberWithCommas(count0));
					}

				}

				id1 = setInterval(count1Fn, 0.0000000000000001);

				function count1Fn() {
					count1 += 30;
					if (count1 > 8730) {
						clearInterval(id1);
					} else {
						$(".number").eq(1).text(numberWithCommas(count1));
					}
				}

				id2 = setInterval(count2Fn, 0.0000000000000001);

				function count2Fn() {
					count2 += 390;
					if (count2 > 113490) {
						clearInterval(id2);
					} else {
						$(".number").eq(2).text(numberWithCommas(count2));
					}
				}
			}
		});
	</script>
	
</body>
</html>
<%@ include file="./footer.jsp"%>