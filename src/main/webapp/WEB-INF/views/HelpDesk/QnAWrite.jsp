<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타런</title>
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
    var QnAtitle = document.getElementById('QnAtitle').value.trim();
    var content = document.getElementById('content').value.trim();
    var selectedValue = document.getElementById('categori').value;


    if (QnAtitle === '') {
        swal('제목을 입력해주세요.');
        return false;
    }
    
    if (selectedValue === null || selectedValue === "" || selectedValue === "카테고리를 선택해주세요") {
    	swal('카테고리를 선택해주세요.');
        return false; // 제출 방지
    }

    if (content === '') {
        swal('내용을 입력해주세요.');
        return false;
    }
	
    document.qna.submit();
    
    return true;
}



function back(){
	window.location.href = "${pageContext.request.contextPath}/HelpDesk/QnA";
}

</script>
</head>
<body>
<main>
	<div id="title">QnA 질의하기</div><br>
	<form action="${pageContext.request.contextPath}/HelpDesk/QnAInset" method="post" name="qna" id="qna">
	
	<table class="table table-bordered">
	 	<tr>
	 		<td>제목</td>
	 		<td>
	 			<input class="form-control" type="text" placeholder="제목을 입력해주세요" aria-label="default input example" id="QnAtitle" name="QnAtitle">
	 		</td>
	 	</tr>
	 	<tr>
	 		<td>작성자</td>
	 		<td>
	 			<input class="form-control" type="text" value="${info}"  disabled readonly>
	 		</td>
	 	</tr>
	 	<tr>
	 		<td>카테고리</td>
	 		<td>
	 			<select name ="categori" id="categori" class="form-select" aria-label="Default select example">
				  <option selected disabled>카테고리를 선택해주세요</option>
				  <option value="연수신청">연수신청</option>
				  <option value="학원비지원신청">학원비지원신청</option>
				  <option value="기타">기타</option>
				</select>
	 		</td>
	 	</tr>
	 	<tr>
	 		<td>내용</td>
	 		<td>
	 			<textarea class="form-control" placeholder="내용을 입력해주세요" id="content" name="content" rows="3"></textarea>
	 		</td>
	 	</tr>
	 	<input type="hidden" value="${dp}" id="dp" name="dp">
	 	<input type="hidden" value="${user_name}" id="user_name" name="user_name">
	 	
	</table>
	<br><br>
	<button type="button" class="btn btn-secondary" onclick="validateForm()">등록하기</button>
	<button type="button" class="btn btn-danger" onclick="back()">돌아가기</button>
	</form>
</main>
<br><br><Br>
<c:import url="../footer.jsp"></c:import>
</body>
</html>