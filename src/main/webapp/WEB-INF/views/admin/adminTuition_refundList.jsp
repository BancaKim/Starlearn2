<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.ParseException"%>


<!DOCTYPE html>
<html lang="ko">
<head>
		<c:choose>
		<c:when test="${user_id == 'admin'}">
			<c:import url="../nav_admin.jsp"></c:import>
		</c:when>
		<c:otherwise>
			<c:import url="../nav.jsp"></c:import>		
		</c:otherwise>
	</c:choose>
    <meta charset="UTF-8">
    <title>학원비 지원신청 </title>
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
		}
		main{
			text-align: center;
        	margin: 200px auto 0; /* Center align horizontally */
        	background-color: #ffff;
        	width:1100px;
		}
		#title {
			font-size: 32px;
			font-weight: bold;
		}

		#yesterdayRefundTable {
			display: block; /* 초기에는 보이도록 설정 */
			position: relative;
			width: 85%;
			padding: 0 0;
			margin: auto;
		}
		
		#yesterdayRefundTable .header {
			font-size: 18px;
			font-weight: bold;
			text-align: left;
		}
		
		#yesterdayRefundTable .info {
			display: flex;
			justify-content: space-between;
			align-items: center;
		}
		
		#yesterdayRefundTable .info div {
			flex: 1;
			text-align: left;
		}
		
		#yesterdayRefundTable .info .right {
			text-align: right;
		}
		
		th {
			font-size: 20px;
			color: #84888b;
			padding-top: 20px;
			padding-bottom: 20px;
			text-align: left;
		}
		
		table {
			width: 100%; /* 테이블 가로 너비 설정 */
			border-collapse: collapse; /* 테이블 경계선 결합 */
			vertical-align: middle;
			font-size: 16px;
		}
		
		td {
			text-align: left; /* 가운데 정렬 */
			padding-top: 16px;
			padding-bottom: 16px;
			vertical-align: middle;
		}
		
		td:first-child {
			text-align: left; /* 첫 번째 열은 왼쪽 정렬 */
		}
		
		#detail-btn {
			background-color: #fff;
			align-items: center;
			justify-content: center;
			cursor: pointer;
			height: 60px;
			padding: 0 32px;
			border-radius: 16px;
			vertical-align: middle;
			border: 1px solid #d7d7d7;
		}
		
		#detail-btn:hover {
			background-color: #f7f4f0;
		}
		.main {
			text-align: center;
			background-color: white;
		}
		
		table tr td {
			padding-bottom: 15px; /* 원하는 간격 크기로 설정 */
		}
</style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<body>
<main>
		<div id="title">학원비 지원 승인</div>
		<br>


		<div id="yesterdayRefundTable">
			<br>

			<div class="info">
				<div>총 ${count}건</div>

			</div>

			<table class="table">
				<thead>

					<tr>
						<th scope="col">신청일자</th>
						<th scope="col">사번</th>
						<th scope="col">학습구분 및 분야</th>
						<th scope="col">과정명</th>
						<th scope="col">지원금액</th>
						<th scope="col">상세보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="applyTuition" items="${ApplyTuitionList}">
							<tr>
								<td>${fn:substring(applyTuition.request_date, 0, 10)}</td>
								<td>${applyTuition.user_idn}</td>
								<td>${applyTuition.learning_division}/${applyTuition.learning_field}</td>
								<td>${applyTuition.academy_course}</td>
								<td>${applyTuition.refund_price}</td>
								<td><a href="${pageContext.request.contextPath}/tuition_refund/RefundListDetail?tuition_index=${applyTuition.tuition_index}" id="detail-btn" class="button-link">결재</a>
								</td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>



	</main>

</body>
</html>