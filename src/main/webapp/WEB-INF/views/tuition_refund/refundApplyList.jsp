<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원 신청 현황 조회</title>
<c:import url="../nav.jsp"></c:import>
<style>
    @font-face {
        font-family: 'NanumSquareRound';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }
    
    body {
        font-family: 'NanumSquareRound';
        color: #545045;
        font: normal 1rem/1.25;
        background-color: #fff; /* 바디 배경색을 하얀색으로 설정 */
        margin: 0;
        padding: 0;z
        height: 100vh;
        text-align: center;
    }
    #title{
        font-size: 32px;
        font-weight: bold;
    }
    #menu{
        padding: 8px;
        border-radius: 50rem;
        border: 1px solid #e8e8e8;
        background-color: #fff;
        line-height: 45px;
        display: inline-block;
        justify-content: center;
        align-items: center;
    }
    .menu-item {
        display: inline-block;
        cursor: pointer;
        transition: background-color 0.3s;
        margin: 0 15px;
        width: 150px;

    }
    .menu-item:hover,
    .menu-item:active {
        background-color: #f7f4f0;
        border-radius: 50rem;
         width: 150px;
    }
    #year {
    	display: none; /* 초기에는 숨겨진 상태 */
    	display: inline-block;
        height: 70px;
        background-color: #f7f4f0;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    #yesterdayRefund {
        display: none; /* 초기에는 숨겨진 상태 */
        position: relative;
	    width: 1200px;
	    padding: 0 0;
	    margin: auto;
	    
    }
	    #yesterdayRefund .header {
	        font-size: 18px;
	        font-weight: bold;
	    }
	     #yesterdayRefund .info {
            display: flex;
            justify-content: space-between;
    
        }
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 <script>
        function showYesterdayRefund() {
            var yesterdayRefund = document.getElementById('yesterdayRefund');
            var year = document.getElementById('year');

            // 토글 방식으로 보이기/숨기기
            if (yesterdayRefund.style.display === 'none') {
                yesterdayRefund.style.display = 'block';
                year.style.display = 'none'; // 연도 선택 숨기기
            } else {
                yesterdayRefund.style.display = 'none';
                year.style.display = 'block'; // 연도 선택 보이기
            }
        }
    </script>
</head>
<body>
    <br>
  	<br>
  	<br>
  	<br>
    <br>
  	<br>
  	<br>
    <div id="title">지원신청 현황 조회</div>
    <br>
       <div id="menu">
         <div class="menu-item">학원비 신청 이력</div>
         <div class="menu-item" onclick="showYesterdayRefund()"> 과거 신청 이력</div>
       </div>

    <br>
    <br>
    <div id="yesterdayRefund">
	    <div id="year">
	        <div class="menu-item">전체</div>
	        <div class="menu-item">2024</div>
	        <div class="menu-item">2023</div>
	    </div>
	
	    <br><br>
	    <div id="yesterdayRefundTable">
	        <div style="font-size: 18px; font-weight: bold; text-align: left;">학원비 신청 이력</div>
	        <br>
	        <div class="info">
	        <div >0건</div>
	        <div >신청 현황만 표시됩니다.</div>
	    	</div>
	    	<table class="table">
			  <thead>
			    <tr>
			      <td scope="col">관리번호</td>
			      <td scope="col">지원 분야</td>
			      <td scope="col">평가명</td>
			      <td scope="col">응시일</td>
			      <td scope="col">진행상태</td>
			      <td scope="col">지원금액</td>
			      <td scope="col"></td>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td colspan="2">Larry the Bird</td>
			      <td>@twitter</td>
			    </tr>
			  </tbody>
			</table>
	    	
	    </div>
    </div>
<c:import url="../footer.jsp"></c:import>
</body>
</html>