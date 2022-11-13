<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<script src="https://code.jquery.com/jquery-latest.min.js"
	type="application/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<script type="application/javascript"
	src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>

<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 정보 등록</title>
<style>
.box {
	display: inline-block;
	box-shadow: 2px 3px 5px 5px rgb(232, 232, 232);
	border-radius: 1%;
	z-index: 100;
	position: absolute;
	left: 700px;
	top: 90px;
	width: 800px;
	height: relative;
	background-color: white;
		padding-bottom:20px;
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
[type="radio"] {
  vertical-align: middle;
  appearance: none;
  border: max(2px, 0.1em) solid gray;
  border-radius: 50%;
  width: 1.25em;
  height: 1.25em;
  transition: border 0.5s ease-in-out;
}

[type="radio"]:checked {
  border: 0.4em solid #2E6BAA;
}

[type="radio"]:focus-visible {
  outline-offset: max(2px, 0.1em);
  outline: max(2px, 0.1em) dotted #2E6BAA;
}

[type="radio"]:hover {
  box-shadow: 0 0 0 max(4px, 0.2em) lightgray;
  cursor: pointer;
}

[type="radio"]:disabled {
  background-color: lightgray;
  box-shadow: none;
  opacity: 0.7;
  cursor: not-allowed;
}

[type="radio"]:disabled + span {
  opacity: 0.7;
  cursor: not-allowed;
}
.checkbox input {
  display: none;
}

select {
     width:160px;
     height:35px;
     padding:5px;
     border:1px solid #999;
     font-family:'Nanumgothic';
     border-radius:3px;
     -webkit-appearance: none;
     -moz-appearance: none;
     appearance : none;
}
</style>
</head>
<body>
	<form action="projectInsert5.do" method="post" id="projectInsert5Form">
		<input type="hidden" name="pjClLo" id="pjClLo" value="" />
		<div>
			<div
				style="position: relative; padding-left: 430px; padding-top: 70px; background-color: #F5F5F5; width: 1473px; height: 740px;">
				<h2>프로젝트 정보 등록</h2>
				<br> <br>
				<ul style="line-height: 40pt; list-style: none; font-size: 13pt;">
					<li>프로젝트 정보 등록</li>
				</ul>
				<ul style="line-height: 30pt; list-style: none; font-size: 13pt;">
					<li>1. 기본 정보 <img src="./images/check.png" width="17px"
						height="17px"></li>
					<li>2. 준비 상태 <img src="./images/check.png" width="17px"
						height="17px"></li>
					<li>3. 프로젝트 상세<img src="./images/check.png" width="17px"
						height="17px"></li>
					<li>4. 예산 및 일정<img src="./images/check.png" width="17px"
						height="17px"></li>
					<li>5. 미팅</li>
					<li>6. 모집 요건</li>
					<li>7. 추가 정보</li>
					<li>프로젝트 등록 완료</li>
				</ul>
			</div>
			<div class="box">
				<div
					style="font-size: 20pt; padding-left: 30px; padding-top: 30px; padding-bottom: 30px;">
					미팅</div>
				<hr>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>사전 미팅 방식</b> <b style="color: red;">*</b><br>
					<div style="font-size: 12pt; padding-top: 10px;">
						<p>임플이 클라이언트님에게 편한 미팅 방식으로 파트너와의 미팅 조율을 도와드립니다.</p><br> 
					</div>
					<div>
						<label> <input type="radio" name="preMeetingMethod"
							value="온라인" checked/> <span style="font-size: 13pt;">온라인
								(카카오톡, 화상미팅 등)</span>
						</label> <br> <label> <input type="radio"
							name="preMeetingMethod" value="오프라인" /> <span
							style="font-size: 13pt;">오프라인</span><br>
						</label>
					</div>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>진행 중 미팅</b> <b style="color: red;">*</b><br>
					<div style="font-size: 13pt; padding-top: 10px;">
						<b>미팅 방식</b><b style="color: red;">*</b><br> 
					</div>
					<div>
						<label> <input type="radio" name="meetingMethod"
							value="온라인" checked/> <span style="font-size: 12pt;">온라인
								(카카오톡, 화상미팅 등)</span>
						</label> <br> <label> <input type="radio"
							name="meetingMethod" value="오프라인" /> <span
							style="font-size: 12pt;">오프라인</span><br> <br>
						</label>
					</div>
					<div style="font-size: 13pt; padding-top: 10px;">
						<b>미팅 주기</b><b style="color: red;">*</b><br>
					</div>
					<div>
						<label> <input type="radio" name="meetingCycle"
							value="주 2회" /> <span style="font-size: 12pt;">주 2회</span>
						</label> <br> <label> <input type="radio" name="meetingCycle"
							value="주 1회" /> <span style="font-size: 12pt;">주 1회</span>
						</label><br> <label> <input type="radio" name="meetingCycle"
							value="필요시 요청" checked/> <span style="font-size: 12pt;">필요시 요청</span><br>
						</label>
					</div>
				</div>
				<div style="font-size: 15pt; padding-left: 30px; padding-top: 30px;">
					<b>클라이언트 위치</b> <b style="color: red;">*</b><br>
					<div style="font-size: 12pt; padding-top: 12px;">
						<p>파트너가 미팅 위치 선정시 클라이언트님의 위치를 참고합니다.</p><br> 
					</div>
					<select id="sido" name="si">
						<option value="">전체</option>
					</select> <select id="sigugun" name="gu">
						<option value="">전체</option>
					</select>
				</div>

				<br>
				<hr>
				<div>
					<button>계속</button>
				</div>
			</div>
		</div>
	</form>
	<script>
		jQuery(document)
				.ready(
						function() {
							//sido option 추가
							jQuery.each(hangjungdong.sido, function(idx, code) {
								//append를 이용하여 option 하위에 붙여넣음
								jQuery('#sido').append(
										fn_option(code.sido, code.codeNm));
							});

							//sido 변경시 시군구 option 추가
							jQuery('#sido')
									.change(
											function() {
												jQuery('#sigugun').show();
												jQuery('#sigugun').empty();
												jQuery('#sigugun').append(
														fn_option('', '선택')); //
												jQuery
														.each(
																hangjungdong.sigugun,
																function(idx,
																		code) {
																	if (jQuery(
																			'#sido > option:selected')
																			.val() == code.sido)
																		jQuery(
																				'#sigugun')
																				.append(
																						fn_option(
																								code.sigugun,
																								code.codeNm));
																});

												//세종특별자치시 예외처리
												//옵션값을 읽어 비교
												if (jQuery(
														'#sido option:selected')
														.val() == '36') {
													jQuery('#sigugun').hide();
													//index를 이용해서 selected 속성(attr)추가
													//기본 선택 옵션이 최상위로 index 0을 가짐
													jQuery(
															'#sigugun option:eq(1)')
															.attr('selected',
																	'selected');
													//trigger를 이용해 change 실행
													jQuery('#sigugun').trigger(
															'change');
												}
											});
						}); 
		function fn_option(code, name) {
			return '<option value="' + code +'">' + name + '</option>';
		}
		
		// form submit 보내기 전에 handler 
		// validate
		$("#projectInsert5Form").validate({
			submitHandler : function (form) {
				let sidoTxt = $("#sido option:selected").text();
				let sigugunTxt = $("#sigugun option:selected").text();
				let pjClLo = sidoTxt + " " + sigugunTxt;
				
				$("input[name='pjClLo']").val(pjClLo);
				$(form).submit();
			}
		});
	</script>
</body>
</html>
<%@ include file="./footer.jsp"%>