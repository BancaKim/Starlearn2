<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<c:import url="../nav.jsp"></c:import>
<style>
    @font-face {
        font-family: 'NanumSquareRound';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
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
    
    main {
        text-align: center; /* Center align content */
        width: 1100px; /* Set fixed width */
        margin: 200px auto 0; /* Center align horizontally */

    }
</style>

<body>
<main>

	 <img src="${pageContext.request.contextPath}/resources/images/hr1.png"><br>
     <img src="${pageContext.request.contextPath}/resources/images/hr2.png"><br>
     <img src="${pageContext.request.contextPath}/resources/images/hr3.png"><br>
     <img src="${pageContext.request.contextPath}/resources/images/hr4.png">
	<br><br><br><br>
</main>
<c:import url="../footer.jsp"></c:import>
</body>
</html>