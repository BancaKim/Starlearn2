<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타런</title>
	<c:choose>
		<c:when test="${user_id == 'admin'}">
			<c:import url="../nav_admin.jsp"></c:import>
		</c:when>
		<c:otherwise>
			<c:import url="../nav.jsp"></c:import>		
		</c:otherwise>
	</c:choose>
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
        position: relative; /* Set as relative position */
    }
    #title {
        font-size: 32px;
        font-weight: bold;
    }
    table{
    	text-align:left;
    }
    #subTitle{
    	font-size: 32px;
        font-weight: bold;
    }
    #user{
    	font-size: 12px;
    	color: #84888b;
    }
</style>
<script>
function validateForm() {
    var replay = document.getElementById("replay").value;
    if (replay === '') {
        swal("내용을 입력해주세요.");
        return false;
    }
    
    document.replayForm.submit();
    
    return true;
}

</script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<main>
<div id="title">QnA</div>
<br>
<table>
	 <c:forEach var="qnaDetail" items="${QaAListDetail}">
	<tr>
		<td id="subTitle">${qnaDetail.title}</td>
	</tr>
	<tr>
		<td id="user">${qnaDetail.dp}&nbsp;${qnaDetail.user_name} | ${qnaDetail.date}</td>
	</tr>
	<tr>
		<td> &nbsp;&nbsp; </td>
	</tr>
	<tr>
		<td>${qnaDetail.content}</td>
	</tr>
	</c:forEach>
</table>
<hr>
<table>
	 <c:forEach var="reply" items="${replay}">
	<tr>
		<td>${reply.content}</td>
	</tr>
	<tr>
		<td id="user">${name}&nbsp;${reply.date} | ${qnaDetail.date}</td>
	</tr>
	</c:forEach>
</table>
<br><br>
	<c:choose>
		<c:when test="${user_id == 'admin'}">
			<div id="reply_admin">
				<form action="${pageContext.request.contextPath}/HelpDesk/adminReplay" method="post" name="replayForm" >
					<textarea class="form-control" placeholder="내용을 입력해주세요" id="replay" name="replay" rows="3"></textarea>
					<br>
					<input type="hidden" value="${index}" name="index" id="index">
				</form>
			
			<div style="text-align:right">
				<button type="button" class="btn btn-warning" onclick="validateForm()">등록</button>
				<button type="button" class="btn btn-secondary" onclick="javascript:history.go(-1)">돌아가기</button>
			</div>
			</div>
		</c:when>
		<c:otherwise>
			<br><Br>
			<button type="button" class="btn btn-secondary" onclick="javascript:history.go(-1)">돌아가기</button>
		</c:otherwise>
	</c:choose>


	


</main>

</body>
</html>