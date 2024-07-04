courseView.jsp<%@ page language="java"
	contentType="text/html; charset=EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>��Ÿ��</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>


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
	margin: 0;
	padding: 0;
	height: 100vh;
}

/* .one-nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-size: 13px;
	height: 60px;
	margin: 20px;
} */
/* �⺻ ��Ÿ�� ���� */
.one-main {
	font-family: 'NanumSquareRound', Arial, sans-serif;
	padding-left: 20px;
	padding-right: 20px;
	/* 	padding-top: 10px; */
	padding-bottom: 10px;
	/* border: 0.2px solid #000000; */
}

.one-main-header {
	/* 	margin-bottom: 20px; */
	/* border: 0.2px solid #000000; */
	
}

.one-main-header-row {
	margin-bottom: 10px;
	text-align: center;
	/* 	border: 0.2px solid #000000; */
}

.one-main-callendar {
	display: flex;
	/* border: 0.2px solid #000000; */
	justify-content: center; /* ���η� �߾� ���� */
	align-items: center;
	gap: 10px;
}

.one-i-callendar {
	cursor: pointer;
	/* border: 0.2px solid #000000; */
	align-items: center;
}

.one-a-callendar {
	display: inline-block;
	text-align: center;
	width: 90px; /* ������ �ʺ� */
	height: 90px; /* ������ ���� */
	line-height: 20px; /* �ؽ�Ʈ ���� */
	overflow: hidden; /* ��ġ�� �ؽ�Ʈ ���� */
	/* 	border: 0.2px solid #8e8e8e;  */
	box-sizing: border-box; /* �׵θ��� �е��� ������ ũ�� ���� */
	border-radius: 15px; /* �׵θ� �ձ۰� */
}

.one-a-callendar:hover {
	border: 3px solid;
	border-color: #fc0;
	background-color: ghostwhite;
}

.break {
	display: block;
	margin: 0; /* ���� ���� */
}

.one-container {
	display: flex;
	gap: 15px; /* �̹��� ������ ���� */
	flex-wrap: wrap; /* ���� �ٷ� ���� �� �ְ� ���� */
	justify-content: left; /* ��Ҹ� �¿�� �� ä�� ��ġ */
}

.one-image-container {
	position: relative;
	width: 300px; /* �̹����� �ʺ� ���� */
	height: 400px; /* �̹����� ���� ���� */
}

.one-image-container img {
	width: 300px; /* �̹����� �ʺ� ���� */
	height: 400px; /* �̹����� ���� ���� */
	border-radius: 30px; /* �׵θ� �ձ۰� */
}

.one-overlay-text {
	position: absolute;
	bottom: 30px;
	left: 50%; /* �¿� �߾� ���� */
	transform: translate(-50%);
	color: white;
	font-size: 24px;
	font-weight: bold;
}

.one-image-container a {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 10;
	text-decoration: none;
	color: inherit;
}

.one-font24 {
	font-size: 24px;
}

.one-font18 {
	font-size: 18px;
}

.one-font14 {
	padding-top: 5px;
	font-size: 14px;
}

.one-a-callendar.today {
	background-color: #fc0;
}
</style>
<script>
	function handleClick() {
		alert('Calendar icon clicked!');
	}
</script>
</head>

