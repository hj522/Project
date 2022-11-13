<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<head>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<title>알림</title>
<style>
	.box {
		display: inline-block;
		box-shadow: 2px 3px 5px 5px rgb(232,232,232);
		border-radius: 1%;
		z-index:100; 
		position: absolute; 
		left: 600px; 
		top: 100px; 
 		width: auto;  
 		height: 650px;  
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
	
	.projectBox {
		padding: 20px;
/* 	 	display: inline-block;  */
		border: 1px solid #dedede;
/* 	 	position: absolute;  */
		border-radius: 1%;
/* 	 	z-index: 101;  */
	 	left: 30px; 
	 	top: 330px; 
	 	width: 710px; 
		height: auto;
		background-color: white;
	}
	
	.notiText {
		font-size: 14px;
		font-weight: bold;
	
	}
</style>
</head>
<body>
<form action="notificationInsert.do" method="post">
	<div>
		<div style="position: relative; padding-left: 430px; padding-top: 80px; background-color:#F5F5F5; width: 1473px; height: 690px;">
			<h2>알림</h2><br><br>
			<i style="font-style: normal; font-size: 11pt;">전체 알림 </i><b style="color:#51AEC8;">2</b><br><br>
			<ul style="padding-left: 20px; line-height: 30pt; list-style-image: url('images/list-styleL.png'); font-size: 11pt;">
				<li>프로젝트 문의 알림</li>
				<li>계약 논의 알림</li>
				<li>프로젝트 기록 알림</li>
				<li>받은 평가 알림</li>
			</ul>
		</div>
		<div class="box">
			<div style="font-size: 18pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
				전체 알림
				<button type="button" class="btn btn-outline-danger" onclick="fn_reloadNoti();">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z"></path>
				  <path d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z"></path>
				</svg>
                	새로고침
              </button>
              &nbsp;&nbsp;
				<!-- <span style="padding-left: 530px; text-decoration: none; color: #616161;" onclick="fn_reloadNoti();"><i style="font-style: normal; font-size: 11pt;"><img src="./images/refresh.png">새로고침</i> --></span>
			</div>
			<hr>
			<div style="">
				<span class="notiText"><h4>&nbsp;&nbsp;지원 알림&nbsp;&nbsp;<span class="badge badge-secondary">New</span></h4></span>
				<table style="border: 1px solid black;" class="table table-bordered ">
					<thead class="table-primary">
						<tr>
							<th>프로젝트명</th>
							<th>지원자명</th>
							<th>전화번호</th>
							<th>직종</th>
							<th>지원날짜</th>
						</tr>
					</thead>
					<tbody id="appNotiTbody"></tbody>
					</tbody>
				</table>
			</div>
			<hr>
			<hr>
			<div style="height: 100px;"  style="border-radius:10px;">
				<span class="notiText"><h4>&nbsp;&nbsp;검수 완료 알림&nbsp;&nbsp;<span class="badge badge-secondary">New</span></h4></span>
				<table style="border: 1px solid black;" class="table table-bordered">
					<thead class="table-info">
						<tr>
							<th>프로젝트명</th>
							<th>진행방식</th>
							<th>분야</th>
							<th>검수여부</th>
							<th>검수날짜</th>
						</tr>
					</thead>
					<tbody id="inspecNotiTbody"></tbody>
					</tbody>
				</table>
			</div>
			<hr> 			
			<hr>
			<div style="height: 40px;">
				&nbsp;
			</div> 
		</div>
	</div>
	</form>
<script type="text/javascript">
	let clId = sessionStorage.loginIdC;
	
	$(function() {
		// 클라이언트 ID sessionStorage에서 꺼내옴
		// 검수 완료(해당 클라이언트) 알림 조회
		fn_setInspecNoti(clId);
		// 지원 완료(해당 클라이언트) 알림 조회
		fn_setAppInspecNoti(clId);
	});
	
	// 검수 완료(해당 클라이언트) 알림 조회
	function fn_setInspecNoti(clId){
		let optionHtml = "";
		$.ajax({
			url :  "<%=request.getContextPath()%>/selectInspecNotification.do",
			data: {
				"clId" : clId,
			}, 
			type : "post",
			dataType : "json",
			success : function(ret) {
				if(ret.length > 0){
					// 데이터가 존재할 때 
					$.each(ret, function(idx, obj){
						// for each 문으로 돌아가면서 table을 동적으로 생성해서 붙여줌
						optionHtml += "<tr>";
						optionHtml +=	"<td>"+ret[idx].pjTit+"</td>";
						optionHtml +=	"<td>"+ret[idx].pjProg+"</td>";
						optionHtml +=	"<td>"+ret[idx].pjFi+"</td>";
						optionHtml +=	"<td>";
						ret[idx].pjChkYn == 'Y' ? optionHtml += "완료" : optionHtml
						optionHtml +=	"</td>";
						optionHtml +=	"<td>"+ret[idx].pjChkDt+"</td>";
						optionHtml += "</tr>";
					});
					// 해당 html 을 붙여줌
					$("#inspecNotiTbody").html(optionHtml);
				}else {
					// 데이터가 없을 때
					optionHtml += "<tr>"
					optionHtml +=	 "<td colspan='6'>알림이 존재하지 않습니다.</td>"
					optionHtml += "</tr>"
					
					$("#inspecNotiTbody").html(optionHtml);
				}
			},
		     beforeSend: function () {
			    	var width = 0;
			    	var height = 0;
			    	var left = 80;
			    	var top = 0;
			        width = 50;
			     	height = 50;
			        top = ( $(window).height() - height ) / 2 + $(window).scrollTop();
			        left = ( $(window).width() - width ) / 2 + $(window).scrollLeft();
			        if($("#div_ajax_load_image").length != 0) {
			    	    $("#order").hide();
			    	 	$("#div_ajax_load_image").css({
			    		     "top": top+"px", "left": left+"px"
			    		});
			    	    $("#div_ajax_load_image").show();
			    	} else { 
			    		// $("#order").hide();
			    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
			    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
			    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
			    	}
			    },
			    complete: function () {
			    	$("#div_ajax_load_image").hide();
			    	// $("#order").show();
			    },
			error : function(xhr) {
				console.log("### error code ###"+ xhr);
				alert("검수 완료 알림 조회 중 오류가 발생했습니다. 관리자에게 문의하세요.");
			}
		});
	}
	
	// 지원 완료(해당 클라이언트) 알림 조회
	function fn_setAppInspecNoti(clId){
		let optionHtml = "";
		$.ajax({
			url :  "<%=request.getContextPath()%>/selectAppInspecNotification.do",
			data: {
				"clId" : clId,
			}, 
			type : "post",
			dataType : "json",
			success : function(ret) {
				if(ret.length > 0){
					// 데이터가 존재할 때 
					$.each(ret, function(idx, obj){
						// for each 문으로 돌아가면서 table을 동적으로 생성해서 붙여줌
						optionHtml += "<tr>";
						optionHtml +=	"<td>"+ret[idx].pjTit+"</td>";
						optionHtml +=	"<td>"+ret[idx].partNm+"</td>";
						optionHtml +=	"<td>"+ret[idx].partPh+"</td>";
						optionHtml +=	"<td>"+ret[idx].partOc+"</td>";
						optionHtml +=	"<td>"+ret[idx].appCrDt+"</td>";
						optionHtml += "</tr>";
					});
					// 해당 html 을 붙여줌
					$("#appNotiTbody").html(optionHtml);
				}else {
					// 데이터가 없을 때
					optionHtml += "<tr>"
					optionHtml +=	 "<td colspan='7'>알림이 존재하지 않습니다.</td>"
					optionHtml += "</tr>"
					
					$("#appNotiTbody").html(optionHtml);
				}
			},
			error : function(xhr) {
				console.log("### error code ###"+ xhr);
				alert("지원 현황알림 조회 중 오류가 발생했습니다. 관리자에게 문의하세요.");
			}
		});
	}
	
	// 새로고침
	function fn_reloadNoti(){
		// 검수 완료(해당 클라이언트) 알림 조회
		fn_setInspecNoti(clId);
		// 지원 완료(해당 클라이언트) 알림 조회
		fn_setAppInspecNoti(clId);
	}
	
</script>
</body>
</html>
<%@ include file="./footer.jsp" %>