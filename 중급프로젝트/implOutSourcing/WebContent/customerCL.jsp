<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 고객센터</title>
<style>
   .ba {
   	background-color: #F5F5F5;
   	height: relative;
   	padding-top: 50px;
   	padding-left: 350px;
   	font-size: 17pt;
   	padding-bottom:50px;
   }
   i {
   	font-style: normal;
   	font-size: 10pt;
   }
   .box {
      box-shadow: 2px 3px 5px 5px rgb(232,232,232);
      border-radius: 1%;
      width: 1100px; 
      background-color: white;
      height: relative;
      font-size: 15pt;
      margin-left: 0px;
      padding-bottom:20px;
   }
   .tableTd {
   	  padding-right: 30px;
   	  border-bottom: 1px solid grey; 
      line-height: 50px;
      cursor: pointer;
   }
</style>
</head>
<body>
	<div class="ba">
		<div style="font-size: 22pt; font-weight: 600; display: inline-block;">
			안녕하세요!<br><br>
			무엇을 도와드릴까요?<br>
			<br><br><br><br>
		</div>
		<div style="margin-left: 250px; display: inline-block;">
			<img src="./images/customer.png">
		</div>
		<div class="box">
			<div id="nav" style="padding-left: 140px; padding-top: 20px; float: left; cursor: pointer; font-weight: 900;" onclick="f_client()">
				클라이언트 고객센터
			</div>
			<div id="nav" style="padding-left: 180px; padding-top: 20px; float: left; cursor: pointer;" onclick="f_partners()">
				파트너스 고객센터
			</div> 	
			<div id="nav" style="padding-left: 195px; padding-top: 20px; float: left; cursor: pointer;" onclick="f_qna()">
				1:1 문의
			</div>
			<div style="border-bottom: 1px solid grey; height: 70px;"></div>
			<div style="padding-left: 50px; padding-top: 50px;">
				클라이언트가 자주 묻는 질문 TOP 10<br><br>
				<table style="font-size: 15pt; padding-left: 30px;">
					<tr>
						<td class="tableTd">1</td>
						<td class="tableTd">서비스 이용 절차를 알려주세요.</td>
					</tr>
					<tr>
						<td class="tableTd">2</td>
						<td class="tableTd">프로젝트를 의뢰하려면 클라이언트/파트너 중 어떤 유형으로 가입해야 하나요?</td>
					</tr>
					<tr>
						<td class="tableTd">3</td>
						<td class="tableTd">의뢰하려는 프로젝트의 견적이 궁금합니다.</td>
					</tr>
					<tr>
						<td class="tableTd">4</td>
						<td class="tableTd">프로젝트 내용이 외부로 유출되면 안 되는 경우에는 어떻게 하나요?</td>
					</tr>
					<tr>
						<td class="tableTd">5</td>
						<td class="tableTd">위시켓에서 정부지원사업도 진행이 가능한가요?</td>
					</tr>
					<tr>
						<td class="tableTd">6</td>
						<td class="tableTd">프로젝트의 예상 기간, 지출 가능 예산을 작성하기 어렵습니다.</td>
					</tr>
					<tr>
						<td class="tableTd">7</td>
						<td class="tableTd">에스크로 방식의 대금보호시스템이 무엇인가요?</td>
					</tr>
					<tr>
						<td class="tableTd">8</td>
						<td class="tableTd">계약 절차를 알려주세요.</td>
					</tr>
					<tr>
						<td class="tableTd">9</td>
						<td class="tableTd">세금계산서 발행은 누가 해주나요?	</td>
					</tr>
					<tr>
						<td class="tableTd" style="border-bottom: 0px;">10</td>
						<td class="tableTd" style="border-bottom: 0px;">파트너에게 대금을 지급하는 절차가 어떻게 되나요?</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
<script>
	var navs = document.querySelectorAll("#nav");
	var trs = document.querySelectorAll("tr");
	
	for (let i=0; i<trs.length; i++) {
        trs[i].onmouseover = function() { // 마우스오버
            trs[i].style.backgroundColor = "#FAFAFA";
        }
        trs[i].onmouseout = function() { // 마우스 아웃
            trs[i].style.backgroundColor = "white";
        }
    }
	
	function f_client() {
		location.href = "customerCL.jsp";
	}
	function f_partners() {
		location.href = "customerPART.jsp";
	}
	function f_qna() {
		location.href = "qna.jsp";
	}
</script>
</body>
</html>
<%@ include file="./footer.jsp" %>