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
</style>
</head>
<body>
	<form action="projectInsert7.do" method="post">
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
					<li>6. 모집 요건<img src="./images/check.png" width="17px"
						height="17px"></li>
					<li>7. 추가 정보<img src="./images/check.png" width="17px"
						height="17px"></li>
				</ul>
			</div>
			<div class="box">
				<div
					style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
					프로젝트 정보 수정</div>
				<hr>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 진행 방식</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="proceeding">
							외주(도급)<br> <br>
						</p>
					</div>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>기본 정보</b><br>
					<img src="./images/modify.png" style="float:right; padding-right:40px;" onclick="f_register1()">
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 제목</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="PJTitle">
							대충 프로젝트 제목<br> <br>
						</p>
					</div>
					<b>프로젝트 카테고리</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="PJCategory" style="float: left;">
							<img src="./images/gray-check-icon.png" width="13px"
								height="13px">개발 <img src="./images/gray-check-icon.png"
								width="13px" height="13px">디자인 <img
								src="./images/gray-check-icon.png" width="13px" height="13px">기획
						</p>
					</div>
					<br>
					<br> <b>프로젝트 분야</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p>
							애플리케이션&nbsp;&nbsp;&nbsp;커버스, 쇼핑&nbsp;&nbsp;&nbsp;그래픽<br>
							<br>
						</p>
					</div>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>준비 상태</b><br>
					<img src="./images/modify.png" style="float:right; padding-right:40px;" onclick="f_register2()">
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 진행 분류</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="classification">
							신규 프로젝트를 진행하려 합니다.<br> <br>
						</p>
					</div>
					<b>기획 상태</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="planningStatus" style="float: left;">아이디어만 있습니다.</p>
					</div>
					<br>
					<br>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 상세</b><br>
					<img src="./images/modify.png" style="float:right; padding-right:40px;" onclick="f_register3()">
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>상세 업무 내용</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="content">
							&lt;프로젝트의 현재 상황<br> &gt; &#13;&#10;예시) 프로젝트의 목적, 현재 준비 상황,
							진행 계획 등 <br> &#13;&#10;&lt;상세한 업무 내용&gt; <br>
							&#13;&#10; 예시) 소프트웨어의 용도, 주요 기능 List 등 <br>
							&#13;&#10;&lt;참고자료 / 유의사항&gt; <br> &#13;&#10; 예시) 참고할 소프트웨어,
							기타 유의사항 등 <br> <br>
						</p>
					</div>
					<br>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>예산 및 일정</b><br>
					<img src="./images/modify.png" style="float:right; padding-right:40px;" onclick="f_register4()">
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>지출 가능 예산</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="budget">
							300만원(예상 결제 금액 : 330만원) <br> 
						</p>
					</div>
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>예상 시작일</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="startDate">
							계약 체결 이후, 즉시 시작하길 희망합니다.<br> 
						</p>
					</div>
					<br>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>미팅</b><br>
					<img src="./images/modify.png" style="float:right; padding-right:40px;" onclick="f_register5()">
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>사전 미팅 방식</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="preMeeting">
							온라인 (카카오톡, 화상미팅 등)<br> 
						</p>
					</div>
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>진행 중 미팅</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="meeting">
							미팅 방식<br>
							온라인 (카카오톡, 화상미팅 등<br>
							미팅 주기<br>
							필요시 요청<br>
						</p>
					</div>
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>클라이언트 위치</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="locationCL">
							대전광역시 오류동
						</p>
					</div>
					<br>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>모집 요건</b><br>
					<img src="./images/modify.png" style="float:right; padding-right:40px;" onclick="f_register6()">
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>지원자 모집 마감일</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="deadline">
							2022년 09월 19일 sysdate<br> 
						</p>
					</div>
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>지원사업 여부</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="supportProject">
							아닙니다
						</p>
					</div>
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>지원자 필수 요건</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="requiredRequirements">
							<img src="./images/gray-check-icon.png" width="13px"
								height="13px">개인 또는 팀 <img src="./images/gray-check-icon.png"
								width="13px" height="13px">개인사업자 <img
								src="./images/gray-check-icon.png" width="13px" height="13px">법인 사업자
						</p>
					</div>
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>파트너 지원 전 질문</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="question">
							유사한 프로젝트를 수행한 경험이 있다면 무엇입니까?<br>
							프로젝트와 관련된 사업 분야의 프로젝트를 수행한 경험이 있습니까?
						</p>
					</div>
					<br>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>추가 정보</b><br>
					<img src="./images/modify.png" style="float:right; padding-right:40px;" onclick="f_register7()">
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 인력 상황</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="manpowerSituation">
							IT 프로젝트 경험이 있는 인력이 없습니다.<br> 
						</p>
					</div>
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>매니징 경험</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="managementExperience">
							프로젝트 매니징 경험이 있습니다.
					</div>
				</div>
				<div style="font-size: 13pt; padding-left: 30px; padding-top: 30px;">
					<b>프로젝트 우선순위</b> <b style="color: red;">*</b><br>
					<div style="font-size: 10pt; padding-top: 10px;">
						<p class="priority">
							[1순위] 산출문 완성도<br>
							[2순위] 금액<br>
							[3순위] 일정 준수
						</p>
					</div>
					<br>
				</div>
				<br>
				<hr>
				<div>
					<button>검수 중으로 돌아기기</button>
				</div>

			</div>
	</form>
	<script>
	function f_register1(){
		window.location.href="projectRegister1_1.jsp";	
	}
	function f_register2(){
		window.location.href="projectRegister2_2.jsp";	
	}
	function f_register3(){
		window.location.href="projectRegister3_3.jsp";	
	}
	function f_register4(){
		window.location.href="projectRegister4_4.jsp";	
	}
	function f_register5(){
		window.location.href="projectRegister5_5.jsp";	
	}
	function f_register6(){
		window.location.href="projectRegister6_6.jsp";	
	}
	function f_register7(){
		window.location.href="projectRegister7_7.jsp";	
	}
	</script>
</body>
</html>
<%@ include file="./footer.jsp"%>