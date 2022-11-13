<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<style>
    * {
        margin: 0;
        padding: 0;
    }
    footer.f {
        background-color: rgb(239, 239, 239);
        position: relative;
        margin: 0 auto;
        border-top: 1px solid rgb(218, 218, 218);
        box-sizing: border-box;
        font-size: 12pt;
        height: 550px;
        width: 100%;
    }
    section.fo {
    	background-color: rgb(239, 239, 239);
        left: 340px;
        position: absolute;
        margin-top: 30px;
    }
    tr {
        line-height: 25pt;
        text-align: left;
        width: 200px;
    }
    .logo {
    	background-color: rgb(239, 239, 239);
        display: inline-block;
        position: absolute;
        left: 325px;
        top: 20px;
    }
    .pp {
    	background-color: rgb(239, 239, 239);
        left: 580px;
        top: 30px;
        position: absolute;
    }
    .table_f {
    	background-color: rgb(239, 239, 239);
        width: 830px;
    }
    .conte {
        position: absolute;
        border-top: 1px solid rgb(218, 218, 218);
        width: 100%;
        top: 300px
    }
    .tb {
    	display: inline-block;
    }
    .us {
    	top: 20px;
    	display: inline-block;
    }
    </style>
</head>
<body>
	<footer class="f">
        <section class="fo">
        <div class="tb">
        <table class="table_f">
        <tr>
            <th>임플</th>
            <th>고객센터></th>
            <th>뉴스센터></th>
            <th>이용후기></th>
        </tr>
        <tr>
            <td>임플 소개</td>
            <td>클라이언트 고객센터</td>
            <td>공지사항</td>
            <th>요즘 IT></th>
        </tr>
        <tr>
            <td>신뢰와 안전</td>
            <td>파트너스 고객센터</td>
            <td>임플 소식</td>
            <th>통합빌링 서비스></th>
        </tr>
        <tr>
            <td>이용약관</td>
            <td>이용요금</td>
            <td>임플 이용 팁</td>
            <td></td>
        </tr>
        <tr>
            <td>개인정보 처리방침</td>
            <td>클라이언트 이용방법</td>
            <td>프로젝트 성공사례</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>파트너스 이용방법</td>
            <td>언론 보도</td>
            <td></td>
        </tr>
        </table>
        </div>
        <div class="us">
        	<b>CONTACT US</b><br><br>
			02-6925-4849(10:00-18:00, 공휴일 제외)<br>
			help@impl.com
        </div>
        
        </section>
    <div class="conte">
        <div class="logo">
        	<img src="./images/impl-logo.png" width="140px" height="80px" />
        </div>
        <div class="pp">
            	주식회사 임플(대표이사:김강산)/ 서울특별시 강남구 테헤란로 211
            	한국고등교육재단빌딩 31층 (주)임플<br>
            	사업자등록번호:209-81-57302 / 통신판매업신고: 제2018-서울강남-02338호
            / 직업정보제공사업 신고번호: K1200020180020<br>
            © 2013 imp! Corp.
        </div>
    </div>
    </footer>
</body>
</html>