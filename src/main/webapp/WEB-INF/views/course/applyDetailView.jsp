<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>스타런</title>
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
body {
	font-family: Arial, sans-serif;
	margin: 20px;
	padding: 0;
	background-color: #f8f9fa;
	color: #333;
}

.course-container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.course-header {
	text-align: center;
	 margin: 20px;
	margin-bottom: 20px;
}

.course-header p {
	margin: 5px 0;
	color: #666;
}

.course-header h1 {
	font-size: 24px;
	color: #333;
	margin: 10px 0;
}

.course-content {
	margin-top: 20px;
}

.course-section {
	margin-bottom: 20px;
}

.course-section h2 {
	font-size: 20px;
	margin-bottom: 10px;
	color: #007bff;
}

.course-row {
	display: flex;
	padding: 10px 0;
	border-bottom: 1px solid #ddd;
}

.course-row:last-child {
	border-bottom: none;
}

.course-label {
	flex: 0 0 100px;
	font-weight: bold;
	color: #555;
}

.course-value {
	flex: 1;
	color: #333;
}

.image-container {
	display: flex;
	justify-content: center;
	margin: 20px 0;
}

.button-container {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}
</style>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	<main style="margin: 100px auto 0;">
		<div class="course-container">
			<div class="image-container">
				<img style="width: 200px; height: 270px; border-radius: 15px;"
					src="${pageContext.request.contextPath}/userupload/${courseDetail.course_proflie}"
					alt="${pageContext.request.contextPath}/resources/images/courseDefaultImate.jpg">
			</div>

			<div class="course-header">
				<p>수강신청 정보</p>
				<h1>${courseDetail.course_name}</h1>
				<p>${courseDetail.operating_firm}| 연수기간:
					${courseDetail.course_start_date}~${courseDetail.course_end_date}</p>
				<p>
					신청기간:
					${courseDetail.course_entrol_start_date}~${courseDetail.course_entrol_end_date}
					<br> (${courseDetail.course_cancel_end_date} 23:59 까지 취소가능)
				</p>
			</div>
			<div class="course-content">
				<div class="course-section">
					<h2>과정안내</h2>
					<div class="course-row">
						<div class="course-label">과정명</div>
						<div class="course-value">${courseDetail.course_name}</div>
					</div>
					<div class="course-row">
						<div class="course-label">과정요약</div>
						<div class="course-value">${courseDetail.course_summary}</div>
					</div>
					<div class="course-row">
						<div class="course-label">과정상세</div>
						<div class="course-value">${courseDetail.course_details}</div>
					</div>
					<div class="course-row">
						<div class="course-label">난이도</div>
						<div class="course-value">${courseDetail.course_difficulty}</div>
					</div>
				</div>
			</div>
			<div class="button-container">
				<a href="UserCourseResister?course_ref=${courseDetail.course_ref}" class="btn btn-warning">신청하기</a>
			</div>
		</div>
	</main>
	<footer>
		<c:import url="../footer.jsp"></c:import>
	</footer>
</body>
</html>
