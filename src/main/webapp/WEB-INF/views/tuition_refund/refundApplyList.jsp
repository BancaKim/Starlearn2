<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��û ��Ȳ ��ȸ</title>
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
		    background-color: #f7f4f0;
		}
</style>
</head>
<body>
	<div class ="main">
		<br>
  		<br>
  		<br>
  		<br>
    	<br>
  		<br>
  		<br>
        <div id="title">�п��� ������û</div>
  		<br>
  		<Br>
  		<Br>
        <div>
        	<button type="button" id="kb-btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  			������û
			</button>
        </div>
        <br>

	</div>

<c:import url="../footer.jsp"></c:import>
</body>
</html>