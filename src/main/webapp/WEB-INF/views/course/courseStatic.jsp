<%@ page language="java"
    contentType="text/html; charset=EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>스타런</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	main{
		font-family: 'NanumSquareRound';
	}
	body{
		font-family: 'NanumSquareRound';
	}
	#title{
			font-family: 'NanumSquareRound';
		text-align:center;
		font-size:32px;
	   font-weight: bold;

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
	
    <h2>Monthly Report by Level 3</h2>
    <br><br><br><br>
    	<div id="title">연수 통계</div>
<section style="width: 90%; padding-left: 200px; font-size: 24px">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="aveScore-tab" data-bs-toggle="tab" data-bs-target="#aveScore" type="button" role="tab" aria-controls="aveScore" aria-selected="true">평균 점수</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="passPercent-tab" data-bs-toggle="tab" data-bs-target="#passPercent" type="button" role="tab" aria-controls="passPercent" aria-selected="false">합격률</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="sumApply-tab" data-bs-toggle="tab" data-bs-target="#sumApply" type="button" role="tab" aria-controls="sumApply" aria-selected="false">지원자 수</button>
        </li>
    </ul>

    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="aveScore" role="tabpanel" aria-labelledby="aveScore-tab">
            <canvas id="aveScoreChart" width="70%" height="30"></canvas>
        </div>
        <div class="tab-pane fade" id="passPercent" role="tabpanel" aria-labelledby="passPercent-tab">
            <canvas id="passPercentChart" width="70%" height="30"></canvas>
        </div>
        <div class="tab-pane fade" id="sumApply" role="tabpanel" aria-labelledby="sumApply-tab">
            <canvas id="sumApplyChart" width="70%" height="30"></canvas>
        </div>
    </div>
    </section>

    <script>
        // Convert Java data to JavaScript
        var level3Groups = {};

        <c:forEach var="courseStatic" items="${courseStatic}">
            var level = "${courseStatic.level3}";
            if (!level3Groups[level]) {
                level3Groups[level] = { yymm: [], aveScores: [], passPercents: [], sumApply: [] };
            }
            level3Groups[level].yymm.push("${courseStatic.yymm}");
            level3Groups[level].aveScores.push(${courseStatic.aveScore});
            level3Groups[level].passPercents.push(${courseStatic.passPercent});
            level3Groups[level].sumApply.push(${courseStatic.sumApply});
        </c:forEach>

        function getDatasets(level3Groups, metric) {
            var datasets = [];
            for (var level in level3Groups) {
                datasets.push({
                    label: level,
                    data: level3Groups[level][metric],
                    borderColor: getRandomColor(),
                    borderWidth: 1,
                    fill: false
                });
            }
            return datasets;
        }

        function getRandomColor() {
            var letters = '0123456789ABCDEF';
            var color = '#';
            for (var i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }

        var aveScoreCtx = document.getElementById('aveScoreChart').getContext('2d');
        var aveScoreChart = new Chart(aveScoreCtx, {
            type: 'line',
            data: {
                labels: level3Groups[Object.keys(level3Groups)[0]].yymm,
                datasets: getDatasets(level3Groups, 'aveScores')
            },
            options: {
                scales: {
                    x: {
                        title: {
                            display: true,
                            text: 'Year-Month'
                        }
                    },
                    y: {
                        title: {
                            display: true,
                            text: 'Average Score'
                        }
                    }
                }
            }
        });

        var passPercentCtx = document.getElementById('passPercentChart').getContext('2d');
        var passPercentChart = new Chart(passPercentCtx, {
            type: 'line',
            data: {
                labels: level3Groups[Object.keys(level3Groups)[0]].yymm,
                datasets: getDatasets(level3Groups, 'passPercents')
            },
            options: {
                scales: {
                    x: {
                        title: {
                            display: true,
                            text: 'Year-Month'
                        }
                    },
                    y: {
                        title: {
                            display: true,
                            text: 'Pass Percent'
                        }
                    }
                }
            }
        });

        var sumApplyCtx = document.getElementById('sumApplyChart').getContext('2d');
        var sumApplyChart = new Chart(sumApplyCtx, {
            type: 'line',
            data: {
                labels: level3Groups[Object.keys(level3Groups)[0]].yymm,
                datasets: getDatasets(level3Groups, 'sumApply')
            },
            options: {
                scales: {
                    x: {
                        title: {
                            display: true,
                            text: 'Year-Month'
                        }
                    },
                    y: {
                        title: {
                            display: true,
                            text: 'Sum Apply'
                        }
                    }
                }
            }
        });
    </script>
</body>
</html>
