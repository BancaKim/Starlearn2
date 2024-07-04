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
    <style>
    main{
    	font-family: 'NanumSquareRound';
    }
    </style>
</head>

<body>
	<c:choose>
		<c:when test="${user_id == 'admin'}">
			<c:import url="../nav_admin.jsp"></c:import>
		</c:when>
		<c:otherwise>
			<c:import url="../nav.jsp"></c:import>		
		</c:otherwise>
	</c:choose>
	
	  <main>
        <div class="container">
            <div class="breadcrumbs">
                <a href="#">홈</a> &gt; <a href="#">생활연수</a> &gt; 공지사항
            </div>
            <h1>공지사항</h1>
            
            <c:if test="${sessionScope.user_id == 'admin'}">
            	<a href="notice_write">
            	<button type="button" class="btn btn-outline-secondary">글쓰기</button>
            	</a>
            </c:if>
            
            <div class="search-container">
                <input type="text" class="form-search-input" placeholder="공지사항 검색">
                <button class="form-search-btn">
                    <i class="fa fa-search"></i>
                </button>
            </div>
            <div class="notice-list">
    	
                <ul>
               		<c:forEach items="${list}" var="list">
                   		<li>
                        	<span class="notice-num">${list.facility_notice_num}</span>
                            <a href="content_view?num=${list.facility_notice_num}" class="notice-title">${list.facility_notice_title}</a>
                            <span class="notice-date">${list.facility_notice_rolldate}</span>
                            <span class="notice-views">${list.facility_notice_hit} 조회</span>
                    	</li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>