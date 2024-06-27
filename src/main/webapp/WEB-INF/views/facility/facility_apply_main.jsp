<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/resources/css/facility_main.css" rel="stylesheet">
    <title>KB 스타런</title>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	<main>
            <a href="#" class="back-button">&lt; 이전</a>
                <h1>생활연수 신청</h1>
        <div class="tab-container">
            <button class="tab active">연수원</button>
            <button class="tab">체육시설</button>
        </div>

        <section class="notice-board">
            <h2>공지사항</h2>
            <ul>
                <li>
                    <span class="number">1</span>
                    <span class="title">속초 대전연수원 '생활 연수 운영 방법' 변경 안내</span>
                    <span class="date">2023-11-01</span>
                    <span class="views">10572 조회</span>
                </li>
                <li>
                    <span class="number">2</span>
                    <span class="title">생활연수 예약접수일자 임시변경 안내</span>
                    <span class="date">2022-12-29</span>
                    <span class="views">7346 조회</span>
                </li>
                <li>
                    <span class="number">3</span>
                    <span class="title">속초 · 대전연수원 생활연수 이용안내 입니다.</span>
                    <span class="date">2022-12-01</span>
                    <span class="views">15379 조회</span>
                </li>
            </ul>
        </section>

        <section class="application-status">
            <h2>신청현황</h2>
            <p>전체 0건</p>
            <table>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>시설명</th>
                        <th>신청기간</th>
                        <th>신청일시</th>
                        <th>신청상태</th>
                        <th>기능</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- 테이블 내용은 비어있음 -->
                </tbody>
            </table>
            <button class="apply-button">연수원 간편신청</button>
        </section>

        <section class="quick-links">
            <h2>생활연수 바로가기</h2>
            <div class="link-container">
                <a href="#" class="quick-link">생활연수 FAQ</a>
                <a href="#" class="quick-link">생활연수 운영지침</a>
            </div>
        </section>
    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>