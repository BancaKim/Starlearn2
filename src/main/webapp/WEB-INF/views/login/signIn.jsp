<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signIn.css"/>
</head>
<body>

	<main>
	
	<div class="bg-video">
  		<video class="bg-video__content" autoplay muted loop>
   		 <source src="${pageContext.request.contextPath}/resources/images/login_bg_video.mp4" type="video/mp4" />
  		</video>
	</div>
	<div class="login-container">
		<div class="login-box">
			<div class="logo">
				<img src="${pageContext.request.contextPath}/resources/images/kblogo_signin.png" alt="스타런 로고"/>
			</div>
			<div class="lgoin-tabs">
				<button class="tab active" id="kb-tab" onclick="activateTab('kb-tab')">KB국민인증서 로그인</button>
				<button class="tab" id="password-tab" onclick="activateTab('password-tab')">비밀번호 로그인</button>
			</div>
			<form class="login-form" action="${pageContext.request.contextPath}/signInConfirm">
				<input type="text" placeholder = "아이디" class="login-input">
				<input type="password" placeholder = "비밀번호" class="login-input">
				<button type="submit" class="login-button">
				<i class="fa-solid fa-right-to-bracket"></i>2
				비밀번호 로그인</button>
			</form>
			<div class="options">
				<a href="#">비밀번호 재발급</a>
				<a href="${pageContext.request.contextPath}/signUp">회원가입</a>
			</div>
		</div>
	
	</div>
	
	</main>
	    <script>
        function activateTab(tabId) {
            var kbTab = document.getElementById('kb-tab');
            var passwordTab = document.getElementById('password-tab');

            if (tabId === 'kb-tab') {
                kbTab.classList.add('active');
                passwordTab.classList.remove('active');
            } else if (tabId === 'password-tab') {
                passwordTab.classList.add('active');
                kbTab.classList.remove('active');
            }
        }
    </script>
</body>
</html>