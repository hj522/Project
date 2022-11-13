<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파트너스 고객센터</title>
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
			<div id="nav" style="padding-left: 140px; padding-top: 20px; float: left; cursor: pointer;" onclick="f_client()">
				클라이언트 고객센터
			</div>
			<div id="nav" style="padding-left: 180px; padding-top: 20px; float: left; cursor: pointer; font-weight: 900;" onclick="f_partners()">
				파트너스 고객센터
			</div> 	
			<div id="nav" style="padding-left: 195px; padding-top: 20px; float: left; cursor: pointer;" onclick="f_qna()">
				1:1 문의
			</div>
			<div style="border-bottom: 1px solid grey; height: 70px;"></div>
			<div style="padding-left: 50px; padding-top: 50px;">
				파트너가 자주 묻는 질문 TOP 10<br><br>
				<table style="font-size: 15pt; padding-left: 30px;">
					<tr>
						<td class="tableTd">1</td>
						<td class="tableTd">프로젝트에 지원하려면 어떻게 해야 하나요?</td>
					</tr>
					<tr>
						<td class="tableTd">2</td>
						<td class="tableTd">사업자가 아닌 개인도 프로젝트에 지원할 수 있나요?</td>
					</tr>
					<tr>
						<td class="tableTd">3</td>
						<td class="tableTd">클라이언트가 미팅할 파트너를 선정하는 기준이 무엇인가요?</td>
					</tr>
					<tr>
						<td class="tableTd">4</td>
						<td class="tableTd">지원할 때 제안한 금액, 기간 그대로 계약되는 건가요?</td>
					</tr>
					<tr>
						<td class="tableTd">5</td>
						<td class="tableTd">지원한 프로젝트가 모집 마감이 되었는데 아무런 연락이 없어요.</td>
					</tr>
					<tr>
						<td class="tableTd">6</td>
						<td class="tableTd">선급금(착수금) 형태로도 진행할 수 있나요?</td>
					</tr>
					<tr>
						<td class="tableTd">7</td>
						<td class="tableTd">대금 지급은 언제, 어떻게 이루어지나요?</td>
					</tr>
					<tr>
						<td class="tableTd">8</td>
						<td class="tableTd">지급 금액은 어떻게 계산되는 건가요?</td>
					</tr>
					<tr>
						<td class="tableTd">9</td>
						<td class="tableTd">프로젝트 완료 후 대금 지급을 받으려면 어떻게 해야 하나요?</td>
					</tr>
					<tr>
						<td class="tableTd" style="border-bottom: 0px;">10</td>
						<td class="tableTd" style="border-bottom: 0px;">프로젝트 진행 도중 분쟁이 생기면 어떻게 해야 하나요?</td>
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