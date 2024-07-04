<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타런</title>

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
        background-color: #fff; /* 바디 배경색을 하얀색으로 설정 */
        height: 100vh;
        text-align: center; 
    }
    main {
    	font-family: 'NanumSquareRound';
        text-align: center; /* Center align content */
        width: 1780px; /* Set fixed width */
        position: relative; /* Set as relative position */
        padding-left:200px;
    }
    #mainbody{
    	 margin: 200px auto 0; /* Center align horizontally */
    }
    #title {
    	text-align: center;
        font-size: 32px;
       font-family: 'NanumSquareRound';
        font-weight: bold;
    }
    #kind {
        height: 70px;
        background-color: #f7f4f0;
        width: 100%;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        margin-top: 20px; /* 상단 여백 추가 */
    }
    #hrd_search {
        height: 48px;
        width: 240px;
        border: 1px solid transparent; /* 테두리 없애기 */
        border-radius: 50rem;
        padding-right: 62px;
        padding-left: 2rem;
        position: relative; /* Set as relative position */
        outline: none; /* 클릭 시 테두리 없애기 */
    }
    #hrd_search:focus {
        border: 1px solid transparent; /* 포커스 시 테두리 없애기 */
        outline: none; /* 포커스 시 테두리 없애기 */
    }
    #hrd_search-btn svg {
        width: 1.2em; /* Adjust SVG size */
        height: 1.2em;
        fill: currentColor; /* Use current color for SVG */
    }
    #hrd_search-btn {
        right: 8px; /* Adjust right position */
        border: none; /* Remove border */
        background-color: transparent; /* Set background color transparent */
        cursor: pointer; /* Set cursor as pointer */
        outline: none; /* Remove outline */
        padding: 0; /* Remove padding */
    }
    .menu-item{
        margin-right: 20px;
    }
    #search{
        width: 1800px; 
        text-align:right;
        display:flex;
        justify-content: flex; /* Right align */
        align-items: center; /* Center vertically */
        padding-left:1200px;
    }
    #hotTubeIcon{
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        border-radius: 16px;
        border: 1px solid transparent;
        background-color:#ffe4e1;
        height: 48px;
        width:170px;
        padding: 0 10px; /* Add padding around text */
    }
    #video{
    	padding-left:200px;
    }
    
    #vjs_video_3_html5_api{
	    #e8e8e8;
	    align-items: center;
	    justify-content: flex-end;
	     border-radius: 16px;
    }
    #mypage{
    	width:320px;
    	hight:410px;
    	border-radius: 16px;
    	border: 1px solid #e8e8e8;
    	margin-left:20px;
    }
    #my{
    	 display: flex;
    }
    #profiles{
    	width:320px;
    	hight:200px;
    	border-radius:50%;
    	text-align:center;
    }
    #profile-imgs{
    	width:170px;
    	hight:170px;
    	border-radius:50%;
    	padding-top:40px;
    	
    }
    #id{
    	 font-weight: bold;
    	 font-size:32px;
    }
    #idn{
    	font-size: 15px;
    	color: #84888b;
    }
    .home_my_bottom{
		align-items: left;
	    justify-content: space-between;
	}
	.home_my_bottom_left ul {
		margin-top:40px;
	}
	.home_my_bottom_left ul li{
		list-style:none;
		line-height:200%;
	}
	.home_my_bottom_left ul li a{
		color:#8d744a;
	}
	#thum{
		width:300px;
		heigth:200px;
		border-radius: 16px;
	}
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .swiper {
      width:1550px;
      height: 230px;
      margin: 20px auto;
    }

    .append-buttons {
      text-align: center;
      margin-top: 20px;
    }

    .append-buttons button {
      display: inline-block;
      cursor: pointer;
      border: 1px solid #007aff;
      color: #007aff;
      text-decoration: none;
      padding: 4px 10px;
      border-radius: 4px;
      margin: 0 10px;
      font-size: 13px;
    }
    .swiper-button-prev,
	.swiper-button-next {
	  background-color: #fff;
	  opacity: 0.5;
	  padding: 15px 5px;
	  border-radius: 20px;
	  color: black !important;
	}
	
	.swiper-button-prev:after,
	.swiper-button-next:after {
	  font-size: 1.1rem !important;
	  font-weight: 600 !important;
	}
	#subtitle{
		font-size:18px;
		font-weight: bold;
		text-align:left;
	}
	 .datetext{
    	font-size: 12px;
    	color: #84888b;
    }
