<%@page import="java.util.List"%>
<%@page import="partners.vo.PartnersVO"%>
<%@page import="client.vo.ClientVO"%>
<%@page import="inquery.vo.InqueryVO"%>
<%@page import="reply.vo.ReplyVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ReplyVO rvo = (ReplyVO)request.getAttribute("rvo");
	InqueryVO iv = (InqueryVO) request.getAttribute("iv");
	String manaId = (String)session.getAttribute("loginId");
%>
<%@ include file="./managerHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>문의 게시글 상세 내용 조회</title>
</head>
<style>
	.bg {
		background-color: #efefef;
		height: 1600px;
		padding-left: 360px;
		padding-top: 150px;
	}
	
	.frame {
		box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
		width: 1000px;
		height: 700px;
		font-size: 16pt;
		background-color: white;
		border-radius: 1%;
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
	
	.rp {
		border:2px solid #408c99;
		border-radius: 5px;
		width:850px;
		height:150px;" 
	}
	

</style>
<body>
  <!--  <p><%=rvo%></p>
    <p><%=iv %></p>
    <p><%=manaId%></p> -->
	<div class="bg">
		<div style="padding-left: 400px; font-size: 22pt; font-weight: bold;">
			1:1 문의 관리<br>
			<br>
			<br>
		</div>
		<div class="frame">
			<div>
				<div style="padding: 100px;">
					<table class="table table-bordered" style="border-radius:10px;">
						<tr>
							<th scope="col" class="table-light" style="width: 20%; text-align:center;">문의번호
							</th>
							<td style="width:30%"><%=iv.getInNum()%></td>
							<th scope="col" class="table-light" style="width: 20%; text-align:center;">작성일
							</th>
							<td><%=iv.getInCrDt()%></td>
						</tr>
						<tr>
							<th scope="col" class="table-light" style="width: 20%; text-align:center;">ID
							</th>
<%
	if (iv.getPartId() == null) {
%>
							<td colspan="4"><%=iv.getClId()%></td>
<%
	} else {
%>
							<td colspan="4"><%=iv.getPartId()%></td>
<%
	}
%>
						</tr>
						<tr>
							<th scope="col" class="table-light" style="width: 20%; text-align:center;">제목
							</th>
							<td colspan="4"><%=iv.getInTit()%></td>
						</tr>
						<tr>
							<th scope="col" class="table-light" style="width: 20%; text-align:center; vertical-align:middle">문의내용
							</th>
							<td colspan="4" style="height: 350px; vertical-align:middle"><%=iv.getInCon()%></td>
						</tr>
					</table>
				</div>
			</div>
			<div>
			<% if(rvo == null){ %>
				<form id="hjForm" method="get">
				<input id="innum" type="hidden" value="<%=iv.getInNum()%>" name="inNum">
				<div id="rpl" class="frame" style="padding-left: 80px; padding-top: 45px; height: 300px;">
					<div>
						답글
					</div>
					<textarea id="content" cols="75" rows="5" style="border: 1px solid black;" name="repCon"></textarea><br>
					<input id="manaId" type="hidden" name="manaId" value="<%=manaId%>">
					
					<input type="submit" value="등록" class="bt" style="display:inline-block; margin:center;">
				</div>
				</form>
			<%}else {%>
				<div id="rpl" class="frame" style="padding-left: 80px; padding-top: 45px; height: 300px;">
					<div style="padding-bottom:10px;">
						<strong>관리자 답변</strong>
					</div>
					<div class="rp" style="padding: 10px;"><%=rvo.getRepCon()%></div>
					<a href="./updateRep.do" class="bt" style="margin-top:10px;">답글 수정</a>
					<a href="./ManagerRepDelete.do?repNum=<%=rvo.getRepNum()%>" class="bt" style="margin-top:10px;">답글 삭제</a>				
				</div>
			<%} %>	
				<div>
					<a href="./managerInqList.do" class="bt"
							style="float: right; margin-right: 10px; margin-top: 15px;">글 목록</a>
					<a href="./inqDelete.do?inNum=<%=iv.getInNum()%>" class="bt"
							style="float: right; margin-right: 10px; margin-top: 15px;">글 삭제</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		var v_rpl = document.querySelector("#rpl");
		var bts = document.querySelector("#btr");
		function f_rck() {
			v_rpl.style.display = "block";
		}
		var num = document.querySelector("#innum");
		var content = document.querySelector("#content");
		var manaId = document.querySelector("#manaId");
	</script>
	<script>
	//submit버튼에는 클릭이벤트를 주지 않아용! - 주지 않아도 원래 클릭하면 전송하는 기능이 담겨있어요
	//form으로 하지 않을 거면, ajax를 일반버튼으로 하는 것이 좋음
	
	$("#hjForm").submit(function() {
		event.preventDefault();
		let innum = num.value;
		let con = content.value;
		let id = manaId.value;
		console.log("innum:", innum);
		console.log("con:", con);
		console.log("id:", id);
		$.ajax({
	         url : "<%=request.getContextPath()%>/insertReply.do",
	         type : "get",
	         data : {"innum": innum, "con":con, "id":id},
	         dataType : "text",
	         success : function(result) {
		          console.log(result);
		          if(result == "success"){
		        	  alert("답변이 등록되었습니다.")
		        	  location.href = location.href; // 페이지 이동이 없었기 때문에 그냥 다시 로딩
		          } else {
		        	  alert("답변 등록 실패");
		          }
		     },
	         error : function(request, status, error) {
	            console.log("code: " + request.status)
	            console.log("message: " + request.responseText)
	            console.log("error: " + error);
	         }
	      });
	});
	</script>
</body>
</html>
<%@ include file="footer.jsp"%>