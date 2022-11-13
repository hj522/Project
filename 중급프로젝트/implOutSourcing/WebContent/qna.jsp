<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>1:1문의</title>
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
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
	width: 1100px;
	background-color: white;
	height: relative;
	font-size: 15pt;
	margin-left: 0px;
	padding-bottom: 20px;
}

.bt {
	background: linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
	background-color: #599bb3;
	border-radius: 6px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-size: 18px;
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
	<form action="insertInquery.do" method="post" id="frm1">
		<div class="a">
			<div class="ba">
				<div
					style="font-size: 22pt; font-weight: 600; display: inline-block;">
					안녕하세요!<br> <br> 무엇을 도와드릴까요?<br> <br> <br>
				</div>
				<div style="margin-left: 250px; display: inline-block;">
					<img src="./images/customer.png">
				</div>
				<div class="box" >
					<div id="nav"
						style="padding-left: 140px; padding-top: 20px; float: left; cursor: pointer;"
						onclick="f_client()">클라이언트 고객센터</div>
					<div id="nav"
						style="padding-left: 180px; padding-top: 20px; float: left; cursor: pointer;"
						onclick="f_partners()">파트너스 고객센터</div>
					<div id="nav"
						style="padding-left: 195px; padding-top: 20px; float: left; cursor: pointer; font-weight: 900;"
						onclick="f_qna()">1:1 문의</div>
					<div style="border-bottom: 1px solid grey; height: 70px;"></div>
					<div
						style="padding-left: 100px; padding-top: 70px; padding-right: 100px;">
						<div style="text-align: center;">
							<strong><h3>1:1 문의하기</h3></strong><br> <br>
						</div>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label"
								style="color: #599bb3; font-weight: bold;">제목</label> <input
								type="text" class="form-control" id="exampleFormControlInput1"
								cols="5" name="inTit">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label"
								style="color: #599bb3; font-weight: bold;">문의 내용</label>
							<textarea type="text" class="form-control"
								id="exampleFormControlTextarea1" rows="15" cols="5" name="inCon"></textarea>
						</div>
						<div class="mb-3"></div>
						<div style="top: 10%; text-align: center;">
							<input type="submit" value="작성" class="bt"
								style="display: inline-block; margin-top: 50px; width: 60pt;"
								onclick="f_submit()">
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<form action="mypageInqueryP.do" method="post"
		enctype="multipart/form-data" id="frm2">
		<input type="hidden" id="hdn" value=""> <input type="hidden"
			id="hdn2" value="">
	</form>
	<form action="mypageInqueryC.do" method="post"
		enctype="multipart/form-data" id="frm3">
		<input type="hidden" id="hdn3" value=""> <input type="hidden"
			id="hdn4" value="">
	</form>

	<script>
		// 관리자페이지, 회원 마이페이지 양쪽에 문의글 리스트 뜨게 하기(폼 3개 사용)
		var v_a = document.querySelector("#exampleFormControlInput1");
		var v_b = document.querySelector("#exampleFormControlTextarea1");
		var v_c = document.querySelector("#hdn");
		var v_d = document.querySelector("#hdn2");

		var v_e = document.querySelector("#exampleFormControlInput1");
		var v_f = document.querySelector("#exampleFormControlTextarea1");
		var v_g = document.querySelector("#hdn3");
		var v_h = document.querySelector("#hdn4");

		function f_submit() {

			e.preventDefault();
			v_c.value = v_a.value;
			v_d.value = v_b.value;
			v_g.value = v_e.value;
			v_h.value = v_f.value;

			frm1.submit();
			frm2.submit();
			frm3.submit();
		}

		var navs = document.querySelectorAll("#nav");
		var trs = document.querySelectorAll("tr");

		for (let i = 0; i < trs.length; i++) {
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
<%@ include file="./footer.jsp"%>