<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이페이지</title>
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
        text-align: center;
        width: 1100px;
        position: relative;
        margin: 200px auto 0;
    }
    
    #profiles {
        border-radius: 50%;
        text-align: center;
    }
    
    #profiles-img {
        width: 120px;
        height: 120px;
        border-radius: 50%;
        padding-bottom: 10px;
    }
    
    img {
        width: 120px;
    }

    #myPage {
        height: 300px;
        text-align: center; 
    }

    #hello {
        font-size: 32px;
        font-weight: bold;
    }

    #menu {
        display: inline-flex;
        padding: 8px;
        border-radius: 25px;
        border: 1px solid #e8e8e8;
        background-color: #fff;
        width: 660px;
        height: 63px;
    }

    .menu-item {
        display: inline-block;
        cursor: pointer;
        transition: background-color 0.3s;
        margin: 0 15px;
        width: 150px;
        background-color: transparent;
        vertical-align: middle;
        text-align: center;
        line-height: 45px;  
    }

    .menu-item:hover,
    .menu-item.active {
        background-color: #f7f4f0;
        border-radius: 50rem;
        width: 150px;
    }

    .menu-item.vertical-middle {
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        cursor: pointer;
        transition: color 0.3s;
        margin: 0 15px;
        width: 150px;
        color: #545045;
    }

    .menu-item.vertical-middle:hover,
    .menu-item.vertical-middle.active {
        color: #ffbc00;
    }

    .subtitle {
        font-size: 18px;
        font-weight: bold;
    }

    .parent {
        width: 1100px;
        height: 143px;
        display: flex;
        justify-content: space-between;
    }

    .child {
        width: 360px;
        height: 120px;
        background-color: #f7f4f0;
        border-radius: 16px;
        display: flex;
        align-items: center; /* Center content vertically */
        padding: 0 20px; /* Add some padding */
    }

    .icon {
        width: 50px;
        height: 50px;
        background-color: #FFF;
        border-radius: 10px;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-right: 10px;
    }

    .icon svg {
        height: 26px;
        width: 26px;
    }

    .text {
        display: flex;
        flex-direction: column;
        text-align:left;
    }

    .text .count {
        font-size: 20px;
        font-weight: bold;
    }

    .text .description {
        font-size: 12px;
        color: #666;
    }
</style>
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
    <script>
        // 초기 로딩 시 대시보드 메뉴에 active 클래스 추가
        document.addEventListener("DOMContentLoaded", function() {
            var dashboardMenu = document.querySelector(".menu-item:nth-child(1)");
            dashboardMenu.classList.add("active");
        });

        function goCourse() {
            window.location.href = "${pageContext.request.contextPath}/course/courseApplyView";
        }

        function goFacility() {
            window.location.href = "${pageContext.request.contextPath}/facility/apply_main";
        }

        function goTuition_refund() {
            window.location.href = "${pageContext.request.contextPath}/tuition_refund/tuition_refund_apply";
        }
    </script>
    <main>
        <div id="myPage">
            <div class="profiles">
                <img id="profiles-img" 
                    src="${pageContext.request.contextPath}/userupload/${user_profile}">
                <div id="hello"><br>${user_id}님 반가워요!</div>
                <br>
                <div id="menu">
                    <div class="menu-item"> 대시보드 </div>
                    <div class="menu-item" onclick="goCourse()"> 연수신청</div>
                    <div class="menu-item" onclick="goFacility()"> 생환연수</div>
                    <div class="menu-item" onclick="goTuition_refund()"> 학습비 지원</div>
                </div>
            </div>
            <br>
            <div class="subtitle" style="text-align:left;">나의 연수 현황</div>
            <br>
            <div class="parent">
                <div class="child">
                    <div class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
                          <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71z"/>
                          <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16m7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0"/>
                        </svg>
                    </div>
                    <div class="text">
                        <div class="count">1개</div>
                        <div class="description">진행중 연수</div>
                    </div>          
                </div>
                <div class="child">
                    <div class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock-history" viewBox="0 0 16 16">
                          <path d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022zm2.004.45a7 7 0 0 0-.985-.299l.219-.976q.576.129 1.126.342zm1.37.71a7 7 0 0 0-.439-.27l.493-.87a8 8 0 0 1 .979.654l-.615.789a7 7 0 0 0-.418-.302zm1.834 1.79a7 7 0 0 0-.653-.796l.724-.69q.406.429.747.91zm.744 1.352a7 7 0 0 0-.214-.468l.893-.45a8 8 0 0 1 .45 1.088l-.95.313a7 7 0 0 0-.179-.483m.53 2.507a7 7 0 0 0-.1-1.025l.985-.17q.1.58.116 1.17zm-.131 1.538q.05-.254.081-.51l.993.123a8 8 0 0 1-.23 1.155l-.964-.267q.069-.247.12-.501m-.952 2.379q.276-.436.486-.908l.914.405q-.24.54-.555 1.038zm-.964 1.205q.183-.183.35-.378l.758.653a8 8 0 0 1-.401.432z"/>
                          <path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0z"/>
                          <path d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5"/>
                        </svg>
                    </div>
                    <div class="text">
                        <div class="count">1개</div>
                        <div class="description">예정된 연수</div>
                    </div>  
                </div>
                <div class="child">
                    <div class="icon">    
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check2-circle" viewBox="0 0 16 16">
                          <path d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0"/>
                          <path d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0z"/>
                        </svg>
                    </div>
                    <div class="text">
                        <div class="count">1개</div>
                        <div class="description">완료된 연수</div>
                    </div>
                </div>          
            </div>
        </div>
    </main>
</body>
</html>
