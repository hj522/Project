<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 찾기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<style>
   .ba {
   	background-color: #F5F5F5;
   	height: 8700px;
   	padding-top: 50px;
   	padding-left: 350px;
   	font-size: 17pt;
   }
   i {
   	font-style: normal;
   	font-size: 10pt;
   }
   .box {
   	  border: 1px solid #E0E0E0;
      width: 1100px; 
      background-color: white;
      height: 1593px;
      font-size: 15pt;
      margin-left: 0px;
   }
   td {
   	  padding-right: 30px;
   	  border-bottom: 1px solid grey; 
      line-height: 50px;
      cursor: pointer;
   }
   select {
		border-radius: 4%;
		border: 2px solid rgb(239, 239, 239);
		font-size: 11pt;
		width: 130px;
		height: 45px;
		padding-left: 10px;
	}
	input[type=text] {
		border-radius: 4%;
		border: 2px solid rgb(239, 239, 239);
		font-size: 11pt;
		width: 300px;
		height: 40px;
		padding-left: 10px;
	}
	input:focus {
	outline: none !important;
	border-color: #2099BB;
	}
	select:focus {
		outline: none !important;
	border-color: #2099BB;
	}
button {
	width: 70px;
	height: 40px;
	font-size: 11pt;
	text-align: center;
	background-color: #2099BB;
	color: white;
	border: 0px;
	border-radius: 3%;
	cursor: pointer;
}
i {
	font-style: normal;
}
.green {
	background-color: #00A878;
	color: white;
	font-size: 10pt;
	padding: 3px 8px;
	width: 54px;
	display: inline-block;
}
.prog1 {
	background-color: #E8FAFF;
	color: #3C9FC4;
	padding: 5px;
	width: 65px;
	font-size: 10pt;
}
.area {

  height: 70px;
  width: 550px;
  background: #fff;
}

