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
    	 background-color: #fff; /* Set body background color to white */
        text-align: center; /* Center align content */
        width: 1100px; /* Set fixed width */
        margin: 0 auto; /* Center align horizontally */
        position: relative; /* Set as relative position */
    }
    
    .QnA {
        padding-top: 5px;
        padding-bottom: 5px;
        width: 140px; /* Set width wider */
        cursor: pointer;
        border-radius: 50rem;
        border: 1px solid #d7d7d7;
        position: relative; /* Set as parent element */
        display: inline-flex; /* Use inline flex container */
        align-items: center; /* Center vertically */
        justify-content: center; /* Center horizontally */
        margin-right: 10px; /* Add right margin */
    }
    
    .QnA .QnA__name {
        padding: 10px 10px; /* Set internal padding */
        font-family: 'NanumSquareRound', Arial, sans-serif;
        font-size: 16px;
        margin-left: 0;
        display: flex;
        align-items: center;
        position: relative;
        text-align: center; /* Center text */
    }
    
    .QnA .QnA__name svg {
        margin-left: 5px;
        fill: currentColor;
    }
    
    .QnA .QnA__contents {
        display: none;
        position: absolute; /* Set absolute position */
        z-index: 10;
        top: 100%; /* Position below parent */
        left: 50%; /* Center horizontally relative to parent */
        transform: translateX(-50%); /* Center horizontally */
        background-color: #fff;
        border: 1px solid #e8e8e8;
        border-radius: 8px;
        padding: 1rem;
        font-size: 16px;
        width: auto;
        text-align: center; /* Center text */
    }
    
    .QnA:hover .QnA__contents {
        display: block;
    }
    
    .QnAcontents__menu {
        list-style: none;
        padding: 0;
        margin: 0;
    }
    
    .QnAcontents__menu li:hover {
        background-color: #e8e8e8;
        border-radius: 16px;
    }
    
    .QnAcontents__menu li {
        list-style: none;
        text-align: center; /* Center text */
        margin: 10px 0; /* Add top and bottom margin */
        width: 130px;
    }
    
    .QnAcontents__menu ul.inner {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding: 0;
        margin: 0;
    }
    
    .QnAcontents__menu a {
        text-decoration: none;
        color: #545045;
        display: block; /* Set link as block element */
        padding: 8px 0; /* Add top and bottom padding */
    }
    
    #title {
        font-size: 32px;
        font-weight: bold;
    }
    
    #btn {
        text-align: right; /* Align button to the right */
        margin-top: 20px; /* Add top margin */
    }
    
    #write-btn {
        display: inline-flex;
        justify-content: center;
        cursor: pointer;
        height: 60px;
        padding: 0 32px;
        border-radius: 16px;
        vertical-align: middle;
        border: 1px solid #e8e8e8;
        text-align: right; /* Align text to the right */
        margin-left: auto; /* Automatically position to the right */
        background-color: #fff; /* Set button background color */
    }
    
    #write-btn:hover {
        background-color: #f7f4f0;
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
    #qnaTableTR{
        z-index: 1;
	    position: absolute;
	    background-color: #f7f4f0
    }
      #qnaTableTR:hover{
        background-color: red;
    }
    
</style>
</head>
<body>
<main>
    <br><br><br><br><br><br><br>
    <div id="title">QnA</div>
    <br>
    <div class="QnA">
        <div class="QnA__name">카테고리
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
            </svg>
        </div>
        <div class="QnA__contents">
            <div class="QnAcontents__menu">
                <ul class="inner">
                    <li><a href="#">나의강의실</a></li>
                    <li><a href="#">연수신청</a></li>
                    <li><a href="#">학원비지원신청</a></li>
                    <li><a href="#">생활연수</a></li>
                    <li><a href="#">HelpDesk</a></li>
                    <li><a href="#">기타</a></li>
                </ul>
            </div>
        </div>
    </div>
    <br>
    <div id="btn">
        <input type="button" id="write-btn" name="write-btn" value="글쓰기">
        <form>
            <br>
            <div style="position: relative;">
                <span>총159건</span>
                <input type="text" id="search-area" name="search-area" placeholder="Q&A 검색">
                <button id="search-btn" type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                    </svg>
                </button>
            </div>
        </form>
    </div>
    <div id="qnaTable">
    	<table>
    		<tr id="qnaTableTR">
    			<td>1</td>
    			<td>기타</td>
    			<td>처리중</td>
    			<td>직무필수과정 pccp</td>
    			<td>이윤석</td>
    			<td>2024.06.27 17:30</td>
    		</tr>
    	</table>
    </div>
</main>
<c:import url="../footer.jsp"></c:import>
</body>
