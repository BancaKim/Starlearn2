<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타런</title>

<style>

</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/home.css">
</head>
<body>
	<c:choose>
		<c:when test="${user_id == 'admin'}">
			<c:import url="./nav_admin.jsp"></c:import>
		</c:when>
		<c:otherwise>
			<c:import url="./nav.jsp"></c:import>		
		</c:otherwise>
	</c:choose>

	<main>
	<div class="row g-4 mb-4">
		<div class="itembox box1 col-3 mycol-3">
			<div id="home_my">
				<div style="font-weight: bold; font-size:20px; padding-left:20px; margin-bottom:20px;">${user_id}님 반가워요!</div>
				<div style="font-size:16px; color:#84888b; padding-left:20px;">${userBean.user_rank} ${userBean.user_position} ${userBean.user_dept}</div>
			</div>
			<div class="home_my_bottom">
				<div class="home_my_bottom_left">
					<ul>
						<li><a href="#">마이페이지<i class="fa-solid fa-chevron-right"></i></a></li>
						<li><a href="#">Hot Tube<i class="fa-solid fa-chevron-right"></i></a></li>
						<li><a href="#">연수신청<i class="fa-solid fa-chevron-right"></i></a></li>
					</ul>
					</div>
				<div class="home_my_bottom_right">
					<img class="colly" src="${pageContext.request.contextPath}/resources/images/ccoli.png" alt="멜랑 콜리">
				</div>
			</div>
		</div>
		
		<div class="itembox box1 col-9">
			<video id="video" data-v-2187eb61="" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/hmpg/baner/thumb/20240524/1652204_d355685d.mp4" 
	tabindex="-1" role="application" loop="" muted="muted" playsinline="playsinline" autoplay="">
		</video>
	
		</div>
	</div>
	<div class="row g-4 mb-4">
		<div class="itembox col-3">
			<div class="subtitle">오늘 일정</div>
			<hr>
			<p>일정이 없습니다.</p>
		</div>
		<div class="itembox col-6">                                                                                                                                                                                                                                                                                                                                                                                                                                                      
			<img class="hottip" src="${pageContext.request.contextPath}/resources/images/yeonsu.png">
		</div>
		<div class="itembox col-3 training-status">
			<div class="title-area">
				<div class="titles">
					<h3>연수현황</h3>
				</div>
			</div>
			<div class="status-wrapper">
				<ul class="status-list">
					<li class="status-item">
						<div class="status-inner">
							<div class="training-inner">
							<i class="fa-regular fa-clock"></i>&nbsp;
							<h5>진행중 연수</h5>
							</div>
							<a href="${pageContext.request.contextPath}/course/courseView"><i class="fa-solid fa-chevron-right"></i></a>
						</div>
					</li>
					<li class="status-item">
						<div class="status-inner">
							<div class="training-inner">
							<i class="fa-regular fa-circle-play"></i>&nbsp;
							<h5>예정된 연수</h5>
							</div>
							<a href="${pageContext.request.contextPath}/course/courseViewBooked"><i class="fa-solid fa-chevron-right"></i></a>
						</div>
					</li>
					<li class="status-item">
						<div class="status-inner">
							<div class="training-inner">
							<i class="fa-regular fa-circle-check"></i>&nbsp;
							<h5>완료된 연수</h5>
							</div>
							<a href="#"><i class="fa-solid fa-chevron-right"></i></a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row g-4 mb-4">
		<div class="itembox col-3">
			<img class="hottip" src="${pageContext.request.contextPath}/resources/images/hottip.png">

		</div>
		<div class="itembox col-9 cloud">
			<img class="hrdcloud" src="${pageContext.request.contextPath}/resources/images/hrdcloud.jpg">
		</div>
	</div>
	
	<div class="row g-4 mb-4">
		<div class="itembox col-3 sslNote">
			<img class="badge" src="${pageContext.request.contextPath}/resources/images/badge.jpg">
		</div>
		<div class="itembox col-9 sslNote">
			<img class="ssl" src="${pageContext.request.contextPath}/resources/images/ssl.png">
		</div>
	</div>	
	<div class="bottom-button">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/hottipicon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/sslicon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/cloudicon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/lectureicon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/lecture2icon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/evalicon.png">
	</div>
		
	
	</main>
	
	<c:import url="./footer.jsp"></c:import>
</body>
</html>
