<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타런</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminMain.css"/>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
	<c:choose>
		<c:when test="${user_id == 'admin'}">
			<c:import url="../nav_admin.jsp"></c:import>
		</c:when>
		<c:otherwise>
			<c:import url="../nav.jsp"></c:import>		
		</c:otherwise>
	</c:choose>
	<main>
		<div class="bg-video">
  		<video class="bg-video__content" autoplay muted loop>
   		 <source src="${pageContext.request.contextPath}/resources/images/login_bg_video.mp4" type="video/mp4" />
  		</video>
	</div>
	</main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>
