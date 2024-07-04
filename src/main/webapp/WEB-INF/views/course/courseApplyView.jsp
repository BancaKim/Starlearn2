<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전체 연수 및 필터링한 연수 조회</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<style>
.one-main {
	font-family: 'NanumSquareRound', Arial, sans-serif;
	padding: 10px 20px;
	
}

.one-main-header-row {
	margin-bottom: 10px;
	text-align: center;
	border: 0.2px solid #000000;
}

.card-link {
	text-decoration: none;
	color: inherit;
	display: flex;
	width: 100%;
}

.card-body {
	flex: 1;
}

.accordion-button {
	background-color: #d3d3d3;
	border-radius: 5px;
}

.parent {
	position: relative;
}

.child {
	position: absolute;
	bottom: 0;
	right: 0;
}

@font-face {
	font-family: 'NanumSquareRound';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

#title {
	font-size: 32px;
	font-weight: bold;
}

#btn {
	text-align: right; /* Align button to the right */
	margin-top: 20px; /* Add top margin */
}

#search-area {
	min-width: 376px;
	height: 61px;
	border: 1px solid #e8e8e8;
	border-radius: 50rem;
	padding-right: 62px;
	padding-left: 2rem;
	position: relative; /* Set as relative position */
}

#search-btn {
	position: absolute; /* Set as absolute position */
	top: 50%; /* Align vertically */
	right: 8px; /* Adjust right position */
	transform: translateY(-50%); /* Center vertically */
	border: none; /* Remove border */
	background-color: transparent; /* Set background color transparent */
	cursor: pointer; /* Set cursor as pointer */
}

#search-btn svg {
	width: 1.2em; /* Adjust SVG size */
	height: 1.2em;
	fill: currentColor; /* Use current color for SVG */
}

<
style>.narrow_margin p {
	margin-top: 2px; /* 상단 간격 조정 */
	margin-bottom: 2px; /* 하단 간격 조정 */
}
</style>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	<main style="margin: 100px auto 0; width:1400px;">
		<div class="one-main">
			<br><br>
			<div>
				<h4 style="text-align: 80px;  font-weight:bold;">진행 중 연수</h4>
			</div>
			<c:forEach var="myCourse" items="${applyCourseList}">
				<div class="card d-flex flex-row mx-auto w-80 parent">
					<img style="width: 170px; height: 270px; border-radius: 15px;"
						src="${pageContext.request.contextPath}/userupload/${myCourse.course_proflie}"
						alt="Placeholder Image">

					<div class="card-body">
						<h5 class="card-title" style="font-weight:bold; font-size:30px; ">${myCourse.course_name}</h5>
						<p></p>
						<p>${myCourse.course_summary}</p>
						<p>${myCourse.operating_firm}</p>

						<p style="padding-top: 0px; color: #84888b;">연수기간
							${myCourse.course_start_date}~${myCourse.course_end_date}</p>
						<p style="padding-top: 0px; color: #84888b;">신청기간
							${myCourse.course_entrol_start_date}~${myCourse.course_entrol_end_date}</p>
						<p style="padding-top: 0px; color: #8d744a;">마일리지
							${myCourse.mileage} 신청정원 ${myCourse.course_capacity}</p>
					</div>

					<div class="child">

						<a href="applyDetailView?course_ref=${myCourse.course_ref}"
							style="text-align: center; line-height: 50px; width: 100px; height: 50px; background-color: #d3d3d3; border-radius: 5px; display: inline-block; text-decoration: none; color: black; text-align: center;"
							class="accordion-button">연수 신청</a>
					</div>
				</div>
			</c:forEach>


		</div>


	</main>
	<footer>
		<c:import url="../footer.jsp"></c:import>
	</footer>
</body>
</html>