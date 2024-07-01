<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
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
        margin: 0 auto; /* Center align horizontally */
        position: relative; /* Set as relative position */
    }
    
    
    #title {
        font-size: 32px;
        font-weight: bold;
    }
    
    #btn {
        text-align: right; /* Align button to the right */
        margin-top: 20px; /* Add top margin */
    }
    
    
    #search-area {
        min-width: 376px;
        height: 61px;
        border: 1px solid #e8e8e8;
        border-radius: 50rem;
        padding-right: 62px;
        padding-left: 2rem;
        position: relative; /* Set as relative position */
    }
    
    #search-btn {
        position: absolute; /* Set as absolute position */
        top: 50%; /* Align vertically */
        right: 8px; /* Adjust right position */
        transform: translateY(-50%); /* Center vertically */
        border: none; /* Remove border */
        background-color: transparent; /* Set background color transparent */
        cursor: pointer; /* Set cursor as pointer */
    }
    
    #search-btn svg {
        width: 1.2em; /* Adjust SVG size */
        height: 1.2em;
        fill: currentColor; /* Use current color for SVG */
    }

    span {
        text-align: left;
    }

    #noticeTable{
        z-index: 1;
	    position: relative;
	    background-color: #f7f4f0;
	    width:1100px;
	    height:70px;
	    border-radius: 25px;
	    
    }
     #noticeTableTR:hover{
      	border-radius: 25px;
        background-color: #e7e4df;
       
    }
    
</style>
</head>
<body>
<main>
    <br><br><br><br><br><br><br>
    <div id="title">공지사항</div>
    <br>
    <div class="notice">  
    <div id="btn">
        <form>
            <br>
            <div style="position: relative;">
                <span>총159건</span>
                <input type="text" id="search-area" name="search-area" placeholder="공지사항 검색">
                <button id="search-btn" type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                    </svg>
                </button>
            </div>
        </form>
    </div>
    <br>
    
    <div id="noticeTable_div">
    	<table id="noticeTable">
    		<tr id="noticeTableTR">
    			<td>1</td>
    			<td>연수시스템메인</td>
    			<td>스타런모바일앱 설치가이드</td>
    			<td>2024-01-22</td>
    			<td>2832조회</td>
    		</tr>
    	</table>
    </div>
    <br><br>
</main>
<c:import url="../footer.jsp"></c:import>
</body>
