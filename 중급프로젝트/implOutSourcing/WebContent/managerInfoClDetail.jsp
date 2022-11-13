<%@page import="java.util.List"%>
<%@page import="client.vo.ClientVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ClientVO cv = (ClientVO)request.getAttribute("cv");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 상세 정보 조회</title>
<style>

	button {
		width: 70px;
		height: 30px;
		font-size: 11pt;
		text-align: center;
		background-color: #2099BB;
		color: white;
		border: 0px;
		border-radius: 3%;
		cursor: pointer;
	}
	
	th {
		width:100px;
		height:35px;
		font-color: #2099BB;
	}
	
</style>
</head>
<body>
	<div style="border: 1px solid grey; width:600px; height:600px; padding-top: 25px; border-radius: 4%;">
		<div style="font-size: 18pt; padding-bottom: 20px; padding-left: 45px; ">
			imp! 회원 정보<br>
		</div>
		<hr>
		<p style="padding-left: 45px;">
			<span style="font-style:bold;color:#2099BB;font-size:1.5em"><%=cv.getClId()%></span> 님의 상세 정보입니다.
		</p>
		<div style="padding-left: 45px; padding-top: 20px;">
		<div style="display: inline-block;">
<!-- <img src="./images/memprofile.png"> -->
			<img src="https://avatars.dicebear.com/api/big-smile/<%=cv.getClId()%>.svg" width=150 height=150>			
			<table style="border-spacing:20 30px; width: 530px; font-size: 18px;">
				<tr>
					<th>아이디</th>
					<td><%=cv.getClId() %></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><%=cv.getClNm() %></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><%=cv.getClEm() %></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><%=cv.getClAddr() %></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><%=cv.getClPh() %></td>
				</tr>
				<tr>
					<th>소개글</th>
					<td><%=cv.getClInt()%></td>
				</tr>
			</table>
		</div>
	</div>
</div>	
<button style="margin-left:260px; margin-top:20px;" onclick="f_close()">닫기</button>
<script>
	function f_close() {
		window.close();
	}
</script>
</body>
</html>