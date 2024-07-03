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
        position: relative; /* Set as relative position */
    }
    #title {
        font-size: 32px;
        font-weight: bold;
    }
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	function validateForm() {
    var title = document.getElementById('title').value.trim();
    var content = document.getElementById('content').value.trim();

    if (title === '') {
        swal('제목을 입력해주세요.');
        return false;
    }

    if (content === '') {
        swal('내용을 입력해주세요.');
        return false;
    }

    return true;
}


</script>
</head>
<body>
<main>
	<div id="title">QnA 질의하기</div>
	<form action="" method="post">
	<table class="table table-borderless">
	 	<tr>
	 		<td>제목</td>
	 		<td>
	 			<input class="form-control" type="text" placeholder="제목을 입력해주세요" id="title" name="title">
	 		</td>
	 	</tr>
	 	<tr>
	 		<td>작성자</td>
	 		<td>
	 			<input class="form-control" type="text" value="Disabled readonly input" aria-label="Disabled input example" disabled readonly>
	 		</td>
	 	</tr>
	 	<tr>
	 		<td>내용</td>
	 		<td>
	 			<textarea class="form-control" placeholder="내용을 입력해주세요" id="content" name="content" rows="3"></textarea>
	 		</td>
	 	</tr>
	</table>
	<br><br>
	<button type="button" class="btn btn-secondary" onclick="">등록하기</button>
	<button type="button" class="btn btn-danger" onclick="">돌아가기</button>
	</form>
</main>
<c:import url="../footer.jsp"></c:import>
</body>
</html>