.ellipsis {
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 4;
  -webkit-box-orient: vertical;
}
</style>
</head>
<body>
	<div class="ba">
		<div style="background-color: white; width: 1050px; height: 100px; padding-left: 50px; padding-top: 50px; border: 1px solid #E0E0E0;">
		<div style="display:inline-block;">
			<i style="font-size: 18pt; padding-right: 440px;">파트너스 찾기</i>
		</div>
		<div style="display: inline-block;">
			<input type="text">
			<button>검색</button>
		</div>
		</div>
		<div>
			<div style="background-color: white; margin-top: 7px; padding-left: 20px; padding-top: 20px; font-size: 12pt; position: relative; border: 1px solid #E0E0E0; height: 1335px; width: 220px;">
				선호 프로젝트 형태<br><br>
				<div style="font-size: 11pt;">
					<input type="checkbox">&nbsp;외주(도급)<br>
					<input type="checkbox">&nbsp;기간제(상주)
				</div><br>
				파트너 직종<br><br>
				<div style="font-size: 11pt;">
					<input type="checkbox">&nbsp;개발<br>
					<input type="checkbox">&nbsp;디자인<br>
					<input type="checkbox">&nbsp;기획
				</div><br>
				파트너 형태<br><br>
				<div style="font-size: 11pt;">
					<input type="checkbox">&nbsp;법인사업자<br>
					<input type="checkbox">&nbsp;개인사업자<br>
					<input type="checkbox">&nbsp;팀<br>
					<input type="checkbox">&nbsp;개인
				</div><br>
				
			</div>
			<div style="position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 280px; width:850px;">
				<div style="padding-left: 30px; padding-top: 10px; padding-bottom: 10px; font-size: 10pt; background-color: white;">
					<b style="color: #2099BB; margin-right: 50px;">√ 기본 정렬 순</b>
					<b style="color: #636363; margin-right: 50px;">√ 평점 높은 순</b>
					<b style="color: #636363;">√ 최근 업데이트 순</b>
					
				</div>
			</div>
			<div style="background-color: white; width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; font-size: 10pt; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 327px;">
				<div style="position: absolute; left: 25px;">
					<img style="border-radius: 50%;" src="./images/jackee.png" width="90px" height="90px">
				</div>
				<div style="padding-left: 120px; display: inline-block;">
					<i style="font-size: 18pt;">jackee</i>
				<div class="green">
					활동가능
				</div>
				<div style="margin-bottom: 15px; font-size:13pt; font-weight: bold;">
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 25px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<% for(int i=0; i<5; i++) { %>
						<div class="bi-star-fill" style="color: #FFC61C; display:inline-block;"></div>
						<% } %>
						<div style="padding-left: 90px; display:inline-block; text-align: right;">
							4.99점
						</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 75px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/ma-1.png">&nbsp;계약한 프로젝트<div style="padding-left: 90px; display:inline-block; text-align: right;">건</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 125px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/pp-1.png">&nbsp;포트폴리오<div style="padding-left: 120px; display:inline-block; text-align: right;">개</div>
					</div>
				</div>
				<div style="padding-bottom: 5px; display: inline-block;">
					<img src="./images/job.png"><i style="font-size: 10.5pt; margin-right: 25px;">&nbsp;개발</i><br>
				</div>
				<div style="padding-left: 25px; border-left: 1px solid black; display: inline-block;">
					<img src="./images/form.png"><i style="font-size: 10.5pt;">&nbsp;법인 사업자</i><br>
				</div>
				<div class="area ellipsis" style="color: #848484; font-size: 10pt;">
					반갑습니다~! “설명이 가능하면 제작이 가능합니다” 저희는<br>
					최근 15년간 웹,모바일,앱,오프라인 윈도우,ERP 프로그램만을<br>
					해오는 개발전문 회사입니다. 항상 새로운 것에 호기심을 갖고<br>
					공부를 하는 회사입니다. 현재까지 고객과 많은 프로...
				</div>
				</div>
			</div>
			<div style="background-color: white; width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; font-size: 10pt; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 532px;">
				<div style="position: absolute; left: 25px;">
					<img style="border-radius: 50%;" src="./images/pnsoft.png" width="90px" height="90px">
				</div>
				<div style="padding-left: 120px; display: inline-block;">
					<i style="font-size: 18pt;">pnsoft_inc</i>
				<div class="green">
					활동가능
				</div>
				<div style="margin-bottom: 15px; font-size:13pt; font-weight: bold;">
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 25px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<% for(int i=0; i<5; i++) { %>
						<div class="bi-star-fill" style="color: #FFC61C; display:inline-block;"></div>
						<% } %>
						<div style="padding-left: 90px; display:inline-block; text-align: right;">
							4.90점
						</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 75px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/ma-1.png">&nbsp;계약한 프로젝트<div style="padding-left: 90px; display:inline-block; text-align: right;">83건</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 125px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/pp-1.png">&nbsp;포트폴리오<div style="padding-left: 120px; display:inline-block; text-align: right;">112개</div>
					</div>
				</div>
				<div style="padding-bottom: 5px; display: inline-block;">
					<img src="./images/job.png"><i style="font-size: 10.5pt; margin-right: 25px;">&nbsp;개발</i><br>
				</div>
				<div style="padding-left: 25px; border-left: 1px solid black; display: inline-block;">
					<img src="./images/form.png"><i style="font-size: 10.5pt;">&nbsp;법인 사업자</i><br>
				</div>
				<div style="color: #848484; padding-bottom: 15px; font-size: 10pt;">
					
					저희는 홈페이지와 서비스에 마음을 담습니다. 고객사 입장에서<br>
					고민하고 사용자의 경험을 소중하게 여깁니다. 안녕하세요? 저희는<br>
					10년이상 기획,디자인,개발 전문 인력을 주축으로 실력과 안정성을<br>
					확보한 회사입니다. 저희가 주력으로 하는 분야...
				</div>
				</div>
			</div>
			<div style="background-color: white; width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; font-size: 10pt; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 737px;">
				<div style="position: absolute; left: 25px;">
					<img style="border-radius: 50%;" src="./images/point.png" width="90px" height="90px">
				</div>
				<div style="padding-left: 120px; display: inline-block;">
					<i style="font-size: 18pt;">pointphone7</i>
				<div class="green">
					활동가능
				</div>
				<div style="margin-bottom: 15px; font-size:13pt; font-weight: bold;">
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 25px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<% for(int i=0; i<5; i++) { %>
						<div class="bi-star-fill" style="color: #FFC61C; display:inline-block;"></div>
						<% } %>
						<div style="padding-left: 90px; display:inline-block; text-align: right;">
							4.94점
						</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 75px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/ma-1.png">&nbsp;계약한 프로젝트<div style="padding-left: 90px; display:inline-block; text-align: right;">78건</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 125px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/pp-1.png">&nbsp;포트폴리오<div style="padding-left: 120px; display:inline-block; text-align: right;">441개</div>
					</div>
				</div>
				<div style="padding-bottom: 5px; display: inline-block;">
					<img src="./images/job.png"><i style="font-size: 10.5pt; margin-right: 25px;">&nbsp;개발</i><br>
				</div>
				<div style="padding-left: 25px; border-left: 1px solid black; display: inline-block;">
					<img src="./images/form.png"><i style="font-size: 10.5pt;">&nbsp;법인 사업자</i><br>
				</div>
				<div style="color: #848484; padding-bottom: 15px; font-size: 10pt;">
					안녕하세요. 대표이사 정우석입니다. 저희 법인은 12년간의 개발<br>
					노우하우를 가지고 있는 3명의 고급개발자들로 이루어진 프리랜서팀과<br>
					함께 새로운 아이디어로 설립된 신규 기업입니다. 저희 개발팀은<br>
					기획자1명, 디자이너1명, 모바일&웹 개발자 5명...
				</div>
				</div>
			</div>
			<div style="background-color: white; width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; font-size: 10pt; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 942px;">
				<div style="position: absolute; left: 25px;">
					<img style="border-radius: 50%;" src="./images/rocat.png" width="90px" height="90px">
				</div>
				<div style="padding-left: 120px; display: inline-block;">
					<i style="font-size: 18pt;">rocateer2015</i>
				<div class="green">
					활동가능
				</div>
				<div style="margin-bottom: 15px; font-size:13pt; font-weight: bold;">
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 25px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<% for(int i=0; i<5; i++) { %>
						<div class="bi-star-fill" style="color: #FFC61C; display:inline-block;"></div>
						<% } %>
						<div style="padding-left: 90px; display:inline-block; text-align: right;">
							4.89점
						</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 75px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/ma-1.png">&nbsp;계약한 프로젝트<div style="padding-left: 90px; display:inline-block; text-align: right;">61건</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 125px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/pp-1.png">&nbsp;포트폴리오<div style="padding-left: 120px; display:inline-block; text-align: right;">139개</div>
					</div>
				</div>
				<div style="padding-bottom: 5px; display: inline-block;">
					<img src="./images/job.png"><i style="font-size: 10.5pt; margin-right: 25px;">&nbsp;개발</i><br>
				</div>
				<div style="padding-left: 25px; border-left: 1px solid black; display: inline-block;">
					<img src="./images/form.png"><i style="font-size: 10.5pt;">&nbsp;법인 사업자</i><br>
				</div>
				<div style="color: #848484; padding-bottom: 15px; font-size: 10pt;">
					안녕하세요? Service Platform Developer 기업 입니다.<br>
					"우리는 사람들을 위한 일을 하는사람들 입니다 ." 단순히 보면<br>
					우리는 Android+IOS +Web CloudSystem 을 개발하고 만드는<br>
					 사람들 일 뿐 입...
				</div>
				</div>
			</div>
			<div style="background-color: white; width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; font-size: 10pt; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1147px;">
				<div style="position: absolute; left: 25px;">
					<img style="border-radius: 50%;" src="./images/namida.png" width="90px" height="90px">
				</div>
				<div style="padding-left: 120px; display: inline-block;">
					<i style="font-size: 18pt;">namida84</i>
				<div class="green">
					활동가능
				</div>
				<div style="margin-bottom: 15px; font-size:13pt; font-weight: bold;">
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 25px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<% for(int i=0; i<5; i++) { %>
						<div class="bi-star-fill" style="color: #FFC61C; display:inline-block;"></div>
						<% } %>
						<div style="padding-left: 90px; display:inline-block; text-align: right;">
							4.92점
						</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 75px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/ma-1.png">&nbsp;계약한 프로젝트<div style="padding-left: 90px; display:inline-block; text-align: right;">36건</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 125px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/pp-1.png">&nbsp;포트폴리오<div style="padding-left: 120px; display:inline-block; text-align: right;">121개</div>
					</div>
				</div>
				<div style="padding-bottom: 5px; display: inline-block;">
					<img src="./images/job.png"><i style="font-size: 10.5pt; margin-right: 25px;">&nbsp;개발</i><br>
				</div>
				<div style="padding-left: 25px; border-left: 1px solid black; display: inline-block;">
					<img src="./images/form.png"><i style="font-size: 10.5pt;">&nbsp;법인 사업자</i><br>
				</div>
				<div style="color: #848484; padding-bottom: 15px; font-size: 10pt;">
					안녕하세요. 김동일입니다. 저희는 일본 무사시노미술대학에서<br>
					디자인정보학, 제품디자인, 인테리어를 전공하고 현재는 일본,<br>
					캐나다 등 관련 프로젝트들을 진행하고 있는 디자인 그룹입니다.<br>
					브랜딩을 기본으로 제품, GUI,s 인테리어 등 디자인...
				</div>
				</div>
			</div>
			<div style="background-color: white; width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; font-size: 10pt; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1352px;">
				<div style="position: absolute; left: 25px;">
					<img style="border-radius: 50%;" src="./images/who.png" width="90px" height="90px">
				</div>
				<div style="padding-left: 120px; display: inline-block;">
					<i style="font-size: 18pt;">ididid</i>
				<div class="green">
					활동가능
				</div>
				<div style="margin-bottom: 15px; font-size:13pt; font-weight: bold;">
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 25px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<% for(int i=0; i<5; i++) { %>
						<div class="bi-star-fill" style="color: #FFC61C; display:inline-block;"></div>
						<% } %>
						<div style="padding-left: 90px; display:inline-block; text-align: right;">
							4.99점
						</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 75px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/ma-1.png">&nbsp;계약한 프로젝트<div style="padding-left: 90px; display:inline-block; text-align: right;">건</div>
					</div>
					<div style="color: #848484; padding-bottom: 10px; width: 250px; top: 125px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 570px; position: absolute; display:inline-block;">
						<img src="./images/pp-1.png">&nbsp;포트폴리오<div style="padding-left: 120px; display:inline-block; text-align: right;">개</div>
					</div>
				</div>
				<div style="padding-bottom: 5px; display: inline-block;">
					<img src="./images/job.png"><i style="font-size: 10.5pt; margin-right: 25px;">&nbsp;개발</i><br>
				</div>
				<div style="padding-left: 25px; border-left: 1px solid black; display: inline-block;">
					<img src="./images/form.png"><i style="font-size: 10.5pt;">&nbsp;법인 사업자</i><br>
				</div>
				<div style="color: #848484; padding-bottom: 15px; font-size: 10pt;">
					반갑습니다~! “설명이 가능하면 제작이 가능합니다” 저희는<br>
					최근 15년간 웹,모바일,앱,오프라인 윈도우,ERP 프로그램만을<br>
					해오는 개발전문 회사입니다. 항상 새로운 것에 호기심을 갖고<br>
					공부를 하는 회사입니다. 현재까지 고객과 많은 프로...
				</div>
				</div>
			</div>
			<div style="background-color: white; width: 650px; padding-bottom: 25px; padding-left: 200px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1557px;">
				<i style="font-size: 14pt; margin-right: 20px;">1</i>
				<i style="font-size: 14pt; margin-right: 20px;">2</i>
				<i style="font-size: 14pt; margin-right: 20px;">3</i>
				<i style="font-size: 14pt; margin-right: 20px;">4</i>
				<i style="font-size: 14pt; margin-right: 20px;">5</i>
				<i style="font-size: 14pt; margin-right: 20px;">6</i>
				<i style="font-size: 14pt; margin-right: 20px;">7</i>
				<i style="font-size: 14pt; margin-right: 20px;">8</i>
				<i style="font-size: 14pt; margin-right: 20px;">9</i>
				<i style="font-size: 14pt; margin-right: 20px;">10</i>
				<i style="font-size: 14pt; margin-right: 20px;">></i>
				
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="./footer.jsp" %>