<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link href="${pageContext.request.contextPath}/resources/css/nav.css"
	rel="stylesheet">
<title>스타런</title>
</head>
<body>
	<header>
		<nav class="navbar">
			<div class="left-container">
				<a href="${pageContext.request.contextPath}/home" class="logo"> </a>
				${user_id}
				<ul class="main-menu">
					<li class="item">
						<div class="item__name">[관리자]연수관리</div>
						<div class="item__contents">
							<div class="contents__menu">
								<ul class="inner">
									<li><a href="${pageContext.request.contextPath}/course/courseResister">연수 등록</a></li>
									<li><a href=#>연수 삭제</a></li>
									<li><a href=#>연수 수정</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class="item">
						<div class="item__name">[관리자]회원관리</div>
						<div class="item__contents">
							<div class="contents__menu">
								<ul class="inner">
									<li><a href="${pageContext.request.contextPath}/admin/adminUserList">회원조회</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class="item">
						<a href="${pageContext.request.contextPath}/admin/adminTuition_refundList"><span class="item__name">[관리자]학원비 지원승인</span></a>
					</li>
							
								
					<li class="item">

						<div class="item__name">[관리자]생활연수</div>
						<div class="item__contents">
							<div class="contents__menu">
								<ul class="inner">
									<li><a href="${pageContext.request.contextPath}/facility/notice_view">공지사항</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class="item">
						<div class="item__name">[관리자]스타런분석</div>
						<div class="item__contents">
							<div class="contents__menu">
								<ul class="inner">
									<li><a href="${pageContext.request.contextPath}/admin/adminCharts">직원 통계</a></li>
									<li><a href="${pageContext.request.contextPath}/course/courseStatic">연수 통계</a></li>			
								</ul>
							</div>
						</div>

					</li>
					
					
					
					<li class="item">
						<a href="${pageContext.request.contextPath}/HelpDesk/QnA"><span class="item__name">[관리자]QnA 관리</span></a>
					</li>
					
				</ul>
			</div>
			<div class="right-container">
				<div class="iconRight">
					<a href="#"><i class="fa-xl fa-solid fa-bell align-middle"></i></a>
				</div>
				<div class="iconRight">
					<a href="#"><i class="fa-xl fa-solid fa-calendar align-middle"></i></a>
				</div>
				<div class="iconRight">
					<a href="${pageContext.request.contextPath}/logout"><i
						class="fa-solid fa-right-from-bracket"></i></a>
				</div>
				
				
				<c:if test="${user_id != null}">
				<div class="box">
					<img id="profile-img" class="profile"
						src="https://oimg1.kbstar.com/img/oabout/2021/bibi.png"/>
					<div class="dropdown-menu" id="dropdown-menu">
						<ul class="inner">
							<li><a href="#">마이페이지</a></li>
							<li><a href="#">Talent Board</a></li>
							<li><a href="#">역량개발평가</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul>
					</div>
				</div>
				</c:if>
				
			</div>
		</nav>
	</header>

	<!-- <script>
		document
				.getElementById('profile-img')
				.addEventListener(
						'click',
						function(event) {
							event.stopPropagation();
							var dropdownMenu = document
									.getElementById('dropdown-menu');
							dropdownMenu.style.display = dropdownMenu.style.display === 'block' ? 'none'
									: 'block';
						});

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('#profile-img')) {
				var dropdowns = document
						.getElementsByClassName("dropdown-menu");
				for (var i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.style.display === 'block') {
						openDropdown.style.display = 'none';
					}
				}
			}
		}
	</script> -->

</body>
</html>