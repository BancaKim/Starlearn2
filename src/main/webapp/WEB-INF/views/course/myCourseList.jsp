<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 연수 현황 조회</title>
<c:import url="../nav.jsp"></c:import>
<style>
@font-face {
	font-family: 'NanumSquareRound';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 'NanumSquareRound';
	color: #545045;
	font: normal 1rem/1.25;
	background-color: #fff; /* 바디 배경색을 하얀색으로 설정 */
	margin: 0;
	padding: 0;
	height: 100vh;
}

main {
	text-align: center;
	margin: 200px auto 0; /* Center align horizontally */
	width:1400px;
}

#title {
	font-size: 32px;
	font-weight: bold;
}

#menu {
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
	background-color: transparent;
}

.menu-item:hover, .menu-item.active {
	background-color: #f7f4f0; /* 클릭 시 배경색 변경 */
	border-radius: 50rem;
	width: 150px;
}

#year {
	display: none; /* 초기에는 숨겨진 상태 */
	height: 70px;
	background-color: #f7f4f0;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 20px; /* 상단 여백 추가 */
}

.menu-item.vertical-middle {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	cursor: pointer;
	transition: color 0.3s; /* 글자색 변화 트랜지션 */
	margin: 0 15px;
	width: 150px;
	color: #545045; /* 기본 글자색 */
}

.menu-item.vertical-middle:hover, .menu-item.vertical-middle.active {
	color: #ffbc00; /* 호버 및 클릭 시 글자색 변경 */
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

.flex-container {
	display: flex;
	gap: 10px;
}

.flex-container select {
	width: 100%;
}

.date-input {
	width: 200px; /* 원하는 가로 크기로 설정 */
	display: inline-block;
}

.file-button {
	width: 184px;
	height: 50px;
	display: inline-block;
	color: black; /* 'font-color'는 유효한 CSS 속성이 아니므로 'color'로 수정 */
	background-color: #f7f4f0; /* 버튼 기본 색상 */
	border: none;
	border-radius: 4px; /* 둥근 모서리 */
	cursor: pointer;
	text-align: center;
	text-decoration: none; /* 링크 밑줄 제거 */
	transition: background-color 0.3s ease; /* 배경색 전환 효과 */
	line-height: 50px; /* 버튼 높이와 동일하게 설정하여 수직 중앙 정렬 */
	vertical-align: middle; /* 수직 정렬 */
	margin-left: 10px; /* 버튼과 입력 필드 사이 간격 조정 */
}

.file-button:hover {
	background-color: #e8e8e8; /* 호버 시 색상 */
}

.file-button:focus {
	outline: none; /* 포커스 시 아웃라인 제거 */
	box-shadow: 0 0 5px #007bff; /* 포커스 시 그림자 효과 */
}

.main {
	text-align: center;
	background-color: white;
	width:1400px;
}

.subject {
	text-align: center;
	width: 200px;
	height: 60p;
}

.form {
	width: 900px;
	height: 60p;
}

#caution {
	position: relative;
	min-height: 68px;
	padding: 22px 40px;
	background-color: #f7f4f0;
	width: 1100px;
	height: 380px;
}

table tr td {
	padding-bottom: 15px; /* 원하는 간격 크기로 설정 */
}
</style>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	function showYesterdayRefund() {
		// 과거 신청 이력 보기를 클릭할 때 호출되는 함수
		document.getElementById('yesterdayRefundTable').style.display = 'block'; // yesterdayRefundTable 보이기

		// 메뉴 아이템 스타일 변경
		document.getElementById('menuYesterday').classList.add('active');
		document.getElementById('menuYear').classList.remove('active');
	}

	// 페이지 로드 시 초기화
	window.onload = function() {
		// 학원비 신청 이력이 기본으로 선택되도록 설정
		showYesterdayRefund();
	};

	function AgoRefundList() {
		window.location.href = " ${pageContext.request.contextPath}/tuition_refund/AgoRefundList";
	}
	function detail(tuition_index) {
		window.location.href = "${pageContext.request.contextPath}/tuition_refund/RefundListDetail?tuition_index="
				+ tuition_index;
	}
</script>
</head>
<body>
	<main>
		<div id="title">연수신청 현황 조회</div>
		<br>


		<div id="yesterdayRefundTable">
			<br>

			<div class="info">
				<div>총 ${itemNum}건</div>

			</div>

			<table class="table">
				<thead>

					<tr>
						<th scope="col">과정명</th>
						<th scope="col">연수기간</th>
						<th scope="col">평가일</th>
						<th scope="col">불참(취소)가능기간</th>
						<th scope="col">신청구분</th>
						<th scope="col">불참(취소)/회차변경</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="myCourseList" items="${myCourseList}">
							<tr>
								<td>${myCourseList.course_name}</td>
								<td>${myCourseList.course_start_date}~${myCourseList.course_end_date}</td>
								<td>${myCourseList.course_end_date}</td>
								<td>${myCourseList.course_start_date}~${myCourseList.course_end_date}</td>
								<td>${myCourseList.enrollment_status}</td>
								<%-- <td>${myCourseList.course_name}</td> --%>


								<td><a
									href="applyCancelView?course_ref=${myCourseList.course_ref}"
									id="detail-btn" class="button-link">불참(취소)/회차변경</a></td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>



	</main>
	<br>

	<br>
	<br>
	<c:import url="../footer.jsp"></c:import>
</body>
</html>