<body>

	<c:import url="../nav.jsp"></c:import>
	<main style="margin: 100px auto 0; width:1400px;">

	<div class="one-main">
		<!-- <p>one-main</p> -->
		<div class="one-main-header">
			<p class="one-font14" style="color: #84888b;">Ȩ>���� ���ǽ� > �������ο���</p>
			<div class="one-main-header-row">
				<h4 style="text-align: 80px; font-weight:bold;">���� ���� ����</h4>
				<div class="one-main-callendar">


					<form action="courseView" method="post">
						<input type="hidden" name="direction" value="prev"> <input
							type="hidden" name="weekDate" value="${weekDates[0]}">
						<button type="submit" class="btn btn-light one-i-callendar"><</button>
					</form>

					<form action="courseView" method="post">

						<input type="hidden" name="weekDate" value="${weekDates[0]}">
						<input type="hidden" name="direction" value="thisPage">
						<button type="submit" style="font-size: 26px; color: #84888b;"
							class="btn btn-light break one-a-callendar one-font24 ${weekDates[0].isEqual(today) ? 'today' : ''}">
							${weekDates[0].dayOfMonth} <span class="break one-font14">��</span>
						</button>
					</form>

					<form action="courseView" method="post">
						<input type="hidden" name="weekDate" value="${weekDates[1]}">
						<input type="hidden" name="direction" value="thisPage">
						<button type="submit" style="font-size: 26px; color: #84888b;"
							class="btn btn-light break one-a-callendar one-font24 ${weekDates[1].isEqual(today) ? 'today' : ''}">
							${weekDates[1].dayOfMonth} <span class="break one-font14">ȭ</span>
						</button>
					</form>

					<form action="courseView" method="post">
						<input type="hidden" name="weekDate" value="${weekDates[2]}">
						<input type="hidden" name="direction" value="thisPage">
						<button type="submit" style="font-size: 26px; color: #84888b;"
							class="btn btn-light break one-a-callendar one-font24 ${weekDates[2].isEqual(today) ? 'today' : ''}">
							${weekDates[2].dayOfMonth} <span class="break one-font14">��</span>
						</button>
					</form>

					<form action="courseView" method="post">
						<input type="hidden" name="weekDate" value="${weekDates[3]}">
						<input type="hidden" name="direction" value="thisPage">
						<button type="submit" style="font-size: 26px; color: #84888b;"
							class="btn btn-light break one-a-callendar one-font24 ${weekDates[3].isEqual(today) ? 'today' : ''}">
							${weekDates[3].dayOfMonth} <span class="break one-font14">��</span>
						</button>
					</form>

					<form action="courseView" method="post">
						<input type="hidden" name="weekDate" value="${weekDates[4]}">
						<input type="hidden" name="direction" value="thisPage">
						<button type="submit" style="font-size: 26px; color: #84888b;"
							class="btn btn-light break one-a-callendar one-font24 ${weekDates[4].isEqual(today) ? 'today' : ''}">
							${weekDates[4].dayOfMonth} <span class="break one-font14">��</span>
						</button>
					</form>

					<form action="courseView" method="post">
						<input type="hidden" name="weekDate" value="${weekDates[5]}">
						<input type="hidden" name="direction" value="thisPage">
						<button type="submit" style="font-size: 26px; color: #84888b;"
							class="btn btn-light break one-a-callendar one-font24 ${weekDates[5].isEqual(today) ? 'today' : ''}">
							${weekDates[5].dayOfMonth} <span class="break one-font14">��</span>
						</button>
					</form>

					<form action="courseView" method="post">
						<input type="hidden" name="weekDate" value="${weekDates[6]}">
						<input type="hidden" name="direction" value="thisPage">
						<button type="submit" style="font-size: 26px; color: #84888b;"
							class="btn btn-light break one-a-callendar one-font24 ${weekDates[6].isEqual(today) ? 'today' : ''}">
							${weekDates[6].dayOfMonth} <span class="break one-font14">��</span>
						</button>
					</form>

					<form action="courseView" method="post">
						<input type="hidden" name="direction" value="next"> <input
							type="hidden" name="weekDate" value="${weekDates[6]}">
						<button type="submit" class="btn btn-light one-i-callendar">></button>
					</form>

				</div>
			</div>
		</div>
	</div>

	<div class="one-main">
		<div>
			<h4 style="text-align: 80px;">����</h4>
		</div>
	
		
			<div class="alert alert-secondary" style="color: #84888b;" role="alert">
				���� ��ϵ� ������ �����.</div>
	
	</div>

	<div class="one-main">
		<div>
			<h4 style="text-align: 80px;">���� �� ����</h4>
		</div>



		<div class="one-container">
			<c:forEach var="myCourse" items="${myCourseList}">
				<div class="one-image-container">
										<img
						src="${pageContext.request.contextPath}/userupload/${myCourse.course_proflie}"
						>
					<div class="one-overlay-text">${myCourse.course_name}</div>
					<a href="applyCancelView?course_ref=${myCourse.course_ref}"></a>
					<p class="one-font16" style="padding-top: 15px; margin: 0px;">KB��������</p>
					<p style="color: #84888b;">${myCourse.course_start_date}~${myCourse.course_end_date}</p>
					<p style="color: #8d744a;">���ϸ��� ${myCourse.mileage}</p>
				</div>
			</c:forEach>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>


		</main>

		<footer>
			<c:import url="../footer.jsp"></c:import>
		</footer>
</body>
</html>