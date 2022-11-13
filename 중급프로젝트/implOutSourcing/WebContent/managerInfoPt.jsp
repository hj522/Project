<%@page import="java.util.List"%>
<%@page import="partners.vo.PartnersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./managerHeader.jsp"%>
<%
	List<PartnersVO> ptList = (List<PartnersVO>)request.getAttribute("ptList");
	String msg = session.getAttribute("msg") == null ? "" : (String)session.getAttribute("msg"); 
	session.removeAttribute("msg"); // 꺼내온 메시지 속성값 삭제하기
%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>관리자 회원 정보 조회 페이지</title>
<style>
	.bg {
		background-color: #efefef;
		height: 1600px;
		padding-top: 150px;
		padding-left: 360px;
	}
	
	.frame {
		box-shadow: 2px 3px 5px 5px rgb(232,232,232);
		width: 1000px;
		height: 1200px;
		font-size: 16pt;
		background-color: white;
		border-radius: 1%;
	}
	
	.th {
		padding-top: 30px;
		padding-left: 60px;
		padding-right: 60px;
		padding-bottom: 30px;
		font-size: 20px;
		border-bottom: 1px solid grey;
		text-align: center;
		height: 30px;
	}
	
	.td {
		padding-left: 30px;
		padding-right: 20px;
		line-height: 30px;
		font-size: 13pt;
		text-align: center;
		height: 50px;
		border-bottom: 1px solid grey;
	}


	.info {
		box-shadow:inset 0px 1px 0px 0px #ffffff;
		background:linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);
		background-color:#ffffff;
		border-radius:6px;
		border:1px solid #dcdcdc;
		display:inline-block;
		cursor:pointer;
		color:#4281ff;
		font-family:Arial;
		font-size:15px;
		font-weight:bold;
		padding:0px 16px;
		text-decoration:none;
		text-shadow:0px 1px 0px #ffffff;
	}
	
	.info:hover {
		background:linear-gradient(to bottom, #f6f6f6 5%, #ffffff 100%);
		background-color:#f6f6f6;
	}
	
	.info:active {
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

</style>
</head>
<body>
	<div class="bg">
		<div style="padding-left: 350px; font-size: 22pt; font-weight: bold;">
		임플 전체 회원 조회<br><br><br>
		</div>
		<a href="./managerInfoCl.do" class="btn2" style="padding-left:205px; padding-right:205px;">클라이언트</a>
		<a href="./managerInfoPt.do" class="btn" style="padding-left:207px; padding-right:205px;">파트너스</a>
		<div class="frame">
			<div style="margin-left: 23px;">
			<table>
			<thead>
				<tr>
					<th class="th">아이디</th>
					<th class="th">이름</th>
					<th class="th">전화번호</th>
					<th class="th">이메일</th>
					<th class="th">상세정보</th>
				</tr>
			</thead>
<%
 int ptSize = ptList.size();
 if(ptSize > 0) {
	 for(int i=0; i<ptSize; i++) {
%>
			<tbody>
				<tr>
					<td class="td"><%= ptList.get(i).getPartId() %></td>
					<td class="td"><%= ptList.get(i).getPartNm() %></td>
					<td class="td"><%= ptList.get(i).getPartPh() %></td>
					<td class="td"><%= ptList.get(i).getPartEm() %></td>
					<td class="td"><a href="#" onclick="f_info('<%=ptList.get(i).getPartId()%>')" class="info">상세정보조회</a></td>
				</tr>
<%
	 }
 } else {
%>
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
	</div>
<script>
	var v_mem;

	function f_info(p_id) {
		event.preventDefault();
		v_mem = window.open("/managerInfoPtDetail.do?partId="+p_id, "tab", "left=700, top=200, width=630, height=700");	
	}
	
</script>
</body>
</html>
<%@ include file="./footer.jsp"%>