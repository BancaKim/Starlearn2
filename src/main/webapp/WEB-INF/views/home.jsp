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
	<div class="row gx-3">
		<div class="itembox col-3 mycol-3">
			<div id="home_my">
			<div style="font-weight: bold; font-size:20px; ">${user_name}님 반가워요</div>
			<div style="font-size:16px; color:#84888b; ">L1 조사역 HR부(인재개발)</div><br><br><br><br>
			</div>
			<div id="home_my_buttom">
			<div>
			<a href="#">마이페이지</a><br>
			<a href="#">Hot Tube</a><br>
			<a href="#">연수신청</a><br>
			</div>
			<div id="collyImg">
				<img class="obj" src="${pageContext.request.contextPath}/resources/images/colly.svg" alt="멜랑 콜리">
			</div>
			</div>
		</div>
		<div class="itembox col-9">
			<video id="video" data-v-2187eb61="" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/hmpg/baner/thumb/20240524/1652204_d355685d.mp4" 
	tabindex="-1" role="application" loop="" muted="muted" playsinline="playsinline" autoplay="">
		</video>
	
		</div>
	</div>
	<div class="row gx-3">
		<div class="itembox col-3">
			오늘 일정
		</div>
		<div class="itembox col-6">
		지금 주목할 연수
		</div>
		<div class="itembox col-3">
		연수현황
		</div>
	</div>
	<div class="row gx-3">
		<div class="itembox col-3">
		핫팁
		</div>
		<div class="itembox col-9 cloud">
		HRD클라우드
		</div>
	</div>
	<div class="row gx-3">
	
		<div class="itembox col-3">
		최근 배지
		</div>
		<div class="itembox col-9 sslNote">
			SSL 학습노트
		</div>
	</div>	
	<div class="row gx-3">
		<div class="itembox col-2">
		핫팁
		</div>
		<div class="itembox col-2">
		쓸
		</div>
		<div class="itembox col-2">
		hrd 클라우드
		</div>
		<div class="itembox col-2">
		판매자격연수
		</div>
		<div class="itembox col-2">
		통합법정교육
		</div>
		<div class="itembox col-2">
		역량개발평가
		</div>
	</div>
		
	
	</main>
	
	<c:import url="./footer.jsp"></c:import>
</body>
</html>
