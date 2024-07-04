<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타런</title>

<style>

</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/home.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>
	<c:choose>
		<c:when test="${user_id == 'admin'}">
			<c:import url="./nav_admin.jsp"></c:import>
		</c:when>
		<c:otherwise>
			<c:import url="./nav.jsp"></c:import>		
		</c:otherwise>
	</c:choose>

	<main>
	<div class="row g-4 mb-4">
		<div class="itembox box1 col-3 mycol-3 myhome">
			<div id="home_my">
				<div style="font-weight: bold; font-size:20px; padding-left:20px; margin-bottom:20px;">${user_id}님 반가워요!</div>
				<div style="font-size:16px; color:#84888b; padding-left:20px;">${userBean.user_rank} ${userBean.user_position} ${userBean.user_dept}</div>
			</div>
			<div class="home_my_bottom">
				<div class="home_my_bottom_left">
					<ul>
						<li><a href="${pageContext.request.contextPath}/MyPage">마이페이지<i class="fa-solid fa-chevron-right"></i></a></li>
						<li><a href="${pageContext.request.contextPath}/HRD/HRD_CLOUD">HRD CLOUD<i class="fa-solid fa-chevron-right"></i></a></li>
						<li><a href="${pageContext.request.contextPath}/course/courseApplyView">연수신청<i class="fa-solid fa-chevron-right"></i></a></li>
					</ul>
					</div>
				<div class="home_my_bottom_right">
					<img class="colly" src="${pageContext.request.contextPath}/resources/images/ccoli.png" alt="멜랑 콜리">
				</div>
			</div>
		</div>
		
		<div class="itembox box1 col-9 mainhomeVideo">
			<video id="video" data-v-2187eb61="" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/hmpg/baner/thumb/20240524/1652204_d355685d.mp4" 
	tabindex="-1" role="application" loop="" muted="muted" playsinline="playsinline" autoplay="">
		</video>
	
		</div>
	</div>
	<div class="row g-4 mb-4">
		<div class="itembox col-3 today">
			<div class="subtitle">오늘 일정</div>
			<hr>
			<p>일정이 없습니다.</p>
		</div>
		<div class="itembox col-6 now">                                                                                                                                                                                                                                                                                                                                                                                                                                                      
			<img  src="${pageContext.request.contextPath}/resources/images/yeonsu.png">
		</div>
		<div class="itembox col-3 training-status">
			<div class="title-area">
				<div class="titles">
					<h3 style="font-size:32px; font-weight:bold;">연수현황</h3>
				</div>
			</div>
			<div class="status-wrapper">
				<ul class="status-list">
					<li class="status-item">
						<div class="status-inner">
							<div class="training-inner">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
	                          <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71z"/>
	                          <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16m7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0"/>
	                        </svg>
							
							&nbsp;&nbsp;
							<h5>진행중 연수</h5>
							</div>
							<a href="${pageContext.request.contextPath}/course/courseView"><i class="fa-solid fa-chevron-right"></i></a>
						</div>
					</li>
					<hr>
					<li class="status-item">
						<div class="status-inner">
							<div class="training-inner">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-clock-history" viewBox="0 0 16 16">
                          <path d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022zm2.004.45a7 7 0 0 0-.985-.299l.219-.976q.576.129 1.126.342zm1.37.71a7 7 0 0 0-.439-.27l.493-.87a8 8 0 0 1 .979.654l-.615.789a7 7 0 0 0-.418-.302zm1.834 1.79a7 7 0 0 0-.653-.796l.724-.69q.406.429.747.91zm.744 1.352a7 7 0 0 0-.214-.468l.893-.45a8 8 0 0 1 .45 1.088l-.95.313a7 7 0 0 0-.179-.483m.53 2.507a7 7 0 0 0-.1-1.025l.985-.17q.1.58.116 1.17zm-.131 1.538q.05-.254.081-.51l.993.123a8 8 0 0 1-.23 1.155l-.964-.267q.069-.247.12-.501m-.952 2.379q.276-.436.486-.908l.914.405q-.24.54-.555 1.038zm-.964 1.205q.183-.183.35-.378l.758.653a8 8 0 0 1-.401.432z"/>
                          <path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0z"/>
                          <path d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5"/>
                        </svg>
							&nbsp;&nbsp;
							<h5>예정된 연수</h5>
							</div>
							<a href="${pageContext.request.contextPath}/course/courseViewBooked"><i class="fa-solid fa-chevron-right"></i></a>
						</div>
					</li>
					<hr>
					<li class="status-item">
						<div class="status-inner">
							<div class="training-inner">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-check2-circle" viewBox="0 0 16 16">
                          <path d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0"/>
                          <path d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0z"/>
                        </svg>&nbsp;&nbsp;
							<h5>완료된 연수</h5>
							</div>
							<a href="#"><i class="fa-solid fa-chevron-right"></i></a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row g-4 mb-4 ">
		<div class="itembox col-3 hottip">
			<img src="${pageContext.request.contextPath}/resources/images/hottip.png">
		</div>
		<div class="itembox col-9 cloud">
			<br>
			<div class="subtitle2" >HRD CLOUD</div>
			<div #swiperRef="" class="swiper mySwiper">
			  <div class="swiper-wrapper">
			    <div class="swiper-slide">
			    	<a href="https://www.youtube.com/watch?v=cbuZfY2S2UQ&t=3635s">
			    	<img id="thum"src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240502/049252c897754aa5a0df/Thumbnails/1652204_24733cfd95d54e118d29.PNG" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
			    	</a><br>
			    	<div>[생활]저작권 어떻게 해야할까?</div>
			    	<div class="datetext">2024.07.04</div>
			    </div>
			    <div class="swiper-slide">
			    	<a href="https://www.youtube.com/watch?v=kWiCuklohdY">
					<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240619/01fc779c14a84282bc7c/Thumbnails/3835551_080ff717dab54883b37a.0000009.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
					</a><br>
					<div>[이슈]역대 3자대면 토의</div>
			    	<div class="datetext">2024.06.05</div>
				</div>
			    <div class="swiper-slide">
			   		 <a href="https://www.youtube.com/watch?v=qspWEqvsJ5I">
					<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1011004.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
					</a><br>
					<div>[노후]현명한 노후생활</div>
			    	<div class="datetext">2023.05.16</div>
				</div>
				<div class="swiper-slide">
					 <a href="https://www.youtube.com/watch?v=qMwzWk81tVM&t=7s">
					<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240610/9c39d49601bf46328618/Thumbnails/2840534_45d8ee7c7b254caf8703.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
					</a><br>
					<div>[노후]생활비 절약?!누구나</div>
			    	<div class="datetext">2023.05.10</div>
				</div>
			  	<div class="swiper-slide">
			  		 <a href="https://www.youtube.com/watch?v=KMErwuu5q5Q">
					<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240618/18f15151b29a47eca0f7/Thumbnails/2853390_e39463243ae54441adce.0000009.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
					</a><br>
					<div>[자산]세액공제 연말정산</div>
			    	<div class="datetext">2023.08.16</div>
				</div>
				<div class="swiper-slide">
					<a href="https://www.youtube.com/watch?v=4WTxn1hcsaI">
					<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240701/2f6bdb11260b4d478416/Thumbnails/1653886_953a25bca8904d8a911d.0000009.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
					</a><br>
					<div>[이슈]보이스 피싱</div>
			    	<div class="datetext">2022.08.16</div>
				</div>
				<div class="swiper-slide">
					<a href="https://www.youtube.com/watch?v=IVlbmAcJqdY">
					<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240124/2024_jpg/img_366_204/img_366_204/1037021.jpg" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
					</a><br>
					<div>[문화]직장생활 이대로 괜찮을까?</div>
			    	<div class="datetext">2024.04.16</div>
				</div>
				<div class="swiper-slide">
					<a href="https://www.youtube.com/watch?v=VleN8IpK2xA">
					<img id="thum" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/cms/20240627/a0652402eab4475494b6/Thumbnails/1653167_64fed78999d2450a8674.PNG" class="kb-thumb-list v-lazy-image v-lazy-image-loaded">
					</a><br>
					<div>[문화]검은유혹!!</div>
			    	<div class="datetext">2024.02.16</div>
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
		</div>
	</div>

	<div class="row g-4 mb-4 nonono">
		<div class="itembox col-3 badgediv">
			<img id="badgeimg" src="${pageContext.request.contextPath}/resources/images/badge.jpg">
		</div>
		<div class="itembox col-9 sslNote">
		<br>
		<div class="subtitle2" >SSL : 학습노트</div>
			<div #swiperRef="" class="swiper mySwiper">
	  <div class="swiper-wrapper">
	    <div class="swiper-slide">
	    	<a href="https://www.youtube.com/watch?v=cbuZfY2S2UQ&t=3635s">
	    	<img class="sslImg" src="https://lxp.kbstar.com/files/abstract_30/abstract_11.jpg" alt="">
	    	</a><br>
	    	<div>[가계여신]DSR 전격 파헤치기</div>
			<div class="datetext">2024.07.04</div>
	    </div>
	    <div class="swiper-slide">
	    	<a href="https://www.youtube.com/watch?v=kWiCuklohdY">
			<img  class="sslImg" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/ssl/thumb/2024/07/01/1652204/ad349c9a.jpg" alt="">
			</a><br>
			<div>[기업여신]소매형 소호 초보자편</div>
			<div class="datetext">2024.07.04</div>
		</div>
	    <div class="swiper-slide">
	   		 <a href="https://www.youtube.com/watch?v=qspWEqvsJ5I">
			<img  class="sslImg" src="https://lxp.kbstar.com/files/abstract_30/abstract_15.jpg" alt="">
			</a><br>
			<div>[전자금융]오픈뱅킹 노하우 공개</div>
			<div class="datetext">2024.07.04</div>
		</div>
		<div class="swiper-slide">
			 <a href="https://www.youtube.com/watch?v=qMwzWk81tVM&t=7s">
			<img  class="sslImg" src="https://lxp.kbstar.com/files/abstract_30/abstract_9.jpg" alt="">
			</a><br>
			<div>[자격증]파생비법 노트</div>
			<div class="datetext">2024.07.04</div>
		</div>
	  	<div class="swiper-slide">
	  		 <a href="https://www.youtube.com/watch?v=KMErwuu5q5Q">
			<img  class="sslImg" src="https://lxp.kbstar.com/files/abstract_30/abstract_26.jpg" alt="">
			</a><br>
			<div>[은실종]은실종 예상문제</div>
			<div class="datetext">2024.07.04</div>
		</div>
		<div class="swiper-slide">
			<a href="https://www.youtube.com/watch?v=4WTxn1hcsaI">
			<img  class="sslImg" src="https://lxp.kbstar.com/files/abstract_30/abstract_29.jpg" alt="">
			</a><br>
			<div>[수신상품]아파트 관리소 등록학</div>
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
		</div>
	</div>	
	
	
	
	<div class="bottom-button">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/hottipicon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/sslicon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/cloudicon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/lectureicon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/lecture2icon.png">
			<img class="bottom-icon" src="${pageContext.request.contextPath}/resources/images/evalicon.png">
	</div>
		
	
	</main>
	
	<c:import url="./footer.jsp"></c:import>
</body>
</html>
