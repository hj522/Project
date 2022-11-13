<%@page import="java.util.Arrays"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="org.apache.commons.io.filefilter.RegexFileFilter"%>
<%@page import="projectfind.vo.ProjectFindVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%
	List<ProjectFindVO> pj = (List<ProjectFindVO>) request.getAttribute("pjList");
int order = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 찾기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
:root { -
	-like-font-size: 2rem
}

.like-btn {
	position: absolute;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 30px;
	height: 30px;
	cursor: pointer;
	transition: all 0.5s;
	opacity: 0;
	z-index: 2;
}

.fa-heart {
	position: absolute;
	font-size: var(- -like-font-size);
	-webkit-text-stroke: 2px #e5e5e5;
	color: whitesmoke;
	transition: all ease-in-out;
	cursor: pointer;
}

.like-btn:checked+.fa-heart {
	color: red;
	-webkit-text-stroke: 1px red;
	animation: .5s linear burst;
}

@keyframes burst { 0%,10%{
	transform: scale(1);
	opacity: .5;
	color: lavender;
}

45%{
transform:scale(.2)rotate(30deg);
opacity:.75;
}
50%{
transform:scale(2)rotate(-37.5deg);
opacity:1;
color:red;
text-shadow:2px 2px 6px rgba(235,9,9,0.5);
}
90%,95%{
transform:scale(1)rotate(10deg);
text-shadow:none;
}
100%{
transform:rotate(-2.5deg);}
}
.ba {
	background-color: #F5F5F5;
	height: 1900px;
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
	height: 1589px;
	font-size: 15pt;
	margin-left: 0px;
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
	padding: 3px 10px;
	width: 40px;
}

.prog1 {
	background-color: #E8FAFF;
	color: #3C9FC4;
	padding: 5px;
	width: 65px;
	font-size: 10pt;
}

.prog2 {
	background-color: #FFF9E0;
	color: #F39418;
	padding: 5px;
	width: 79px;
	font-size: 10pt;
}

.area {
	margin: 10px 0;
	height: 30px;
	width: 550px;
	background: #fff;
}

.ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}
</style>
</head>
<body>
	<div class="ba">
		<div style="display: inline-block;">
			<i style="font-size: 18pt; padding-right: 400px;">프로젝트 찾기</i>
		</div>
		<div style="display: inline-block;">
			<select id="sel">
				<option value="전체">전체</option>
				<option value="제목">제목</option>
				<option value="프로젝트 내용">프로젝트 내용</option>
			</select> <input id="srh" type="text">
			<button id="srhBtn">검색</button>
		</div>
		<br> <br> <br>
		<div class="box">
			<div
				style="padding-left: 20px; padding-top: 20px; font-size: 12pt; position: relative; border: 1px solid #E0E0E0; height: 1567px;">
				프로젝트 진행 방식<br> <br>
				<div style="font-size: 11pt;">
					<input id="prog1" name="prog" type="checkbox" value="외주(도급)">&nbsp;외주(도급)<br>
					<input id="prog2" name="prog" type="checkbox" value="기간제(상주)">&nbsp;기간제(상주)
				</div>
				<br> 프로젝트 카테고리<br> <br>
				<div style="font-size: 11pt;">
					<input id="cate1" name="cate" type="checkbox" value="개발">&nbsp;개발<br>
					<input id="cate2" name="cate" type="checkbox" value="디자인">&nbsp;디자인<br>
					<input id="cate3" name="cate" type="checkbox" value="기획">&nbsp;기획
				</div>
				<br> 프로젝트 분야<br> <br>
				<div style="font-size: 11pt;">
					<input id="fi1" name="fi" type="checkbox" value="웹">&nbsp;웹<br>
					<input id="fi2" name="fi" type="checkbox" value="애플리케이션">&nbsp;애플리케이션<br>
					<input id="fi3" name="fi" type="checkbox" value="커머스,쇼핑몰">&nbsp;커머스,쇼핑몰<br>
					<input id="fi4" name="fi" type="checkbox" value="일반 소프트웨어">&nbsp;일반
					소프트웨어
				</div>
				<br> 프로젝트 예상금액<br> <br>
				<div style="font-size: 11pt;">
					<input id="bud1" type="text"
						style="height: 35px; width: 100px; margin-bottom: 10px;">&nbsp;원
					~<br> <input id="bud2" type="text"
						style="height: 35px; width: 100px;">&nbsp;원<br>
				</div>
				<br> 프로젝트 예상기간<br> <br>
				<div style="font-size: 11pt;">
					<input id="dat1" type="text"
						style="height: 35px; width: 100px; margin-bottom: 10px;">&nbsp;일
					~<br> <input id="dat2" type="text"
						style="height: 35px; width: 100px;">&nbsp;일<br>
				</div>
				<br>
			</div>
			<div
				style="padding-left: 20px; padding-top: 20px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 225px; width: 830px;">
				45,135개의 프로젝트
				<div
					style="width: 450px; margin-top: 20px; margin-bottom: 20px; padding-left: 30px; padding-top: 10px; padding-bottom: 10px; font-size: 11pt; background-color: rgb(239, 239, 239);">
					<button type="button" class="by"
						style="background-color: rgb(239, 239, 239); font-weight: 900; color: #2099BB; margin-right: 50px; width: 100px;">√
						기본 정렬 순</button>
					<button type="button" class="by"
						style="background-color: rgb(239, 239, 239); color: #636363; margin-right: 50px; width: 100px;">√
						금액 높은 순</button>
					<button type="button" class="by"
						style="background-color: rgb(239, 239, 239); color: #636363; width: 100px;">√
						최신 등록 순</button>

				</div>
			</div>

			<div id="order" style="display: block; position: absolute; top: 0px; left: 0px;">
			</div>
			<div id="page">
			</div>
			</div>
			</div>
	<script>
		var disp = document.querySelectorAll("#disp");
		var order = document.querySelector("#order");
		var by = document.querySelectorAll(".by");
		var inbud1 = document.querySelector("#bud1");
		var inbud2 = document.querySelector("#bud2");
		var indat1 = document.querySelector("#dat1"); 
		var indat2 = document.querySelector("#dat2");
		var insrh = document.querySelector("#srh");
		var insrhBtn = document.querySelector("#srhBtn");
		var sel = document.querySelector("#sel");
		var page = document.querySelector("#page");
		
		for(let i=0; i<disp.length; i++) {
			disp[i].onmouseover = function() {
				disp[i].style.border =  "1px solid #2099BB";
			}
			disp[i].onmouseout = function() {
				disp[i].style.border =  "1px solid #E0E0E0";
			}
		}
		
		
		var request = {}; 
		request.getParameter = function (p_name) {  
		    if (location.href.indexOf("?") == -1) return null;
		    var v_queryString = location.href.split("?")[1];
		    var v_nvSSang = v_queryString.split("&");
		    for (var i = 0; i < v_nvSSang.length; i++) {
		        var nv = v_nvSSang[i].split("=");
		        if (nv[0] == p_name) {
		            return decodeURIComponent(nv[1]).replaceAll("+"," "); ;
		        }
		    }
		    return null;  
		}
		
	</script>
	<script>
	var ing = "";
	$(function() {
		let eqs = "";
		let select = "";
		$.ajax({
	         url : "order.do",
	         type : "get",
	         data : {"eqs": eqs},
	         dataType : "text",
	         success : function(result) {
	        	console.log(result);
	        	var v_json = JSON.parse(result);
	        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
	        	var v_pageNo = request.getParameter("pageNo");
	        	if(!v_pageNo) {
	                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
	            }
	        	if(ing != "처음") {
	        		ing = "처음";
	        		v_pageNo = 1;
	        	}
	        	console.log("ing:",ing);
	        	var v_total = v_json.length;
	            var v_pageVal = Math.ceil(v_total / v_page);
	            if(v_pageNo > v_pageVal - 1) {
	                v_pageNo = v_total / v_page;
	            }
	            var v_start = (v_pageNo - 1) * v_page;
	            var v_end = v_start + (v_page - 1);
	            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
	            for(var i=1; i<=v_pageVal; i++) {
	                if(i == v_pageNo) {
	                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
	                } else {
	                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
	                }
	            }
	            v_tblStr += "</div>";
	            page.innerHTML = v_tblStr;
	        	
	        	
				var top4 = 375;
				var level4 = 273;
				
				var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>";
				for(var i=v_start; i<=v_end; i++) {
					v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
					v_div += "<div style='position: absolute; left: 790px;'>";
					v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
					v_div += "<i class='fa fa-heart'></i><br>";
					v_div += "</div>";
					v_div += "<div class='green'>";
					v_div += "모집중";
					v_div += "</div>";
					v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
					v_div += v_json[i].pjTit;
					v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
					v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
					v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
					v_div += "</div>";
					v_div += "</div>";
					v_div += "<div style='display: inline-block;'>";
					v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
					v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
					v_div += "</div>";
					v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
					v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
					v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
					v_div += "</div>";
					v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
					v_div += v_json[i].pjWork;
					v_div += "</div>";
					v_div += "<div>";
					if(v_json[i].pjProg == "외주(도급)") {
						v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
						v_div += v_json[i].pjProg;
						v_div += "</div>";
					} else {
						v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
						v_div += v_json[i].pjProg;
						v_div += "</div>";
					}
					v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
					v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
					v_div += "</div>";
					v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
					v_div += "등록 일자 " + v_json[i].pjRegDt;
					v_div += "</div>";
					v_div += "</div>";
					v_div += "</div>";
					top4 += level4;
		        }
				v_div += "</div>";
				order.innerHTML = v_div;
		     },
	         error : function(request, status, error) {
	            console.log("code: " + request.status)
	            console.log("message: " + request.responseText)
	            console.log("error: " + error);
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
			    		$("#order").hide();
			    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
			    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
			    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
			    	}
			    },
			    complete: function () {
			    	$("#div_ajax_load_image").hide();
			    	$("#order").show();
			    }
	      });
	});
	
	
	$(".by").eq(0).click(function() {
	    let eqs = "0";  
		$.ajax({
	         url : "order.do",
	         type : "get",
	         data: {"eqs": eqs},
	         dataType : "text",
	         success : function(result) {
	        	console.log(result);
	        	var v_json = JSON.parse(result);
	        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
	        	var v_pageNo = request.getParameter("pageNo");
	        	if(!v_pageNo) {
	                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
	            }
	        	if(ing != "정렬1") {
	        		ing = "정렬1";
	        		v_pageNo = 1;
	        	}
	        	console.log("ing:",ing);
	        	var v_total = v_json.length;
	            var v_pageVal = Math.ceil(v_total / v_page);
	            if(v_pageNo > v_pageVal - 1) {
	                v_pageNo = v_total / v_page;
	            }
	            var v_start = (v_pageNo - 1) * v_page;
	            var v_end = v_start + (v_page - 1);
	            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
	            for(var i=1; i<=v_pageVal; i++) {
	                if(i == v_pageNo) {
	                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
	                } else {
	                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
	                }
	            }
	            v_tblStr += "</div>";
	            page.innerHTML = v_tblStr;
				var top4 = 375;
				var level4 = 273;
				by[0].style.fontWeight = "900";
				by[0].style.color = "#2099BB";
				by[1].style.fontWeight = "300";
				by[1].style.color = "#636363";
				by[2].style.fontWeight = "300";
				by[2].style.color = "#636363";
				var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>";
				for(var i=v_start; i<=v_end; i++) {
					v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
					v_div += "<div style='position: absolute; left: 790px;'>";
					v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
					v_div += "<i class='fa fa-heart'></i><br>";
					v_div += "</div>";
					v_div += "<div class='green'>";
					v_div += "모집중";
					v_div += "</div>";
					v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
					v_div += v_json[i].pjTit;
					v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
					v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
					v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
					v_div += "</div>";
					v_div += "</div>";
					v_div += "<div style='display: inline-block;'>";
					v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
					v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
					v_div += "</div>";
					v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
					v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
					v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
					v_div += "</div>";
					v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
					v_div += v_json[i].pjWork;
					v_div += "</div>";
					v_div += "<div>";
					if(v_json[i].pjProg == "외주(도급)") {
						v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
						v_div += v_json[i].pjProg;
						v_div += "</div>";
					} else {
						v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
						v_div += v_json[i].pjProg;
						v_div += "</div>";
					}
					v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
					v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
					v_div += "</div>";
					v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
					v_div += "등록 일자 " + v_json[i].pjRegDt;
					v_div += "</div>";
					v_div += "</div>";
					v_div += "</div>";
					top4 += level4;
		        }
				v_div += "</div>";
				order.innerHTML = v_div;
		     },
	         error : function(request, status, error) {
	            console.log("code: " + request.status)
	            console.log("message: " + request.responseText)
	            console.log("error: " + error);
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
			    		$("#order").hide();
			    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
			    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
			    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
			    	}
			    },
			    complete: function () {
			    	$("#div_ajax_load_image").hide();
			    	$("#order").show();
			    }
	      });
	   });
	$(".by").eq(1).click(function() {
		let eqs = "1";  
		$.ajax({
	         url : "order.do",
	         type : "get",
	         data: {"eqs":eqs},
	         dataType : "text",
	         success : function(result) {
	        	console.log(result);
	        	var v_json = JSON.parse(result);
	        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
	        	var v_pageNo = request.getParameter("pageNo");
	        	if(!v_pageNo) {
	                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
	            }
	        	if(ing != "정렬2") {
	        		ing = "정렬2";
					pageNo = 1;
	        	}
	        	console.log("ing:",ing);
	        	console.log("pageNo:", v_pageNo);
	        	var v_total = v_json.length;
	            var v_pageVal = Math.ceil(v_total / v_page);
	            if(v_pageNo > v_pageVal - 1) {
	                v_pageNo = v_total / v_page;
	            }
	            var v_start = (v_pageNo - 1) * v_page;
	            var v_end = v_start + (v_page - 1);
	            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
	            for(var i=1; i<=v_pageVal; i++) {
	                if(i == v_pageNo) {
	                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?&pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
	                } else {
	                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
	                }
	            }
	            v_tblStr += "</div>";
	            page.innerHTML = v_tblStr;
				var top4 = 375;
				var level4 = 273;
				by[1].style.fontWeight = "900";
				by[1].style.color = "#2099BB";
				by[0].style.fontWeight = "300";
				by[0].style.color = "#636363";
				by[2].style.fontWeight = "300";
				by[2].style.color = "#636363";
				var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>";
				for(var i=v_start; i<=v_end; i++) {
					v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
					v_div += "<div style='position: absolute; left: 790px;'>";
					v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
					v_div += "<i class='fa fa-heart'></i><br>";
					v_div += "</div>";
					v_div += "<div class='green'>";
					v_div += "모집중";
					v_div += "</div>";
					v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
					v_div += v_json[i].pjTit;
					v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
					v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
					v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
					v_div += "</div>";
					v_div += "</div>";
					v_div += "<div style='display: inline-block;'>";
					v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
					v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
					v_div += "</div>";
					v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
					v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
					v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
					v_div += "</div>";
					v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
					v_div += v_json[i].pjWork;
					v_div += "</div>";
					v_div += "<div>";
					if(v_json[i].pjProg == "외주(도급)") {
						v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
						v_div += v_json[i].pjProg;
						v_div += "</div>";
					} else {
						v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
						v_div += v_json[i].pjProg;
						v_div += "</div>";
					}
					v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
					v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
					v_div += "</div>";
					v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
					v_div += "등록 일자 " + v_json[i].pjRegDt;
					v_div += "</div>";
					v_div += "</div>";
					v_div += "</div>";
					top4 += level4;
		        }
				v_div += "</div>";
				order.innerHTML = v_div;
		     },
	         error : function(request, status, error) {
	            console.log("code: " + request.status)
	            console.log("message: " + request.responseText)
	            console.log("error: " + error);
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
			    		$("#order").hide();
			    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
			    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
			    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
			    	}
			    },
			    complete: function () {
			    	$("#div_ajax_load_image").hide();
			    	$("#order").show();
			    }
	      });
	   });
	$(".by").eq(2).click(function() {
		let eqs = "2";  
		$.ajax({
	         url : "order.do",
	         type : "get",
	         data: {"eqs":eqs},
	         dataType : "text",
	         success : function(result) {
	        	console.log(result);
	        	var v_json = JSON.parse(result);
	        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
	        	var v_pageNo = request.getParameter("pageNo");
	        	if(!v_pageNo) {
	                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
	            }
	        	if(ing != "정렬3") {
	        		ing = "정렬3";
	        		v_pageNo = 1;
	        	}
	        	var v_total = v_json.length;
	            var v_pageVal = Math.ceil(v_total / v_page);
	            if(v_pageNo > v_pageVal - 1) {
	                v_pageNo = v_total / v_page;
	            }
	            var v_start = (v_pageNo - 1) * v_page;
	            var v_end = v_start + (v_page - 1);
	            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
	            for(var i=1; i<=v_pageVal; i++) {
	                if(i == v_pageNo) {
	                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
	                } else {
	                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
	                }
	            }
	            v_tblStr += "</div>";
	            page.innerHTML = v_tblStr;
				var top4 = 375;
				var level4 = 273;
				by[2].style.fontWeight = "900";
				by[2].style.color = "#2099BB";
				by[1].style.fontWeight = "300";
				by[1].style.color = "#636363";
				by[0].style.fontWeight = "300";
				by[0].style.color = "#636363";
				var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>";
				for(var i=v_start; i<=v_end; i++) {
					v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
					v_div += "<div style='position: absolute; left: 790px;'>";
					v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
					v_div += "<i class='fa fa-heart'></i><br>";
					v_div += "</div>";
					v_div += "<div class='green'>";
					v_div += "모집중";
					v_div += "</div>";
					v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
					v_div += v_json[i].pjTit;
					v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
					v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
					v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
					v_div += "</div>";
					v_div += "</div>";
					v_div += "<div style='display: inline-block;'>";
					v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
					v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
					v_div += "</div>";
					v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
					v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
					v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
					v_div += "</div>";
					v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
					v_div += v_json[i].pjWork;
					v_div += "</div>";
					v_div += "<div>";
					if(v_json[i].pjProg == "외주(도급)") {
						v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
						v_div += v_json[i].pjProg;
						v_div += "</div>";
					} else {
						v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
						v_div += v_json[i].pjProg;
						v_div += "</div>";
					}
					v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
					v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
					v_div += "</div>";
					v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
					v_div += "등록 일자 " + v_json[i].pjRegDt;
					v_div += "</div>";
					v_div += "</div>";
					v_div += "</div>";
					top4 += level4;
		        }
				v_div += "</div>";
				order.innerHTML = v_div;
		     },
	         error : function(request, status, error) {
	            console.log("code: " + request.status)
	            console.log("message: " + request.responseText)
	            console.log("error: " + error);
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
			    		$("#order").hide();
			    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
			    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
			    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
			    	}
			    },
			    complete: function () {
			    	$("#div_ajax_load_image").hide();
			    	$("#order").show();
			    }
	      });
	   });
	
			$("input[name=prog]").click(function() {
			      let prog = "";
			      if($("#prog1").is(':checked', true)) {
			    	  prog = $("#prog1").val();
			      }
			      if($("#prog2").is(':checked', true)) {
			    	  prog = $("#prog2").val();
			      }
			      if($("#prog1").is(':checked', true) && $("#prog2").is(':checked', true)) {
			    	  prog = "";
			      }
			      console.log("ischecked",prog);
			      $.ajax({
			         url : "prog.do",
			         type : "get",
			         data : {"prog":prog},
			         dataType : "text",
			         success : function(result) {
			        	console.log(result);
			        	var v_json = JSON.parse(result);
			        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
			        	var v_pageNo = request.getParameter("pageNo");
			        	if(!v_pageNo) {
			                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
			            }
			        	if(ing != "진행") {
			        		ing = "진행";
			        		v_pageNo = 1;
			        	}
			        	var v_total = v_json.length;
			            var v_pageVal = Math.ceil(v_total / v_page);
			            if(v_pageNo > v_pageVal - 1) {
			                v_pageNo = v_total / v_page;
			            }
			            var v_start = (v_pageNo - 1) * v_page;
			            var v_end = v_start + (v_page - 1);
			            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
			            for(var i=1; i<=v_pageVal; i++) {
			                if(i == v_pageNo) {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                } else {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                }
			            }
			            v_tblStr += "</div>";
			            page.innerHTML = v_tblStr;
						var top4 = 375;
						var level4 = 273;
						var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>"
						for(var i=v_start; i<=v_end; i++) {
							v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
							v_div += "<div style='position: absolute; left: 790px;'>";
							v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
							v_div += "<i class='fa fa-heart'></i><br>";
							v_div += "</div>";
							v_div += "<div class='green'>";
							v_div += "모집중";
							v_div += "</div>";
							v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
							v_div += v_json[i].pjTit;
							v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
							v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
							v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
							v_div += "</div>";
							v_div += "</div>";
							v_div += "<div style='display: inline-block;'>";
							v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
							v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
							v_div += "</div>";
							v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
							v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
							v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
							v_div += "</div>";
							v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
							v_div += v_json[i].pjWork;
							v_div += "</div>";
							v_div += "<div>";
							if(v_json[i].pjProg == "외주(도급)") {
								v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							} else {
								v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							}
							v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
							v_div += "</div>";
							v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "등록 일자 " + v_json[i].pjRegDt;
							v_div += "</div>";
							v_div += "</div>";
							v_div += "</div>";
							top4 += level4;
				        }
						v_div += "</div>";
						order.innerHTML = v_div;
				     },
			         error : function(request, status, error) {
			            console.log("code: " + request.status)
			            console.log("message: " + request.responseText)
			            console.log("error: " + error);
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
					    		$("#order").hide();
					    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
					    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
					    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
					    	}
					    },
					    complete: function () {
					    	$("#div_ajax_load_image").hide();
					    	$("#order").show();
					    }
			      });
			   });
			$("input[name=cate]").click(function() {
			      let cate = "";
			      if($("#cate1").is(':checked', true)) {
			    	  cate = $("#cate1").val();
			      }
			      if($("#cate2").is(':checked', true)) {
			    	  cate = $("#cate2").val();
			      }
			      if($("#cate3").is(':checked', true)) {
			    	  cate = $("#cate3").val();
			      }
			      if($("#cate1").is(':checked', true) && $("#cate2").is(':checked', true) && $("#cate3").is(':checked', true)) {
			    	  cate = "";
			      }
			      console.log("ischecked",cate);
			      $.ajax({
			         url : "cate.do",
			         type : "get",
			         data : {"cate":cate},
			         dataType : "text",
			         success : function(result) {
			        	var v_json = JSON.parse(result);
			        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
			        	var v_pageNo = request.getParameter("pageNo");
			        	if(!v_pageNo) {
			                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
			            }
			        	if(ing != "구분") {
			        		ing = "구분";
			        		v_pageNo = 1;
			        	}
			        	var v_total = v_json.length;
			            var v_pageVal = Math.ceil(v_total / v_page);
			            if(v_pageNo > v_pageVal - 1) {
			                v_pageNo = v_total / v_page;
			            }
			            var v_start = (v_pageNo - 1) * v_page;
			            var v_end = v_start + (v_page - 1);
			            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
			            for(var i=1; i<=v_pageVal; i++) {
			                if(i == v_pageNo) {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                } else {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                }
			            }
			            v_tblStr += "</div>";
			            page.innerHTML = v_tblStr;
			        	console.log(v_json.length);
						var top4 = 375;
						var level4 = 273;
						var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>"
						for(var i=v_start; i<=v_end; i++) {
							v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
							v_div += "<div style='position: absolute; left: 790px;'>";
							v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
							v_div += "<i class='fa fa-heart'></i><br>";
							v_div += "</div>";
							v_div += "<div class='green'>";
							v_div += "모집중";
							v_div += "</div>";
							v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
							v_div += v_json[i].pjTit;
							v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
							v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
							v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
							v_div += "</div>";
							v_div += "</div>";
							v_div += "<div style='display: inline-block;'>";
							v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
							v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
							v_div += "</div>";
							v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
							v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
							v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
							v_div += "</div>";
							v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
							v_div += v_json[i].pjWork;
							v_div += "</div>";
							v_div += "<div>";
							if(v_json[i].pjProg == "외주(도급)") {
								v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							} else {
								v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							}
							v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
							v_div += "</div>";
							v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "등록 일자 " + v_json[i].pjRegDt;
							v_div += "</div>";
							v_div += "</div>";
							v_div += "</div>";
							top4 += level4;
				        }
						v_div += "</div>";
						order.innerHTML = v_div;
				     },
			         error : function(request, status, error) {
			            console.log("code: " + request.status)
			            console.log("message: " + request.responseText)
			            console.log("error: " + error);
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
					    		$("#order").hide();
					    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
					    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
					    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
					    	}
					    },
					    complete: function () {
					    	$("#div_ajax_load_image").hide();
					    	$("#order").show();
					    }
			      });
			   });
			$("input[name=fi]").click(function() {
			      let fi = "";
			      if($("#fi1").is(':checked', true)) {
			    	  fi = $("#fi1").val();
			      }
			      if($("#fi2").is(':checked', true)) {
			    	  fi = $("#fi2").val();
			      }
			      if($("#fi3").is(':checked', true)) {
			    	  fi = $("#fi3").val();
			      }
			      if($("#fi4").is(':checked', true)) {
			    	  fi = $("#fi4").val();
			      }
			      if($("#fi1").is(':checked', true) && $("#fi2").is(':checked', true) && $("#fi3").is(':checked', true) && $("#fi4").is(':checked', true)) {
			    	  fi = "";
			      }
			      console.log("ischecked",fi);
			$.ajax({
		         url : "fi.do",
		         type : "get",
		         data : {"fi":fi},
		         dataType : "text",
		         success : function(result) {
		        	var v_json = JSON.parse(result);
		        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
		        	var v_pageNo = request.getParameter("pageNo");
		        	if(!v_pageNo) {
		                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
		            }
		        	if(ing != "분야") {
		        		ing = "분야";
		        		v_pageNo = 1;
		        	}
		        	var v_total = v_json.length;
		            var v_pageVal = Math.ceil(v_total / v_page);
		            if(v_pageNo > v_pageVal - 1) {
		                v_pageNo = v_total / v_page;
		            }
		            var v_start = (v_pageNo - 1) * v_page;
		            var v_end = v_start + (v_page - 1);
		            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
		            for(var i=1; i<=v_pageVal; i++) {
		                if(i == v_pageNo) {
		                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
		                } else {
		                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
		                }
		            }
		            v_tblStr += "</div>";
		            page.innerHTML = v_tblStr;
		        	console.log(v_json.length);
					var top4 = 375;
					var level4 = 273;
					var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>"
					for(var i=v_start; i<=v_end; i++) {
						v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
						v_div += "<div style='position: absolute; left: 790px;'>";
						v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
						v_div += "<i class='fa fa-heart'></i><br>";
						v_div += "</div>";
						v_div += "<div class='green'>";
						v_div += "모집중";
						v_div += "</div>";
						v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
						v_div += v_json[i].pjTit;
						v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
						v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
						v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
						v_div += "</div>";
						v_div += "</div>";
						v_div += "<div style='display: inline-block;'>";
						v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
						v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
						v_div += "</div>";
						v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
						v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
						v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
						v_div += "</div>";
						v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
						v_div += v_json[i].pjWork;
						v_div += "</div>";
						v_div += "<div>";
						if(v_json[i].pjProg == "외주(도급)") {
							v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
							v_div += v_json[i].pjProg;
							v_div += "</div>";
						} else {
							v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
							v_div += v_json[i].pjProg;
							v_div += "</div>";
						}
						v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
						v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
						v_div += "</div>";
						v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
						v_div += "등록 일자 " + v_json[i].pjRegDt;
						v_div += "</div>";
						v_div += "</div>";
						v_div += "</div>";
						top4 += level4;
			        }
					v_div += "</div>";
					order.innerHTML = v_div;
			     },
		         error : function(request, status, error) {
		            console.log("code: " + request.status)
		            console.log("message: " + request.responseText)
		            console.log("error: " + error);
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
				    		$("#order").hide();
				    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
				    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
				    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
				    	}
				    },
				    complete: function () {
				    	$("#div_ajax_load_image").hide();
				    	$("#order").show();
				    }
		   });
			});
			$("#bud1").keyup(function() {
			      let bud1 = $("#bud1").val();
				  if(!inbud1.value) {
					bud1 = 0;
				  }
			      console.log("bu1",inbud1.value);
			      $.ajax({
			         url : "bud1.do",
			         type : "get",
			         data : {"bud1":bud1},
			         dataType : "html",
			         success : function(result) {
			        	var v_json = JSON.parse(result);
			        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
			        	var v_pageNo = request.getParameter("pageNo");
			        	if(!v_pageNo) {
			                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
			            }
			        	if(ing != "금액1") {
			        		ing = "금액1";
			        		v_pageNo = 1;
			        	}
			        	var v_total = v_json.length;
			            var v_pageVal = Math.ceil(v_total / v_page);
			            if(v_pageNo > v_pageVal - 1) {
			                v_pageNo = v_total / v_page;
			            }
			            var v_start = (v_pageNo - 1) * v_page;
			            var v_end = v_start + (v_page - 1);
			            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
			            for(var i=1; i<=v_pageVal; i++) {
			                if(i == v_pageNo) {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                } else {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                }
			            }
			            v_tblStr += "</div>";
			            page.innerHTML = v_tblStr;
			        	console.log(v_json.length);
						var top4 = 375;
						var level4 = 273;
						var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>"
						for(var i=v_start; i<=v_end; i++) {
							v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
							v_div += "<div style='position: absolute; left: 790px;'>";
							v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
							v_div += "<i class='fa fa-heart'></i><br>";
							v_div += "</div>";
							v_div += "<div class='green'>";
							v_div += "모집중";
							v_div += "</div>";
							v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
							v_div += v_json[i].pjTit;
							v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
							v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
							v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
							v_div += "</div>";
							v_div += "</div>";
							v_div += "<div style='display: inline-block;'>";
							v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
							v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
							v_div += "</div>";
							v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
							v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
							v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
							v_div += "</div>";
							v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
							v_div += v_json[i].pjWork;
							v_div += "</div>";
							v_div += "<div>";
							if(v_json[i].pjProg == "외주(도급)") {
								v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							} else {
								v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							}
							v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
							v_div += "</div>";
							v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "등록 일자 " + v_json[i].pjRegDt;
							v_div += "</div>";
							v_div += "</div>";
							v_div += "</div>";
							top4 += level4;
				        }
						v_div += "</div>";
						order.innerHTML = v_div;
				     },
			         error : function(request, status, error) {
			        	 
			            console.log("code: " + request.status)
			            console.log("message: " + request.responseText)
			            console.log("error: " + error);
			         }
			      });
			   });
			$("#bud2").keyup(function() {
			      let bud2 = $("#bud2").val();
			      if(!inbud2.value) {
			    	  bud2 = 2147483646;
			      }
			      console.log("bud2",inbud2.value);
			      $.ajax({
			         url : "bud2.do",
			         type : "get",
			         data : {"bud2":bud2},
			         dataType : "html",
			         success : function(result) {
			        	var v_json = JSON.parse(result);
			        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
			        	var v_pageNo = request.getParameter("pageNo");
			        	if(!v_pageNo) {
			                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
			            }
			        	if(ing != "금액2") {
			        		ing = "금액2";
			        		v_pageNo = 1;
			        	}
			        	var v_total = v_json.length;
			            var v_pageVal = Math.ceil(v_total / v_page);
			            if(v_pageNo > v_pageVal - 1) {
			                v_pageNo = v_total / v_page;
			            }
			            var v_start = (v_pageNo - 1) * v_page;
			            var v_end = v_start + (v_page - 1);
			            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
			            for(var i=1; i<=v_pageVal; i++) {
			                if(i == v_pageNo) {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                } else {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                }
			            }
			            v_tblStr += "</div>";
			            page.innerHTML = v_tblStr;
			        	console.log(v_json.length);
						var top4 = 375;
						var level4 = 273;
						var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>"
						for(var i=v_start; i<=v_end; i++) {
							v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
							v_div += "<div style='position: absolute; left: 790px;'>";
							v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
							v_div += "<i class='fa fa-heart'></i><br>";
							v_div += "</div>";
							v_div += "<div class='green'>";
							v_div += "모집중";
							v_div += "</div>";
							v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
							v_div += v_json[i].pjTit;
							v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
							v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
							v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
							v_div += "</div>";
							v_div += "</div>";
							v_div += "<div style='display: inline-block;'>";
							v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
							v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
							v_div += "</div>";
							v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
							v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
							v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
							v_div += "</div>";
							v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
							v_div += v_json[i].pjWork;
							v_div += "</div>";
							v_div += "<div>";
							if(v_json[i].pjProg == "외주(도급)") {
								v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							} else {
								v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							}
							v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
							v_div += "</div>";
							v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "등록 일자 " + v_json[i].pjRegDt;
							v_div += "</div>";
							v_div += "</div>";
							v_div += "</div>";
							top4 += level4;
				        }
						v_div += "</div>";
						order.innerHTML = v_div;
				     },
			         error : function(request, status, error) {

			            console.log("code: " + request.status)
			            console.log("message: " + request.responseText)
			            console.log("error: " + error);
			         }
			      });
			   });
			$("#dat1").keyup(function() {
			      let dat1 = $("#dat1").val();
				  if(!indat1.value) {
					dat1 = 0;
				  }
			      console.log("dat1",indat1.value);
			      $.ajax({
			         url : "dat1.do",
			         type : "get",
			         data : {"dat1":dat1},
			         dataType : "html",
			         success : function(result) {
			        	var v_json = JSON.parse(result);
			        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
			        	var v_pageNo = request.getParameter("pageNo");
			        	if(!v_pageNo) {
			                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
			            }
			        	if(ing != "기간1") {
			        		ing = "기간1";
			        		v_pageNo = 1;
			        	}
			        	var v_total = v_json.length;
			            var v_pageVal = Math.ceil(v_total / v_page);
			            if(v_pageNo > v_pageVal - 1) {
			                v_pageNo = v_total / v_page;
			            }
			            var v_start = (v_pageNo - 1) * v_page;
			            var v_end = v_start + (v_page - 1);
			            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
			            for(var i=1; i<=v_pageVal; i++) {
			                if(i == v_pageNo) {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                } else {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                }
			            }
			            v_tblStr += "</div>";
			            page.innerHTML = v_tblStr;
			        	console.log(v_json.length);
						var top4 = 375;
						var level4 = 273;
						var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>"
						for(var i=v_start; i<=v_end; i++) {
							v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
							v_div += "<div style='position: absolute; left: 790px;'>";
							v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
							v_div += "<i class='fa fa-heart'></i><br>";
							v_div += "</div>";
							v_div += "<div class='green'>";
							v_div += "모집중";
							v_div += "</div>";
							v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
							v_div += v_json[i].pjTit;
							v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
							v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
							v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
							v_div += "</div>";
							v_div += "</div>";
							v_div += "<div style='display: inline-block;'>";
							v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
							v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
							v_div += "</div>";
							v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
							v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
							v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
							v_div += "</div>";
							v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
							v_div += v_json[i].pjWork;
							v_div += "</div>";
							v_div += "<div>";
							if(v_json[i].pjProg == "외주(도급)") {
								v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							} else {
								v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							}
							v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
							v_div += "</div>";
							v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "등록 일자 " + v_json[i].pjRegDt;
							v_div += "</div>";
							v_div += "</div>";
							v_div += "</div>";
							top4 += level4;
				        }
						v_div += "</div>";
						order.innerHTML = v_div;
				     },
			         error : function(request, status, error) {
			        	 
			            console.log("code: " + request.status)
			            console.log("message: " + request.responseText)
			            console.log("error: " + error);
			         }
			      });
			   });
			$("#dat2").keyup(function() {
			      let dat2 = $("#dat2").val();
			      if(!indat2.value) {
			    	  dat2 = 365;
			      }
			      console.log("dat2",indat2.value);
			      $.ajax({
			         url : "dat2.do",
			         type : "get",
			         data : {"dat2":dat2},
			         dataType : "html",
			         success : function(result) {
			        	var v_json = JSON.parse(result);
			        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
			        	var v_pageNo = request.getParameter("pageNo");
			        	if(!v_pageNo) {
			                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
			            }
			        	if(ing != "기간2") {
			        		ing = "기간2";
			        		v_pageNo = 1;
			        	}
			        	var v_total = v_json.length;
			            var v_pageVal = Math.ceil(v_total / v_page);
			            if(v_pageNo > v_pageVal - 1) {
			                v_pageNo = v_total / v_page;
			            }
			            var v_start = (v_pageNo - 1) * v_page;
			            var v_end = v_start + (v_page - 1);
			            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
			            for(var i=1; i<=v_pageVal; i++) {
			                if(i == v_pageNo) {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                } else {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                }
			            }
			            v_tblStr += "</div>";
			            page.innerHTML = v_tblStr;
			        	console.log(v_json.length);
						var top4 = 375;
						var level4 = 273;
						var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>"
						for(var i=v_start; i<=v_end; i++) {
							v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
							v_div += "<div style='position: absolute; left: 790px;'>";
							v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
							v_div += "<i class='fa fa-heart'></i><br>";
							v_div += "</div>";
							v_div += "<div class='green'>";
							v_div += "모집중";
							v_div += "</div>";
							v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
							v_div += v_json[i].pjTit;
							v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
							v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
							v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
							v_div += "</div>";
							v_div += "</div>";
							v_div += "<div style='display: inline-block;'>";
							v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
							v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
							v_div += "</div>";
							v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
							v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
							v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
							v_div += "</div>";
							v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
							v_div += v_json[i].pjWork;
							v_div += "</div>";
							v_div += "<div>";
							if(v_json[i].pjProg == "외주(도급)") {
								v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							} else {
								v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							}
							v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
							v_div += "</div>";
							v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "등록 일자 " + v_json[i].pjRegDt;
							v_div += "</div>";
							v_div += "</div>";
							v_div += "</div>";
							top4 += level4;
				        }
						v_div += "</div>";
						order.innerHTML = v_div;
				     },
			         error : function(request, status, error) {

			            console.log("code: " + request.status)
			            console.log("message: " + request.responseText)
			            console.log("error: " + error);
			         }
			      });
			   });
			$("#srhBtn").click(function() {
			      let search = $("#srh").val();
			      let select = "";
			      if(sel.children[0].selected) {
			    	  select = sel.children[0].value;
			      }
			      if(sel.children[1].selected) {
			    	  select = sel.children[1].value;
			      }
			      if(sel.children[2].selected) {
			    	  select = sel.children[2].value;
			      }
			      if(!insrh.value) {
			    	  search = "";
			      }
			      console.log("search:",search);
			      console.log("sel:",select);
			      $.ajax({
			         url : "search.do",
			         type : "get",
			         data : {"search":search, "select":select},
			         dataType : "text",
			         success : function(result) {
			        	var v_json = JSON.parse(result);
			        	var v_page = 5; // 페이지당 10개가 나오게 하려고 함
			        	var v_pageNo = request.getParameter("pageNo");
			        	if(!v_pageNo) {
			                v_pageNo = 1; // 페이지 넘버가 넘어온적이 없다면 기본 1페이지
			            }
			        	if(ing != "검색") {
			        		ing = "검색";
			        		v_pageNo = 1;
			        	}
			        	var v_total = v_json.length;
			            var v_pageVal = Math.ceil(v_total / v_page);
			            if(v_pageNo > v_pageVal - 1) {
			                v_pageNo = v_total / v_page;
			            }
			            var v_start = (v_pageNo - 1) * v_page;
			            var v_end = v_start + (v_page - 1);
			            var v_tblStr = "<div style=' text-align: center; width: 850px; padding-bottom: 25px; padding-left: 0px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: 1738px;'>";
			            for(var i=1; i<=v_pageVal; i++) {
			                if(i == v_pageNo) {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                } else {
			                    v_tblStr += "<a style='text-decoration: none; color: black;' href='projectFind.do?pageNo=" + i + "'>[" + i + "]</a>&nbsp;";
			                }
			            }
			            v_tblStr += "</div>";
			            page.innerHTML = v_tblStr;
			        	console.log(v_json.length);
						var top4 = 375;
						var level4 = 273;
						var v_div = "<div style='display: block; position: absolute; top: 0px; left: 0px;'>"
						for(var i=v_start; i<=v_end; i++) {
							v_div += "<div id='disp' style='width: 825px; padding-bottom: 25px; padding-left: 25px; padding-top: 25px; position: absolute; border: 1px solid #E0E0E0; left: 600px; top: " + top4 + "px;'>";
							v_div += "<div style='position: absolute; left: 790px;'>";
							v_div += "<input type='checkbox' class='like-btn' name='' value=''>";
							v_div += "<i class='fa fa-heart'></i><br>";
							v_div += "</div>";
							v_div += "<div class='green'>";
							v_div += "모집중";
							v_div += "</div>";
							v_div += "<div style='margin-top: 15px; margin-bottom: 15px; font-size:13pt; font-weight: bold;'>";
							v_div += v_json[i].pjTit;
							v_div += "<div style='color: #848484; padding-bottom: 15px; width: 160px; top: 60px; border-bottom: 1px solid black; line-height: 20pt; font-size: 11pt; left: 630px; position: absolute; display:inline-block;'>";
							v_div += "<img src='./images/ma-1.png'>&nbsp;마감 14일 전 <br>";
							v_div += "<img src='./images/pp-1.png'>&nbsp;총 0명 지원";
							v_div += "</div>";
							v_div += "</div>";
							v_div += "<div style='display: inline-block;'>";
							v_div += "<img src='./images/won-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상 금액 " + v_json[i].pjBud.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원</i><br>";
							v_div += "<img src='./images/time-1.png'><i style='font-size: 11pt; margin-right: 25px;'>&nbsp;예상기간 " + v_json[i].pjProgDt + "일</i>";
							v_div += "</div>";
							v_div += "<div style='padding-left: 25px; border-left: 1px solid black; display: inline-block;'>";
							v_div += "<img src='./images/cate-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjCat + "</i><br>";
							v_div += "<img src='./images/fi-1.png'><i style='font-size: 11pt;'>&nbsp;" + v_json[i].pjFi + "</i>";
							v_div += "</div>";
							v_div += "<div class='area ellipsis' style=' color: #848484; padding-top: 5px; padding-bottom: 5px; font-size: 10pt;'>";
							v_div += v_json[i].pjWork;
							v_div += "</div>";
							v_div += "<div>";
							if(v_json[i].pjProg == "외주(도급)") {
								v_div += "<div class='prog1' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							} else {
								v_div += "<div class='prog2' style='display: inline-block; font-weight: 900;'>";
								v_div += v_json[i].pjProg;
								v_div += "</div>";
							}
							v_div += "<div style='color: #858585; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "<img src='./images/loc-1.png'> " + v_json[i].pjClLo;
							v_div += "</div>";
							v_div += "<div style='color: #C2C2C2; margin-left: 15px; border-left: 1px solid black; padding-left: 15px; display: inline-block; font-size:9pt;'>";
							v_div += "등록 일자 " + v_json[i].pjRegDt;
							v_div += "</div>";
							v_div += "</div>";
							v_div += "</div>";
							top4 += level4;
				        }
						v_div += "</div>";
						order.innerHTML = v_div;
				     },
			         error : function(request, status, error) {

			            console.log("code: " + request.status)
			            console.log("message: " + request.responseText)
			            console.log("error: " + error);
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
				    		$("#order").hide();
				    		$('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + 
				    		top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 
				    		'px; z-index:9999; background:white; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="./images/loading.gif" style="width:200px; height:200px;"></div>');
				    	}
				    },
				    complete: function () {
				    	$("#div_ajax_load_image").hide();
				    	$("#order").show();
				    }
			      });
			   });
	</script>
</body>
</html>
<%@ include file="./footer.jsp"%>