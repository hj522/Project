<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용방법</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style>
	
   .ba {
   	background-color: rgb(239, 239, 239);
   	height: 8700px;
   	padding-top: 50px;
   	font-size: 17pt;
   	position: relative;
   }
   .nav {
   	position: absolute; /* absolute => fixed */
   	padding-left: 95px; /* 95 => 445 */
   	padding-top: 30px;
   	padding-bottom: 20px;
   	font-size: 11pt;
   	width: 1900px;
   	background-color: white;
   	border-bottom: 2px solid grey;
   	top: 0px;
   }
   ul {
   	list-style: none;
   }
   li {
   	margin-right: 95px;
   	float: left;
   	cursor: pointer;
   	line-height: 20pt;
   }
   i {
   	font-style: normal;
   	font-size: 10pt;
   }
   .fix {
	left: 350px;
	height: 300px;
	width: 1100px; 
	position: relative; /* static */
	overflow: hidden;
   }
   .box {
      box-shadow: 2px 3px 5px 5px rgb(232,232,232);
      border-radius: 1%;
      width: 1100px; 
      background-color: white;
      position: absolute;
      left: 350px;
      padding-top: 170px;
      text-align: center;
   }
</style>
</head>
<body>
	<div class="ba">
		<div style="padding-left: 350px;">
			클라이언트 이용방법<br><br><br>
		</div>
		<div class="box">
		<div id="div1">
			<b style="font-size:17pt;">의뢰하고 싶은 프로젝트를 무료로 등록해보세요.</b><br>
			<br>
			<i style="font-size:11pt;">프로젝트는 임플 매니저와 상담 후 공개됩니다.<br>
			임플 매니저와 상담하며 내용을 수정 및 보완할 수 있으니 편하게 작성하세요.<br></i>
			<br>
			<a href="#" style="font-size: 13pt; text-decoration: none; color: #4BABCC;"><b>프로젝트 등록하러 가기 ></b></a>
			<img src="./images/use1.png">
			<div id="jj" style="background-color: #F7FAFC; height: 180px; padding-top: 60px;">
				<div style="padding-right: 150px; padding-left: 100px; text-align: left; font-size: 14pt; float:left;">
					자주 묻는 질문
				</div>
				<div onclick="f_1_1()" style="padding-right: 100px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;임플에서 정부지원사업도 진행이 가능한가요?
				</div><img onclick="f_1_1()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					가능합니다. 프로젝트 등록하실 때 ‘6. 모집 요건’의 ‘지원사업 여부’에서 ‘네, 정부지원사업<br>
					또는 연구 과제입니다.’를 체크해주세요.<br>
					지원사업 요건에 맞는 파트너를 구하고 원활하게 계약할 수 있도록 도와드립니다.<br>
				</div><br>
				<div style="padding-left: 370px; padding-right: 80px;">
					<br><hr><br>
				</div>
				<div onclick="f_1_2()" style="padding-left: 375px; padding-right: 20px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;상주 프리랜서나 기간 단위로도 인력을 구인할 수 있나요?
				</div><img onclick="f_1_2()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					네. 프로젝트를 등록할 때 프로젝트 진행 방식을 ‘인력을 기간 단위로 구인’을<br>
					선택하시면, 그에 맞는 파트너를 구인하실 수 있습니다.
				</div><br>
			</div>
			</div>
			<div id="div2">
			<img src="./images/use2.png">
			<div id="jj" style="background-color: #F7FAFC; height: 180px; padding-top: 60px;">
				<div style="padding-right: 150px; padding-left: 100px; text-align: left; font-size: 14pt; float:left;">
					자주 묻는 질문
				</div>
				<div onclick="f_2_1()" style="padding-right: 100px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;프로젝트 등록 후 상담까지 얼마나 걸리나요?
				</div><img onclick="f_2_1()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					등록 후 영업일 기준 24시간 이내에 상담 연락을 드립니다. 임플 매니저가<br>
					등록해주신 내용을 확인한 후 맞춤 상담을 드릴 예정이니 잠시만 기다려주세요.
				</div><br>
				<div style="padding-left: 370px; padding-right: 80px;">
					<br><hr><br>
				</div>
				<div onclick="f_2_2()" style="padding-left: 375px; padding-right: 90px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;견적 상담만 받고 싶은데 어떻게 해야 하나요?
				</div><img onclick="f_2_2()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					프로젝트를 등록하시면 견적 상담을 받아보실 수 있습니다. 임플과의 상담 후,<br>
					프로젝트 진행을 원치 않으시거나 준비 기간이 더 필요한 경우, 프로젝트를<br>
					임플에 공개하지 않고 보류할 수 있으니 편하게 프로젝트를 등록해주세요.
				</div><br>
			</div>
			</div>
			<div id="div3">
			<img src="./images/use3.png">
			<img src="./images/use4.png">
			<a href="#"><img src="./images/pfind.png" style="margin-bottom: 70px;"></a>
			<div id="jj" style="background-color: #F7FAFC; height: 280px; padding-top: 60px;">
				<div style="padding-right: 150px; padding-left: 100px; text-align: left; font-size: 14pt; float:left;">
					자주 묻는 질문
				</div>
				<div onclick="f_3_1()" style="padding-right: 225px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;보통 지원자가 몇 명 정도 발생하나요?
				</div><img onclick="f_3_1()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					평균 24시간 이내에 5명 이상의 지원자를 확인하실 수 있습니다.<br>
					다만, 지원자 수는 프로젝트 카테고리, 난이도에 따라 다르니 참고해주세요.
				</div><br>
				<div style="padding-left: 370px; padding-right: 60px;">
					<br><hr><br>
				</div>
				<div onclick="f_3_2()" style="padding-left: 375px; padding-right: 250px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;미팅 신청은 몇 명까지 가능한가요?
				</div><img onclick="f_3_2()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					미팅 신청은 최대 2명까지 가능합니다. 다만, 미팅한 파트너 측의 문제로 프로젝트<br>
					진행이 불가능할 경우, 담당 매니저와 상의하에 추가 미팅을 하실 수 있습니다.
				</div><br>
				<div style="padding-left: 370px; padding-right: 60px;">
					<br><hr><br>
				</div>
				<div onclick="f_3_3()" style="padding-left: 375px; padding-right: 0px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;지원자 모집 중인 프로젝트의 금액/기간/내용을 수정하고 싶어요.
				</div><img onclick="f_3_3()" id="pit" src="./images/down.png" style="margin-left: 0px; cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					담당 매니저에게 연락해주시거나, 사이트 우측 하단의 ‘채팅 문의’에 말씀해주세요.<br>
					내용 수정으로 인해 금액이나 기간, 업무범위 등이 달라져 지원자가 다르게 발생할 수<br>
					있을 경우, 프로젝트 재등록이 필요하니 참고해주세요.
				</div><br>
			</div>
			</div>
			<div id="div4">
			<img src="./images/use5.png">
			<div id="jj" style="background-color: #F7FAFC; height: 280px; padding-top: 60px;">
				<div style="padding-right: 150px; padding-left: 100px; text-align: left; font-size: 14pt; float:left;">
					자주 묻는 질문
				</div>
				<div onclick="f_4_1()" style="padding-right: 225px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;온라인으로도 미팅이 가능한가요?
				</div><img onclick="f_4_1()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					원하는 미팅 방식을 선택하실 수 있습니다.<br>
					미팅 방식은 화상 미팅, 카카오톡 미팅 등 온라인 미팅과 오프라인 미팅이 있습니다.
				</div><br>
				<div style="padding-left: 370px; padding-right: 60px;">
					<br><hr><br>
				</div>
				<div onclick="f_4_2()" style="padding-left: 375px; padding-right: 275px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;미팅 절차가 어떻게 되나요?
				</div><img onclick="f_4_2()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					미팅은 아래 절차대로 진행되며, 원활한 미팅 진행을 위해 임플 매니저가<br>
					도와드립니다. 임플 매니저의 미팅 절차 설명 > 파트너의 자기소개 > 클라이언트 소개<br>
					및 프로젝트 내용 설명 > 질의응답 및 이슈 체크 > 추후 일정 및 견적 확인
				</div><br>
				<div style="padding-left: 370px; padding-right: 60px;">
					<br><hr><br>
				</div>
				<div onclick="f_4_3()" style="padding-left: 375px; padding-right: 240px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;미팅 시 이용요금이 발생하나요?
				</div><img onclick="f_4_3()" id="pit" src="./images/down.png" style="margin-left: 0px; cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					아닙니다. 이용요금은 계약 체결 시에만 발생합니다. 또한, 기간제(상주) 프로젝트일<br>
					경우에만 클라이언트님이 이용요금을 부담하니 참고해 주세요.
				</div><br>
			</div>
			</div>
			<div id="div5">
			<img src="./images/use6.png" style="margin-top: 30px; margin-bottom: 30px;">
			<div id="jj" style="background-color: #F7FAFC; height: 280px; padding-top: 60px;">
				<div style="padding-right: 150px; padding-left: 100px; text-align: left; font-size: 14pt; float:left;">
					자주 묻는 질문
				</div>
				<div onclick="f_5_1()" style="padding-right: 160px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;온라인으로 날인하는 게 법적 효력이 있나요?
				</div><img onclick="f_5_1()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					네, 그렇습니다. 임플 안심계약은 전자서명법 제3조 제3항, 전자 문서 및 전자거래 <br>
					기본법 제4조 제1항에 따라 실제 서면 계약서로 계약한 것과 같은 효력을 가집니다.
				</div><br>
				<div style="padding-left: 370px; padding-right: 60px;">
					<br><hr><br>
				</div>
				<div onclick="f_5_2()" style="padding-left: 375px; padding-right: 240px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;대금을 분할해서 결제할 수 있나요?
				</div><img onclick="f_5_2()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					네, 가능합니다. 분할 비율 및 시점은 계약 시 파트너 및 임플 매니저와 협의하에<br>
					결정됩니다. 기존 시장에서 통용되는 기간 단위의 분할 방식이 아니라, 대금보호시스템에<br>
					따라 업무범위 별로 대금을 분할합니다.
				</div><br>
				<div style="padding-left: 370px; padding-right: 60px;">
					<br><hr><br>
				</div>
				<div onclick="f_5_3()" style="padding-left: 375px; padding-right: 185px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;계약서에 어떤 내용들이 포함되어 있나요?
				</div><img onclick="f_5_3()" id="pit" src="./images/down.png" style="margin-left: 0px; cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					임플 표준계약서의 주요 조항으로는 계약 기간, 대금의 결제 및 지급, 대금의 환불,<br>
					업무의 내역, 지식재산권, 비밀유지, 하자보수, 계약의 해제 또는 해지, 분쟁의 해결 등이<br>
					있습니다. 임플 표준계약서는 법무법인 세움의 법률 검토를 통해 안전하게 작성되었습니다.
				</div><br>
			</div>
			</div>
			<div id="div6">
			<img src="./images/use7.png">
			<img src="./images/use8.png">
			<img src="./images/register.png" style="margin-bottom: 80px;">
			<div id="jj" style="background-color: #F7FAFC; height: 280px; padding-top: 60px;">
				<div style="padding-right: 150px; padding-left: 100px; text-align: left; font-size: 14pt; float:left;">
					자주 묻는 질문
				</div>
				<div onclick="f_6_1()" style="padding-right: 90px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;프로젝트 진행 도중 분쟁이 생기면 어떻게 해야 하나요?
				</div><img onclick="f_6_1()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					담당 커뮤니케이션 매니저에게 분쟁 상황을 공유해 주세요. 임플은 분쟁 발생 시,<br>
					안심중재솔루션 3단계를 통해 해결을 도와드립니다.<br>
					<br>
					1단계: 양자 협의<br>
					문제 상황 초기에 당사자 간의 커뮤니케이션을 통해 합의점을 찾는 단계입니다.<br>
					계약서 내용 및 프로젝트 진행 상황을 점검하여 추후에 생길 수 있는 큰 손해를 예방할 수<br>
					있습니다. 합의된 내용을 토대로 계약서 일부를 수정하여 프로젝트를 재개하거나 계약을<br>
					파기할 수 있습니다.<br>
					<br>
					2단계: 임플 지원 미팅<br>
					양자 간 합의점을 찾지 못할 경우, 임플 리스크 매니저의 중립적인 도움을 받는 단계입니다.<br>
					임플에서 주관하는 삼자 미팅을 통해 양측의 주장과 관련 자료를 검토한 후, 원만하게 합의할<br>
					수 있도록 도와드립니다.<br>
					<br>
					3단계: 대한상사중재원 중재<br>
					해당 분야의 전문가인 중재인의 전문적인 판단을 통해 신속하게 분쟁을 해결할 수<br>
					있습니다. 임플은 중재 과정의 서류 작업을 도와드리며, 중재 신청 금액이 1억 원 미만일<br>
					경우 중재 비용 전액을 지원합니다.
				</div><br>
				<div style="padding-left: 370px; padding-right: 60px;">
					<br><hr><br>
				</div>
				<div onclick="f_6_2()" style="padding-left: 375px; padding-right: 90px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;추가 계약, 유지보수도 의뢰하고 싶은데 어떻게 하나요?
				</div><img onclick="f_6_2()" id="pit" src="./images/down.png" style="cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					담당 커뮤니케이션 매니저에게 말씀해 주세요. 추가 계약, 유지보수 계약 또한 안전하게<br>
					체결하실 수 있도록 도와드립니다.<br>
					<br>
					1. 작업한 파트너와 계속 진행할 경우<br>
					계약서 작성, 날인 과정을 마친 후 바로 프로젝트를 시작할 수 있습니다.<br>
					<br>
					2. 다른 파트너를 찾고 싶으신 경우<br>
					기존과 동일하게 프로젝트 등록 후 지원자 모집 과정을 거쳐 다른 파트너와 프로젝트를<br>
					시작할 수 있습니다.
				</div><br>
				<div style="padding-left: 370px; padding-right: 60px;">
					<br><hr><br>
				</div>
				<div onclick="f_6_3()" style="padding-left: 375px; padding-right: 0px; float:left; font-size: 14pt; cursor: pointer;">
					<img src="./images/q.png" width="22px" height="22px">&nbsp;프로젝트 진행 도중 계약 내용을 변경해야 할 경우 어떻게 하나요?
				</div><img onclick="f_6_3()" id="pit" src="./images/down.png" style="margin-left: 0px; cursor: pointer;">
				<div id="q" style="display: none; font-size: 11pt; padding-left:400px; text-align: left; padding-top: 15px;">
					변경이 필요한 내용을 담당 커뮤니케이션 매니저에게 전달해주세요. 파트너와 협의하에<br>
					계약 내용 변경이 가능하고, 협의된 내용을 특약서 형태로 작성해드립니다.
				</div><br>
			</div>
			</div>
		</div>
		<div class="fix">
			<div class="nav">
				<ul>
					<li id="li" class="use1">
						<i>01</i><br>
						프로젝트 등록
					</li>
					<li id="li" class="use2">
						<i>02</i><br>
						프로젝트 검수
					</li>
					<li id="li" class="use3">
						<i>03</i><br>
						지원자 모집
					</li>
					<li id="li" class="use4">
						<i>04</i><br>
						미팅
					</li>
					<li id="li" class="use5">
						<i>05</i><br>
						계약
					</li>
					<li id="li" class="use6">
						<i>06</i><br>
						진행 및 완료
					</li>
				</ul>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			$(".use1").click(function(){
				var offset = $("#div1").offset();
			    $("html").animate({scrollTop : offset.top - 160 + "px"}, 400);
			});
		});
		$(document).ready(function(){
			$(".use2").click(function(){
				var offset = $("#div2").offset();
			    $("html").animate({scrollTop : offset.top - 100 + "px"}, 400);
			});
		});
		$(document).ready(function(){
			$(".use3").click(function(){
				var offset = $("#div3").offset();
			    $("html").animate({scrollTop : offset.top - 100 + "px"}, 400);
			});
		});
		$(document).ready(function(){
			$(".use4").click(function(){
				var offset = $("#div4").offset();
			    $("html").animate({scrollTop : offset.top - 100 + "px"}, 400);
			});
		});
		$(document).ready(function(){
			$(".use5").click(function(){
				var offset = $("#div5").offset();
			    $("html").animate({scrollTop : offset.top - 100 + "px"}, 400);
			});
		});
		$(document).ready(function(){
			$(".use6").click(function(){
				var offset = $("#div6").offset();
			    $("html").animate({scrollTop : offset.top - 100 + "px"}, 400);
			});
		});
	</script>
	<script>
	
	
		var fix = document.querySelector(".fix");
		var nav = document.querySelector(".nav");
		var q = document.querySelectorAll("#q");
		var pit = document.querySelectorAll("#pit");
		var jjs = document.querySelectorAll("#jj");
		var lis = document.querySelectorAll("#li");
		
		var flag1 = false; var flag2 = false;
		var flag3 = false; var flag4 = false;
		var flag5 = false; var flag6 = false; var flag7 = false;
		var flag8 = false; var flag9 = false; var flag10 = false;
		var flag11 = false; var flag12 = false; var flag13 = false;
		var flag14 = false; var flag15 = false; var flag16 = false;
		

		function f_1_1() {
			if(q[1].style.display == "block") {
				pit[0].src = "./images/down.png";
				flag1 = false;
			} else {
				flag2 = false;
			}
			if(!flag1) {
				jjs[0].style.height = "280px";
				q[0].style.display = "block";
				q[1].style.display = "none";
				pit[0].src = "./images/up.png";
				pit[1].src = "./images/down.png";
				flag1 = true;
			} else {
				jjs[0].style.height = "180px";
				q[0].style.display = "none";
				pit[0].src = "./images/down.png";
				flag1 = false;
			}
		}
		function f_1_2() {
			if(q[0].style.display == "block") {
				pit[0].src = "./images/down.png";
				flag2 = false;
			} else {
				flag1 = false;
			}
			if(!flag2) {
				jjs[0].style.height = "220px";
				q[1].style.display = "block";
				q[0].style.display = "none";
				pit[1].src = "./images/up.png";
				pit[0].src = "./images/down.png";
				flag2 = true;
			} else {
				jjs[0].style.height = "180px";
				q[1].style.display = "none";
				pit[1].src = "./images/down.png";
				flag2 = false;
			}
		}
		function f_2_1() {
			if(q[3].style.display == "block") {
				pit[2].src = "./images/down.png";
				flag3 = false;
			} else {
				flag4 = false;
			}
			if(!flag3) {
				jjs[1].style.height = "280px";
				q[2].style.display = "block";
				q[3].style.display = "none";
				pit[2].src = "./images/up.png";
				pit[3].src = "./images/down.png";
				flag3 = true;
			} else {
				jjs[1].style.height = "180px";
				q[2].style.display = "none";
				pit[2].src = "./images/down.png";
				flag3 = false;
			}
		}
		function f_2_2() {
			if(q[2].style.display == "block") {
				pit[2].src = "./images/down.png";
				flag4 = false;
			} else {
				flag3 = false;
			}
			if(!flag4) {
				jjs[1].style.height = "220px";
				q[3].style.display = "block";
				q[2].style.display = "none";
				pit[3].src = "./images/up.png";
				pit[2].src = "./images/down.png";
				flag4 = true;
			} else {
				jjs[1].style.height = "180px";
				q[3].style.display = "none";
				pit[3].src = "./images/down.png";
				flag4 = false;
			}
		}
		function f_3_1() {
			if(q[5].style.display == "block" || q[6].style.display == "block") {
				pit[4].src = "./images/down.png";
				flag5 = false;
			} else {
				flag6 = false;
				flag7 = false;
			}
			if(!flag5) {
				jjs[2].style.height = "350px";
				q[4].style.display = "block";
				q[5].style.display = "none";
				q[6].style.display = "none";
				pit[4].src = "./images/up.png";
				pit[5].src = "./images/down.png";
				pit[6].src = "./images/down.png";
				flag5 = true;
			} else {
				jjs[2].style.height = "280px";
				q[4].style.display = "none";
				pit[4].src = "./images/down.png";
				flag5 = false;
			}
		}
		function f_3_2() {
			if(q[4].style.display == "block" || q[6].style.display == "block") {
				pit[5].src = "./images/down.png";
				flag6 = false;
			} else {
				flag5 = false;
				flag7 = false;
			}
			if(!flag6) {
				jjs[2].style.height = "350px";
				q[5].style.display = "block";
				q[4].style.display = "none";
				q[6].style.display = "none";
				pit[5].src = "./images/up.png";
				pit[4].src = "./images/down.png";
				pit[6].src = "./images/down.png";
				flag6 = true;
			} else {
				jjs[2].style.height = "280px";
				q[5].style.display = "none";
				pit[5].src = "./images/down.png";
				flag6 = false;
			}
		}
		function f_3_3() {
			if(q[4].style.display == "block" || q[5].style.display == "block") {
				pit[6].src = "./images/down.png";
				flag7 = false;
			} else {
				flag5 = false;
				flag6 = false;
			}
			if(!flag7) {
				jjs[2].style.height = "350px";
				q[6].style.display = "block";
				q[4].style.display = "none";
				q[5].style.display = "none";
				pit[6].src = "./images/up.png";
				pit[4].src = "./images/down.png";
				pit[5].src = "./images/down.png";
				flag7 = true;
			} else {
				jjs[2].style.height = "280px";
				q[6].style.display = "none";
				pit[6].src = "./images/down.png";
				flag7 = false;
			}
		}
		function f_4_1() {
			if(q[8].style.display == "block" || q[9].style.display == "block") {
				pit[7].src = "./images/down.png";
				flag8 = false;
			} else {
				flag9 = false;
				flag10 = false;
			}
			if(!flag8) {
				jjs[3].style.height = "350px";
				q[7].style.display = "block";
				q[8].style.display = "none";
				q[9].style.display = "none";
				pit[7].src = "./images/up.png";
				pit[8].src = "./images/down.png";
				pit[9].src = "./images/down.png";
				flag8 = true;
			} else {
				jjs[3].style.height = "280px";
				q[7].style.display = "none";
				pit[7].src = "./images/down.png";
				flag8 = false;
			}
		}
		function f_4_2() {
			if(q[7].style.display == "block" || q[9].style.display == "block") {
				pit[8].src = "./images/down.png";
				flag9 = false;
			} else {
				flag8 = false;
				flag10 = false;
			}
			if(!flag9) {
				jjs[3].style.height = "350px";
				q[8].style.display = "block";
				q[7].style.display = "none";
				q[9].style.display = "none";
				pit[8].src = "./images/up.png";
				pit[7].src = "./images/down.png";
				pit[9].src = "./images/down.png";
				flag9 = true;
			} else {
				jjs[3].style.height = "280px";
				q[8].style.display = "none";
				pit[8].src = "./images/down.png";
				flag9 = false;
			}
		}
		function f_4_3() {
			if(q[7].style.display == "block" || q[8].style.display == "block") {
				pit[9].src = "./images/down.png";
				flag10 = false;
			} else {
				flag8 = false;
				flag9 = false;
			}
			if(!flag10) {
				jjs[3].style.height = "350px";
				q[9].style.display = "block";
				q[7].style.display = "none";
				q[8].style.display = "none";
				pit[9].src = "./images/up.png";
				pit[7].src = "./images/down.png";
				pit[8].src = "./images/down.png";
				flag10 = true;
			} else {
				jjs[3].style.height = "280px";
				q[9].style.display = "none";
				pit[9].src = "./images/down.png";
				flag10 = false;
			}
		}
		function f_5_1() {
			if(q[11].style.display == "block" || q[12].style.display == "block") {
				pit[10].src = "./images/down.png";
				flag11 = false;
			} else {
				flag12 = false;
				flag13 = false;
			}
			if(!flag11) {
				jjs[4].style.height = "350px";
				q[10].style.display = "block";
				q[11].style.display = "none";
				q[12].style.display = "none";
				pit[10].src = "./images/up.png";
				pit[11].src = "./images/down.png";
				pit[12].src = "./images/down.png";
				flag11 = true;
			} else {
				jjs[4].style.height = "280px";
				q[10].style.display = "none";
				pit[10].src = "./images/down.png";
				flag11 = false;
			}
		}
		function f_5_2() {
			if(q[10].style.display == "block" || q[12].style.display == "block") {
				pit[11].src = "./images/down.png";
				flag12 = false;
			} else {
				flag11 = false;
				flag13 = false;
			}
			if(!flag12) {
				jjs[4].style.height = "350px";
				q[11].style.display = "block";
				q[10].style.display = "none";
				q[12].style.display = "none";
				pit[11].src = "./images/up.png";
				pit[10].src = "./images/down.png";
				pit[12].src = "./images/down.png";
				flag12 = true;
			} else {
				jjs[4].style.height = "280px";
				q[11].style.display = "none";
				pit[11].src = "./images/down.png";
				flag12 = false;
			}
		}
		function f_5_3() {
			if(q[10].style.display == "block" || q[11].style.display == "block") {
				pit[12].src = "./images/down.png";
				flag13 = false;
			} else {
				flag11 = false;
				flag12 = false;
			}
			if(!flag13) {
				jjs[4].style.height = "350px";
				q[12].style.display = "block";
				q[10].style.display = "none";
				q[11].style.display = "none";
				pit[12].src = "./images/up.png";
				pit[10].src = "./images/down.png";
				pit[11].src = "./images/down.png";
				flag13 = true;
			} else {
				jjs[4].style.height = "280px";
				q[12].style.display = "none";
				pit[12].src = "./images/down.png";
				flag13 = false;
			}
		}
		function f_6_1() {
			if(q[14].style.display == "block" || q[15].style.display == "block") {
				pit[13].src = "./images/down.png";
				flag14 = false;
			} else {
				flag15 = false;
				flag16 = false;
			}
			if(!flag14) {
				jjs[5].style.height = "660px";
				q[13].style.display = "block";
				q[14].style.display = "none";
				q[15].style.display = "none";
				pit[13].src = "./images/up.png";
				pit[14].src = "./images/down.png";
				pit[15].src = "./images/down.png";
				flag14 = true;
			} else {
				jjs[5].style.height = "280px";
				q[13].style.display = "none";
				pit[13].src = "./images/down.png";
				flag14 = false;
			}
		}
		function f_6_2() {
			if(q[13].style.display == "block" || q[15].style.display == "block") {
				pit[14].src = "./images/down.png";
				flag15 = false;
			} else {
				flag14 = false;
				flag16 = false;
			}
			if(!flag15) {
				jjs[5].style.height = "480px";
				q[14].style.display = "block";
				q[13].style.display = "none";
				q[15].style.display = "none";
				pit[14].src = "./images/up.png";
				pit[13].src = "./images/down.png";
				pit[15].src = "./images/down.png";
				flag15 = true;
			} else {
				jjs[5].style.height = "280px";
				q[14].style.display = "none";
				pit[14].src = "./images/down.png";
				flag15 = false;
			}
		}
		function f_6_3() {
			if(q[13].style.display == "block" || q[14].style.display == "block") {
				pit[15].src = "./images/down.png";
				flag16 = false;
			} else {
				flag14 = false;
				flag15 = false;
			}
			if(!flag16) {
				jjs[5].style.height = "350px";
				q[15].style.display = "block";
				q[13].style.display = "none";
				q[14].style.display = "none";
				pit[15].src = "./images/up.png";
				pit[13].src = "./images/down.png";
				pit[14].src = "./images/down.png";
				flag16 = true;
			} else {
				jjs[5].style.height = "280px";
				q[15].style.display = "none";
				pit[15].src = "./images/down.png";
				flag16 = false;
			}
		}
		window.onscroll = function() {
			if(document.documentElement.scrollTop >= 220) {
				fix.style.position = "static";
				nav.style.position = "fixed";
				nav.style.paddingLeft = "445px";
				lis[0].style.fontSize = "16pt";
				lis[0].style.fontWeight = 900;
				lis[1].style.fontSize = "11pt";
				lis[1].style.fontWeight = 300;
			}
			if(document.documentElement.scrollTop >= 1452) {
				lis[0].style.fontSize = "11pt";
				lis[0].style.fontWeight = 300;
				lis[1].style.fontSize = "16pt";
				lis[1].style.fontWeight = 900;
				lis[2].style.fontSize = "11pt";
				lis[2].style.fontWeight = 300;
			}
			if(document.documentElement.scrollTop >= 2552) {
				lis[1].style.fontSize = "11pt";
				lis[1].style.fontWeight = 300;
				lis[2].style.fontSize = "16pt";
				lis[2].style.fontWeight = 900;
				lis[3].style.fontSize = "11pt";
				lis[3].style.fontWeight = 300;
			}
			if(document.documentElement.scrollTop >= 4045) {
				lis[2].style.fontSize = "11pt";
				lis[2].style.fontWeight = 300;
				lis[3].style.fontSize = "16pt";
				lis[3].style.fontWeight = 900;
				lis[4].style.fontSize = "11pt";
				lis[4].style.fontWeight = 300;
			}
			if(document.documentElement.scrollTop >= 5174) {
				lis[3].style.fontSize = "11pt";
				lis[3].style.fontWeight = 300;
				lis[4].style.fontSize = "16pt";
				lis[4].style.fontWeight = 900;
				lis[5].style.fontSize = "11pt";
				lis[5].style.fontWeight = 300;
			}
			if(document.documentElement.scrollTop >= 6446) {
				lis[4].style.fontSize = "11pt";
				lis[4].style.fontWeight = 300;
				lis[5].style.fontSize = "16pt";
				lis[5].style.fontWeight = 900;
			}
			if(document.documentElement.scrollTop >= 8309) {
				lis[5].style.fontSize = "11pt";
				lis[5].style.fontWeight = 300;
			}
			if(document.documentElement.scrollTop < 220) {
				fix.style.position = "relative";
				nav.style.position = "absolute";
				nav.style.paddingLeft = "95px";
				lis[0].style.fontSize = "11pt";
				lis[0].style.fontWeight = 300;
			}
		}
	</script>
</body>
</html>
<%@ include file="footer.jsp" %>