<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원 신청 현황 조회</title>
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
        background-color: #fff; /* 바디 배경색을 하얀색으로 설정 */
        margin: 200px auto 0; /* Center align horizontally */
        height: 100vh;
        text-align: center; 
    }
    main {
        text-align: center; /* Center align content */
        width: 1400px; /* Set fixed width */
        margin: 200px auto 0; /* Center align horizontally */
        position: relative; /* Set as relative position */
    }
    #title {
        font-size: 32px;
        font-weight: bold;
    }
    #kind {
        height: 70px;
        background-color: #f7f4f0;
        width: 100%;
        display: flex;
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
       
</style>
</head>
<body>
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
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-display" viewBox="0 0 16 16">
                <path d="M0 4s0-2 2-2h12s2 0 2 2v6s0 2-2 2h-4q0 1 .25 1.5H11a.5.5 0 0 1 0 1H5a.5.5 0 0 1 0-1h.75Q6 13 6 12H2s-2 0-2-2zm1.398-.855a.76.76 0 0 0-.254.302A1.5 1.5 0 0 0 1 4.01V10c0 .325.078.502.145.602q.105.156.302.254a1.5 1.5 0 0 0 .538.143L2.01 11H14c.325 0 .502-.078.602-.145a.76.76 0 0 0 .254-.302 1.5 1.5 0 0 0 .143-.538L15 9.99V4c0-.325-.078-.502-.145-.602a.76.76 0 0 0-.302-.254A1.5 1.5 0 0 0 13.99 3H2c-.325 0-.502.078-.602.145"/>
            </svg>
            Hot Tube 등재
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
    <br>
    <div id="my">
    <div id="video">
        <video id="vjs_video_3_html5_api" tabindex="-1" role="application" class="vjs-tech" loop="" muted="muted" playsinline="playsinline" autoplay="" src="https://lxpcms-ncloud.cdn.ntruss.com/contents/hmpg/baner/thumb/20240108/1652204_fde64927.mp4"></video>
    </div>
    <div id="mypage">
    	
    </div>
    </div>
    <main>
    </main>
    <c:import url="../footer.jsp"></c:import>
</body>
</html>
