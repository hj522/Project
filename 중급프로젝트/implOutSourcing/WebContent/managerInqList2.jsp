<%@page import="reply.vo.ReplyVO"%>
<%@page import="java.util.List"%>
<%@page import="inquery.vo.InqueryVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="./managerHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<%
   List<InqueryVO> inList = (List<InqueryVO>)request.getAttribute("inList");
   List<ReplyVO> reList = (List<ReplyVO>)request.getAttribute("reList");
   String msg = session.getAttribute("msg") == null ? "" : (String)session.getAttribute("msg");
   session.removeAttribute("msg");
%>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>1:1문의 관리 페이지</title>
<style>
   .bg {
      background-color: #efefef;
      height: 1600px;
      padding-left:360px;
      padding-top: 150px;
   }
   
   .bt {
      background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
      background-color:#599bb3;
      border-radius:6px;
      display:inline-block;
      cursor:pointer;
      color:#ffffff;
      font-size: 18px;
      padding:7px 7px;
      text-decoration:none;
   }
   
   .bt:hover {
      background:linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
      background-color:#408c99;
   }
   
   .bt:active {
      position:relative;
      top:1px;
   }

   .btn {
      background-color:#c2c2c2;
      border-radius:1px;
      display:inline-block;
      cursor:pointer;
      color:#000000;
      font-size:19px;
      padding:14px 57px;
      text-decoration: none;
      font-weight:bold;
   }
   
   .btn:hover {
      background-color:#c2c2c2;
   }
   
   .btn:active {
      position:relative;
      top:1px;
   }
   
   .btn2 {
      background-color:#efefef;
      border-radius:1px;
      display:inline-block;
      cursor:pointer;
      color:#000000;
      font-size:19px;
      padding:14px 57px;
      text-decoration: none;
      font-weight:bold;
   }
   
   .btn2:hover {
      background-color:#c2c2c2;
   }
   
   .btn2:active {
      position:relative;
      top:1px;
   }
   

   .tbl {
     border: 1px #2E6BAA solid;
     font-size: 1.2em;
     box-shadow: 0 2px 5px rgba(0,0,0,.25);
     width: 66%;
     border-collapse: collapse;
     border-radius: 5px;
     overflow: hidden;
     font-align: center;
   }
   
   .th {
     text-align: left;
     padding: .5em .5em;
     font-align: center;
     vertical-align: middle;
   }
     
   .thead {
     font-weight: bold;
     font-align: center;
     color: #fff;
     background: #24A6BD;
   }
     
    .td {
     border-bottom: 1px solid rgba(0,0,0,.1);
     background: #fff;
     padding: 1em .5em;
     font-align: center;
     vertical-align: middle;
   }
   
   a {
     text-decoration:none;
     color:black;
   }
 
  
</style>
</head>
<body>
      <div class="bg">
      <div style="padding-left: 380px;font-size: 22pt; font-weight: bold;">
      1:1 문의 관리<br><br><br>
      </div>
         <a href="./managerInqList.do" class="btn2" style="padding-left:205px; padding-right:205px;">1:1 문의</a>
         <a href="./managerInqList2.do" class="btn" style="padding-left:207px; padding-right:205px;">답변 완료</a>
      <div>
      <table class="tbl">
          <thead class="thead">
               <tr>
                  <th class="th">선택</th>
                  <th class="th">번호</th>
                  <th class="th">제목</th>
                   <th class="th">ID</th>
                  <th class="th">작성일</th>
               </tr>
            </thead>
<%
 int inSize = inList.size();
 
 if(inSize > 0) {
    for(int i=0; i<inSize; i++) {
%>
            <tbody>
               <tr>
                  <td class="td"><input type='checkbox' id="ckb" name="ckbox" value=<%=inList.get(i).getInNum()%> ></td>
                  <td class="td"><%=inList.get(i).getInNum() %></td>
                  <td class="td"><a href="inqDetail.do?inNum=<%=inList.get(i).getInNum()%>"><%=inList.get(i).getInTit() %> </a></td>
               
<%
if(inList.get(i).getPartId()==null){
%>
                  <td class="td"><%=inList.get(i).getClId()%></td>
<%
} else {
%> 
                  <td class="td"><%=inList.get(i).getPartId()%></td>
<%   
}
%>
                  <td class="td"><%=inList.get(i).getInCrDt()%></td>
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
            <div>
            <a href="#" class="bt" style="margin-right:100px; margin-top:15px;" onclick="f_selectDel()">삭제</a>
            </div>
            </div>
            </div>
</body>
<script>
   
//   var ckBtn = document.querySelector("#ckb");
   
   // 체크박스 선택 후 삭제 버튼 클릭 시 
   function f_selectDel() {
      let checkArr = [];
      let queryString="";
      $("input[name='ckbox']:checked").val((p_index, p_value)=>{
         queryString += "inNum="+ p_value + "&";
      });

      $.ajax({
         type: "get",
         url: "<%=request.getContextPath()%>/inqDeleteCk.do",
         data: queryString,
         dataType: "text",
         success: function(result){
            if(result == "OK") {
            location.href= "<%=request.getContextPath()%>/managerInqList.do";            
               alert("삭제 성공");
            }
         },
         error : function(request, status, error) {
            console.log("code: " + request.status)
            console.log("message: " + request.responseText)
            console.log("error: " + error);
         }  
      });
   }
      
</script>
</html>
<%@ include file="footer.jsp" %>