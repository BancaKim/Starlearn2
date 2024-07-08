<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타런</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminCharts.css"/>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<style>
        body, input, button, select, textarea {
            font-family: 'NanumSquareRound', sans-serif;
        }
        main{
        	background-color: #fff;
        }
    </style>
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
		<div id="title">직원 통계</div>
		<section class="charts_container">
			<div id="columnchart_values" style="width: 800px; height: 500px;"></div>
			<div id="piechart_ranks" style="width: 800px; height: 500px;"></div>
		</section>
		<br><br><br><br><br><br>
	</main>
	
	<c:import url="../footer.jsp"></c:import>
	<script>
	   google.charts.load('current', {'packages':['corechart']});
	   google.charts.setOnLoadCallback(drawCharts);
		// html이 모두 실행되면 차트 그리기 실행
	
		function drawCharts(){
			drawColumnChart();
			drawPieChart();
		}
		
		
		//그래프 그리기
	    function drawColumnChart() {
        var data = google.visualization.arrayToDataTable([
            ['Year', 'sum'],
            <c:forEach var="list" items="${list}">
                ['${list.enrollYear}', ${list.count}],
            </c:forEach>
        ]);

        var options = {
            title: '입행년도별 직원 분포',
            legend: { position: 'bottom' },
            hAxis: { title: '입행연도' },
            vAxis: { title: '직원 수' },
            bars: 'vertical',
            height: '100%',
            width: '100%'
        };
		 
        var chart = new google.visualization.ColumnChart(document.getElementById('columnchart_values'));

        chart.draw(data, options);
    }
		
	    function drawPieChart() {
	        var data = google.visualization.arrayToDataTable([
	            ['Rank', 'Count', { role: 'annotation' }],
	            <c:forEach var="rank" items="${ranklist}">
	                ['${rank.user_rank}', ${rank.count}, '${rank.user_rank}'],
	            </c:forEach>
	        ]);
	        
	        var options = {
	            title: '직급별 직원 분포',
	            height: '100%',
	            width: '100%',
	            pieSliceText: 'label',
	           /*  legend: 'none', */
	           pieSliceGap: 0,
	            slices: {
	                <c:forEach var="rank" items="${ranklist}" varStatus="status">
	                    ${status.index}: { offset: 0.1 },
	                </c:forEach>
	            },
	           /*  tooltip: { trigger: 'none' }, */
	            annotations: {
	                alwaysOutside: true,
	                textStyle: {
	                    fontSize: 12,
	                    auraColor: 'none',
	                    bold: true
	                }
	            }
	        };
             
            var chart = new google.visualization.PieChart(document.getElementById('piechart_ranks'));
            chart.draw(data, options);
        }
	</script>
	
</body>
</html>
