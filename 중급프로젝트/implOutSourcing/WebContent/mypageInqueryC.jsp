<%@page import="reply.vo.ReplyVO"%>
<%@page import="java.util.List"%>
<%@page import="inquery.vo.InqueryVO" %>
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
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<%
	List<ClientVO> clList = (List<ClientVO>) request.getAttribute("clList");
	List<InqueryVO> inList = (List<InqueryVO>)request.getAttribute("inList");
	ClientVO vo = (ClientVO) session.getAttribute("cInfo");
	String loginIdC = (String) session.getAttribute("loginIdC");
	String msg = session.getAttribute("msg") == null ? "" : (String)session.getAttribute("msg");
	session.removeAttribute("msg");
	ReplyVO rv = (ReplyVO)request.getAttribute("rv");
%>
<title>클라이언트 나의 문의 내역</title>
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
		left: 30px;
		top: 330px;
		width: 710px;
		height: 200px;
		background-color: white;
	}
	
	.summaryContainer {
		display: inline-block;
		left: 15px;
		top: 40px;
		width: 680px;
		height: relative;
		background-color: white;
		font-size: 13px;
	}
	
	.summaryTable {
		display: inline-block;
		border: 1px solid #dedede;
		border-radius: 1%;
		left: 15px;
		top: 190px;
		width: 670px;
		height: relative;
		border-collapse: collapse;
		display: table;
		border-color: grey;
		font-size: 13px;
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
	
	.cardLeft {
		width: 70%;
		height: 100%;
		float: left;
	}
	
	.cardRight {
		top: 100px;
		left: 400px;
		width: 30%;
		height: 100%;
		float: right;
		left: 400px;
	}
	
	a{
		text-decoration: none;
		color:black;
		cursor:pointer;
	}
	
	.bt {
		background: linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
		background-color: #599bb3;
		border-radius: 6px;
		display: inline-block;
		cursor: pointer;
		color: #ffffff;
		font-size: 18px;
		padding: 7px 7px;
		text-decoration: none;
	}
	
	.bt:hover {
		background: linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
		background-color: #408c99;
	}
	
	.bt:active {
		position: relative;
		top: 1px;
	}

</style>
</head>
<body>
   <form action="clmodifyinfo.do" method="get">
   <input type="hidden" value="<%= vo.getClId() %>">
		<div class="page">
			<div class="sidebarBox">
				<div class="userNameHead">
					<h4 class="userNameTagHead" style="padding-left: 20px">클라이언트</h4>
					<hr>
					<div class="userNameBody">
						<div class="imageBox">
							<img alt="image" class="img" src="./images/who.png"
								onclick="f_showImage()">
						</div>
						<div class="userName">&nbsp;<%=cvo.getClNm()%></div>
						<div class="userEmail">&nbsp;<%=cvo.getClEm()%></div>
					</div>
				</div>
			</div>
			<div class="sideUnderBox">
				<div class="w3-sidebar w3-bar-block w3-light-grey w3-card"
					style="width: 13%; height: 33%;">
					<a href="./mypageC.jsp" class="w3-bar-item w3-button">회원 정보</a>
					<a href="./mypageInqueryC.do" class="w3-bar-item w3-button">문의 내역</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							검수<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="./inspection.jsp" class="w3-bar-item w3-button">검수 중</a>
							<a href="./temporaryStorage.jsp" class="w3-bar-item w3-button">임시
								저장</a> <a href="./registrationFailed.jsp"
								class="w3-bar-item w3-button">등록 실패</a>
						</div>
					</div>
					<a href="./recruitmentApplicants.jsp" class="w3-bar-item w3-button">지원자
						모집 중</a> <a href="./projectInProgress.jsp"
						class="w3-bar-item w3-button">진행중인 프로젝트</a>
					<div class="w3-dropdown-hover">
						<button class="w3-button">
							종료된 프로젝트<i class="fa fa-caret-down"></i>
						</button>
						<div class="w3-dropdown-content w3-bar-block">
							<a href="./waitingForEvaluation.jsp"
								class="w3-bar-item w3-button">평가 대기 중</a> <a
								href="./completeProject.jsp" class="w3-bar-item w3-button">완료한
								프로젝트</a> <a href="./canceledProject.jsp"
								class="w3-bar-item w3-button">취소한 프로젝트</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="box">
		<div
			style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
			나의 1:1 문의
			<div style="font-size: 13pt; padding-top: 10px;">
				<b>내가 작성한 1:1 문의 내역을 확인할 수 있습니다.</b><br>
			</div>
		</div>
		<hr>
    <div>
     <table class="table table-bordered table-hover" style="margin:auto; font-size:17px; width:90%; text-align:center;">
         <thead class="thead">
              <tr>
                 <th scope="col" style="width:10%; text-align:center;" class="table-dark">번호</th>
                 <th scope="col" style="width:60%; text-align:center;" class="table-dark">제목</th>
                 <th scope="col" style="width:20%; text-align:center;" class="table-dark">작성일</th>
              </tr>
           </thead>
<%
 int inSize = inList.size();
 if(inSize > 0) {
	 for(int i=0; i<inSize; i++) {
%>
           <tbody>
              <tr>
                 <td class="td" style="text-align:center;"><%=inList.get(i).getInNum()%></td>
                 <td class="td" style="text-align:center;"><a href="inqDetailMemC.do?inNum=<%=inList.get(i).getInNum()%>"><%=inList.get(i).getInTit() %> </a></td>
                 <td class="td" style="text-align:center;"><%=inList.get(i).getInCrDt()%></td>
<%
    }
 } else {
%>
	</tr>
   <tr>
      <td colspan="5">회원 정보가 없습니다.</td>
   </tr>
<%
 }
%>
           </tbody>
           </table>
           </div>
           </div>
	</form>
</body>
</html>
<%@ include file="footer.jsp"%>