</style>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	<div id="mainbody">
    <div id="title">HRD 클라우드</div>
    <br>
    <div id="search">
    	 <button id="hrd_search-btn">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
            </svg>
        </button>
        <input type="text" id="hrd_search" name="hrd_search" placeholder="HRD 클라우드 검색">
        <div id="hotTubeIcon">
        	<a href="${pageContext.request.contextPath}/HelpDesk/QnA">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-square-fill" viewBox="0 0 16 16">
  			<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm3.496 6.033a.237.237 0 0 1-.24-.247C5.35 4.091 6.737 3.5 8.005 3.5c1.396 0 2.672.73 2.672 2.24 0 1.08-.635 1.594-1.244 2.057-.737.559-1.01.768-1.01 1.486v.105a.25.25 0 0 1-.25.25h-.81a.25.25 0 0 1-.25-.246l-.004-.217c-.038-.927.495-1.498 1.168-1.987.59-.444.965-.736.965-1.371 0-.825-.628-1.168-1.314-1.168-.803 0-1.253.478-1.342 1.134-.018.137-.128.25-.266.25h-.825zm2.325 6.443c-.584 0-1.009-.394-1.009-.927 0-.552.425-.94 1.01-.94.609 0 1.028.388 1.028.94 0 .533-.42.927-1.029.927"/>
			</svg>&nbsp;
            	QnA 질의하기
            </a>
        </div>
       
    </div>
    <div id="kind">
        <div class="menu-item vertical-middle">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
                <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5"/>
            </svg>홈
        </div>
        <div class="menu-item vertical-middle">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-briefcase" viewBox="0 0 16 16">
                <path d="M6.5 1A1.5 1.5 0 0 0 5 2.5V3H1.5A1.5 1.5 0 0 0 0 4.5v8A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-8A1.5 1.5 0 0 0 14.5 3H11v-.5A1.5 1.5 0 0 0 9.5 1zm0 1h3a.5.5 0 0 1 .5.5V3H6v-.5a.5.5 0 0 1 .5-.5m1.886 6.914L15 7.151V12.5a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5V7.15l6.614 1.764a1.5 1.5 0 0 0 .772 0M1.5 4h13a.5.5 0 0 1 .5.5v1.616L8.129 7.948a.5.5 0 0 1-.258 0L1 6.116V4.5a.5.5 0 0 1 .5-.5"/>
            </svg>
            Hot Tube
        </div>
        <div class="menu-item vertical-middle">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-display" viewBox="0 0 16 16">
                <path d="M0 4s0-2 2-2h12s2 0 2 2v6s0 2-2 2h-4q0 1 .25 1.5H11a.5.5 0 0 1 0 1H5a.5.5 0 0 1 0-1h.75Q6 13 6 12H2s-2 0-2-2zm1.398-.855a.76.76 0 0 0-.254.302A1.5 1.5 0 0 0 1 4.01V10c0 .325.078.502.145.602q.105.156.302.254a1.5 1.5 0 0 0 .538.143L2.01 11H14c.325 0 .502-.078.602-.145a.76.76 0 0 0 .254-.302 1.5 1.5 0 0 0 .143-.538L15 9.99V4c0-.325-.078-.502-.145-.602a.76.76 0 0 0-.302-.254A1.5 1.5 0 0 0 13.99 3H2c-.325 0-.502.078-.602.145"/>
            </svg>
            직무 클라우드
        </div>
        
    </div>
    <br><br>

    <div id="my">
	    <div id="video">
	        <video id="vjs_video_3_html5_api" tabindex="-1" role="application" class="vjs-tech" loop="" muted="muted" playsinline="playsinline" autoplay="" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/hmpg/baner/thumb/20240108/1652204_fde64927.mp4"></video>
	    </div>
	    <div id="mypage">
	    	<div id="profiles">
	    	<img id="profile-imgs" class="profiles" src="${pageContext.request.contextPath}/userupload/${user_profile}">
	   		<div id="id">${user_id}</div>
	   		<div id="idn">${userIdn}</div>
	   	</div> 
	   		
	   		<div class="home_my_bottom_left">
					<ul>
						<li><a href="${pageContext.request.contextPath}/MyPage">마이페이지 &nbsp; <i class="fa-solid fa-chevron-right"></i></a></li>
						<li><a href="${pageContext.request.contextPath}/facility/apply_main">생활연수 신청 &nbsp;  <i class="fa-solid fa-chevron-right"></i></a></li>
						<li><a href="${pageContext.request.contextPath}/course/courseApplyView">연수신청 &nbsp;  <i class="fa-solid fa-chevron-right"></i></a></li>
					</ul>
			</div>
	    </div>
    </div>
    </div>
    <main>
   
    <Br><Br>
    
    <div id="subtitle">지금 주목해야할 콘텐츠</div>
     <hr>
    <div #swiperRef="" class="swiper mySwiper">
	  <div class="swiper-wrapper">
	    <div class="swiper-slide">
	    	<a href="https://www.youtube.com/watch?v=cbuZfY2S2UQ&t=3635s">
	    	<img id="thum"src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240502/049252c897754aa5a0df/Thumbnails/1652204_24733cfd95d54e118d29.PNG" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
	    	</a><br>
	    	<div>[이슈]저작권 어디까지 되나?</div>
			<div class="datetext">2024.07.04</div>
	    </div>
	    <div class="swiper-slide">
	    	<a href="https://www.youtube.com/watch?v=kWiCuklohdY">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240619/01fc779c14a84282bc7c/Thumbnails/3835551_080ff717dab54883b37a.0000009.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[이슈]정상회담 이슈정리</div>
			<div class="datetext">2022.05.04</div>
		</div>
	    <div class="swiper-slide">
	   		 <a href="https://www.youtube.com/watch?v=qspWEqvsJ5I">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1011004.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[노후]올바른 노후생활</div>
			<div class="datetext">2024.05.04</div>
		</div>
		<div class="swiper-slide">
			 <a href="https://www.youtube.com/watch?v=qMwzWk81tVM&t=7s">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240610/9c39d49601bf46328618/Thumbnails/2840534_45d8ee7c7b254caf8703.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[자산]생활비 감축하기!!</div>
			<div class="datetext">2024.03.11</div>
		</div>
	  	<div class="swiper-slide">
	  		 <a href="https://www.youtube.com/watch?v=KMErwuu5q5Q">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240618/18f15151b29a47eca0f7/Thumbnails/2853390_e39463243ae54441adce.0000009.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[보험]생명보험 파헤치기</div>
			<div class="datetext">2024.01.04</div>
		</div>
		<div class="swiper-slide">
			<a href="https://www.youtube.com/watch?v=4WTxn1hcsaI">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240701/2f6bdb11260b4d478416/Thumbnails/1653886_953a25bca8904d8a911d.0000009.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[사고]보이스 피싱:걸려온 전화</div>
			<div class="datetext">2024.01.08</div>
		</div>
		<div class="swiper-slide">
			<a href="https://www.youtube.com/watch?v=IVlbmAcJqdY">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1037021.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[문화]다같이 존중, 다함께</div>
			<div class="datetext">2024.06.24</div>
		</div>
		<div class="swiper-slide">
			<a href="https://www.youtube.com/watch?v=VleN8IpK2xA">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240627/a0652402eab4475494b6/Thumbnails/1653167_64fed78999d2450a8674.PNG" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[문화]검은돈의 유혹!</div>
			<div class="datetext">2023.05.04</div>
		</div>
		</div>
		<div class="swiper-button-next"></div>
   		<div class="swiper-button-prev"></div>

	</div>
	 
	<script>
	var swiper = new Swiper(".mySwiper", {
	      slidesPerView: 4,
	      centeredSlides: true,
	      spaceBetween: 30,
	      pagination: {
	        el: ".swiper-pagination",
	        type: "fraction",
	      },
	      navigation: {
	        nextEl: ".swiper-button-next",
	        prevEl: ".swiper-button-prev",
	      },
	      autoplay: {
              delay: 1000, // 10 seconds delay
              disableOnInteraction: false,
          },
	    });

	    var appendNumber = 4;
	    var prependNumber = 1;
	    document
	      .querySelector(".prepend-2-slides")
	      .addEventListener("click", function (e) {
	        e.preventDefault();
	        swiper.prependSlide([
	          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
	          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
	        ]);
	      });
	    document
	      .querySelector(".prepend-slide")
	      .addEventListener("click", function (e) {
	        e.preventDefault();
	        swiper.prependSlide(
	          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>"
	        );
	      });
	    document
	      .querySelector(".append-slide")
	      .addEventListener("click", function (e) {
	        e.preventDefault();
	        swiper.appendSlide(
	          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>"
	        );
	      });
	    document
	      .querySelector(".append-2-slides")
	      .addEventListener("click", function (e) {
	        e.preventDefault();
	        swiper.appendSlide([
	          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
	          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
	        ]);
	      });
	</script>

	<div id="subtitle">따끈따끈 콘텐츠</div>
	 <hr>
	<div  class="swiper mySwiper">
	  <div class="swiper-wrapper">
	    <div class="swiper-slide">
	    	<a href="https://www.youtube.com/watch?v=cbuZfY2S2UQ&t=3635s">
	    	<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240701/df0e330b442a4a3582ef/Thumbnails/5292737_f945faf3e5804d30afa8.0000009.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
	    	</a><br>
	    	<div>[보험]사고사는 어디까지?</div>
			<div class="datetext">2024.03.04</div>
	    </div>
	    <div class="swiper-slide">
	    	<a href="https://www.youtube.com/watch?v=kWiCuklohdY">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1010878.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[리브엠]리브엠 파헤치기!</div>
			<div class="datetext">2024.07.04</div>
		</div>
	    <div class="swiper-slide">
	   		 <a href="https://www.youtube.com/watch?v=qspWEqvsJ5I">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1022099.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[은실종]은실종 예상문제</div>
			<div class="datetext">2024.07.04</div>
		</div>
		<div class="swiper-slide">
			 <a href="https://www.youtube.com/watch?v=qMwzWk81tVM&t=7s">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1010855.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[독서]데미안 읽어보기</div>
			<div class="datetext">2023.01.03</div>
		</div>
	  	<div class="swiper-slide">
	  		 <a href="https://www.youtube.com/watch?v=KMErwuu5q5Q">
				<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1010877.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[ESG]환경문제 펭귄이 위험해!</div>
			<div class="datetext">2024.05.12</div>
		</div>
		<div class="swiper-slide">
			<a href="https://www.youtube.com/watch?v=4WTxn1hcsaI">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240701/2f6bdb11260b4d478416/Thumbnails/1653886_953a25bca8904d8a911d.0000009.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[자산]자산관리 채권?주식?</div>
			<div class="datetext">2023.04.15</div>
		</div>
		<div class="swiper-slide">
			<a href="https://www.youtube.com/watch?v=IVlbmAcJqdY">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1037021.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[문화]올바른 회식문화알기</div>
			<div class="datetext">2023.05.24</div>
		</div>
		<div class="swiper-slide">
			<a href="https://www.youtube.com/watch?v=VleN8IpK2xA">
			<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240627/a0652402eab4475494b6/Thumbnails/1653167_64fed78999d2450a8674.PNG" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			</a><br>
	    	<div>[문화]돈과의 전쟁</div>
			<div class="datetext">2024.07.04</div>
		</div>
		</div>
		<div class="swiper-button-next"></div>
   		<div class="swiper-button-prev"></div>

	</div>
	<script>
	var swiper = new Swiper(".mySwiper", {
	      slidesPerView: 4,
	      centeredSlides: true,
	      spaceBetween: 30,
	      pagination: {
	        el: ".swiper-pagination",
	        type: "fraction",
	      },
	      navigation: {
	        nextEl: ".swiper-button-next",
	        prevEl: ".swiper-button-prev",
	      },
	      autoplay: {
              delay: 1000, // 10 seconds delay
              disableOnInteraction: false,
          },
	    });

	    var appendNumber = 4;
	    var prependNumber = 1;
	    document
	      .querySelector(".prepend-2-slides")
	      .addEventListener("click", function (e) {
	        e.preventDefault();
	        swiper.prependSlide([
	          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
	          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
	        ]);
	      });
	    document
	      .querySelector(".prepend-slide")
	      .addEventListener("click", function (e) {
	        e.preventDefault();
	        swiper.prependSlide(
	          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>"
	        );
	      });
	    document
	      .querySelector(".append-slide")
	      .addEventListener("click", function (e) {
	        e.preventDefault();
	        swiper.appendSlide(
	          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>"
	        );
	      });
	    document
	      .querySelector(".append-2-slides")
	      .addEventListener("click", function (e) {
	        e.preventDefault();
	        swiper.appendSlide([
	          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
	          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
	        ]);
	      });
	</script>
    </main>
    <c:import url="../footer.jsp"></c:import>
</body>
</html>
