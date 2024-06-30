<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="${pageContext.request.contextPath}/resources/css/facility_notice.css" rel="stylesheet">
    <title>KB 스타런</title>
    
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	  <main>
        <div class="container">
            <div class="breadcrumbs">
                <a href="#">홈</a> &gt; <a href="#">생활연수</a> &gt; 공지사항
            </div>
            <h1>공지사항</h1>
            <a href="notice_write"><button>글쓰기</button></a>
            <div class="search-container">
                <input type="text" class="form-search-input" placeholder="공지사항 검색">
                <button class="form-search-btn">
                    <i class="fa fa-search"></i>
                </button>
            </div>
            <div class="notice-list">
    	
                <ul>
                    <li>
                        <a href="#">
                        	<span class="notice-num">1</span>
                            <span class="notice-title">속초·대천연수원 '생활 연수 운영 방법, 변경 안내 N</span>
                            <span class="notice-date">2023-11-01</span>
                            <span class="notice-views">10612 조회</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                        <span class="notice-num">2</span>
                            <span class="notice-title">생활연수 예약접수일자 임시변경 안내 N</span>
                            <span class="notice-date">2022-12-29</span>
                            <span class="notice-views">7355 조회</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                        <span class="notice-num">3</span>
                            <span class="notice-title">속초·대천연수원 생활연수 이용안내 입니다. N</span>
                            <span class="notice-date">2022-12-01</span>
                            <span class="notice-views">15397 조회</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                        <span class="notice-num">4</span>
                            <span class="notice-title">생활연수 신청방법 FAQ N</span>
                            <span class="notice-date">2022-12-03</span>
                            <span class="notice-views">5269 조회</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>