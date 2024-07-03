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
		<h2>1.관리자 메뉴</h2>
		<section class="admin_menu">	
			<div>
				<div class="card me-5" style="width: 18rem;">
				  <div class="card-header">
				    연수관리
				  </div>
				  <ul class="list-group list-group-flush">
				    <li class="list-group-item">연수등록</li>
				    <li class="list-group-item">연수삭제</li>
				    <li class="list-group-item">연수수정</li>
				  </ul>
				</div>
			</div>
			<div>
				<div class="card me-5" style="width: 18rem;">
				  <div class="card-header">
				    회원관리
				  </div>
				  <ul class="list-group list-group-flush">
				    <li class="list-group-item">회원조회</li>
				    <li class="list-group-item">회원삭제</li>
				  </ul>
				</div>
			</div>
			<div>
				<div class="card" style="width: 18rem;">
				  <div class="card-header">
				    Featured
				  </div>
				  <ul class="list-group list-group-flush">
				    <li class="list-group-item">An item</li>
				    <li class="list-group-item">A second item</li>
				    <li class="list-group-item">A third item</li>
				  </ul>
				</div>
			</div>
		</section>
		<h2>2.데이터 분석</h2>
		<section>
			<div id="columnchart_material" style="width: 800px; height: 500px;"></div>
		</section>
	</main>
	
	<c:import url="../footer.jsp"></c:import>
	<script>
		google.charts.load('current', {'packages':['bar']});
		google.charts.setOnLoadCallback(drawChart);
		 
		function drawChart() {
		    var data = google.visualization.arrayToDataTable([
		        ['Year', 'Sales', 'Expenses', 'Profit'],
		        ['2014', 1000, 400, 200],
		        ['2015', 1170, 460, 250],
		        ['2016', 660, 1120, 300],
		        ['2017', 1030, 540, 350]
		    ]);
		 
		    var options = {
		        chart: {
		        title: 'Company Performance',
		        subtitle: 'Sales, Expenses, and Profit: 2014-2017',
		        }
		    };
		 
		    var chart = new google.charts.Bar(document.getElementById('columnchart_material'));
		 
		    chart.draw(data, google.charts.Bar.convertOptions(options));
		}
	</script>
</body>
</html>
