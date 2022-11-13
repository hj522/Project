<%@page import="inquery.vo.InqueryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%
	String loginIdC = (String) session.getAttribute("loginIdC");
	ClientVO vo = (ClientVO) session.getAttribute("cInfo");
	List<ClientVO> clList = (List<ClientVO>) request.getAttribute("clList");
	List<InqueryVO> inList = (List<InqueryVO>) request.getAttribute("inList");
%>
<meta charset="UTF-8" name="viewport"
   content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>마이페이지</title>
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

.bbbb {
   margin-left: 530px;
   width: 100px;
   height: 50px;
   font-size: 11pt;
   text-align: center;
   background-color: #2099BB;
   color: white;
   border: 0px;
   border-radius: 3%;
   cursor: pointer;
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
                  <div class="userName">&nbsp;<%= cvo.getClNm() %></div>
                  <div class="userEmail">&nbsp;<%= cvo.getClEm() %></div>
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
                     <a href="./inspectionCl.do?clId=<%=loginIdC %>" class="w3-bar-item w3-button">검수 중</a>
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
            클라이언트 정보
            <div style="font-size: 13pt; padding-top: 10px;">
               <b>클라이언트 정보를 수정할 수 있습니다.</b><br>
            </div>
         </div>
         <hr>
         <div>
            <div class="introduction"
               style="padding-left: 30px; padding-top: 30px;">
               <div style="font-size: 16pt; padding-bottom: 20px;">클라이언트 소개
               </div>
               <div>
                  <div
                     style="font-size: 13pt; padding-left: 160px; padding-bottom: 20px;">
                        <%= vo.getClInt() %>
                     </div>
               </div>
               <div>
                  <div style="font-size: 16pt; padding-bottom: 20px;">클라이언트 정보</div>
                  <div
                     style="font-size: 13pt; padding-left: 140px; padding-bottom: 20px;">
                     <div style="padding-bottom: 8px;">
                        <div
                           style="float: left; text-align: right; padding-right: 30px; width: 170px;">클라이언트
                           형태</div>
                        <div><%= vo.getClTy() %></div>
                     </div>
                     <div style="padding-bottom: 8px;">
                        <div
                           style="float: left; text-align: right; padding-right: 30px; width: 170px;">이름</div>
                        <div><%= vo.getClNm() %></div>
                     </div>
                     <div style="padding-bottom: 8px;">
                        <div
                           style="float: left; text-align: right; padding-right: 30px; width: 170px;">생년월일</div>
                        <div><%= vo.getClBir()  %></div>
                     </div>
                     <div style="padding-bottom: 8px;">
                        <div
                           style="float: left; text-align: right; padding-right: 30px; width: 170px;">주소</div>
                        <div style=" padding-left: 170px; padding-right: 20px;"><%= vo.getClAddr() %></div>
                     </div>
                     <div style="padding-bottom: 8px;">
                        <div
                           style="float: left; text-align: right; padding-right: 30px; width: 170px;">이메일</div>
                        <div><%= vo.getClEm() %></div>
                     </div>
                  </div>
               </div>
               <div>
                  <div style="font-size: 16pt; padding-bottom: 20px;">연락처 정보</div>
                  <div
                     style="font-size: 13pt; padding-left: 140px; padding-bottom: 20px;">
                     <div style="padding-bottom: 8px;">
                        <div
                           style="float: left; text-align: right; padding-right: 30px; width: 170px;">핸드폰
                           번호</div>
                        <div><%= vo.getClPh() %></div>
                     </div>
                     <div style="padding-bottom: 8px;">
                        <div
                           style="float: left; text-align: right; padding-right: 30px; width: 170px;">전화
                           번호</div>
                        <div><%= vo.getClHom() %></div>
                     </div>
                     <div style="padding-bottom: 8px;">
                        <div
                           style="float: left; text-align: right; padding-right: 30px; width: 170px;">팩스
                           번호</div>
                        <div><%= vo.getClFax() %></div>
                     </div>
                  </div>
               </div>
               <button class="bbbb">수정</button>
            </div>
         </div>
      </div>
   </form>
   <script>
      function f_showImage() {
         window.open("managerMemDetail.jsp", "tab",
               "left=500, top=500, width=550, height=550");
      }
   </script>
</body>
</html>
<%@ include file="footer.jsp"%>