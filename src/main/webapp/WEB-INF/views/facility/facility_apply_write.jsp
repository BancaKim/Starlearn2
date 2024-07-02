<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.ParseException"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/resources/css/facility_applyWrite.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>KB 스타런</title>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	<main>
		<div class="container">
	        <h1>연수원 이용 신청하기</h1>
	        <div class="instructions">
	            신청 전형 안내: 신청 전형은 연수원 이용 1일 전 18시까지 완료되어야 합니다. 연수원 이용은 프로토 1장당 연수원 하루 당첨 횟수로 제한됩니다.
	        </div>
	        <form>
	            <div class="form-group">
	                <label for="applicant">신청자명</label>
	                <input type="text" id="applicant" value="본인" readonly>
	            </div>
	            <div class="form-group">
	                <label for="person1">입소자 1</label>
	                <input type="text" id="person1" placeholder="이름을 입력하세요">
	                <select>
	                    <option value="">관계 선택</option>
	                    <option value="친구">친구</option>
	                    <option value="가족">가족</option>
	                    <option value="동료">동료</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="person2">입소자 2</label>
	                <input type="text" id="person2" placeholder="이름을 입력하세요">
	                <select>
	                    <option value="">관계 선택</option>
	                    <option value="친구">친구</option>
	                    <option value="가족">가족</option>
	                    <option value="동료">동료</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="person3">입소자 3</label>
	                <input type="text" id="person3" placeholder="이름을 입력하세요">
	                <select>
	                    <option value="">관계 선택</option>
	                    <option value="친구">친구</option>
	                    <option value="가족">가족</option>
	                    <option value="동료">동료</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="person4">입소자 4</label>
	                <input type="text" id="person4" placeholder="이름을 입력하세요">
	                <select>
	                    <option value="">관계 선택</option>
	                    <option value="친구">친구</option>
	                    <option value="가족">가족</option>
	                    <option value="동료">동료</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="person5">입소자 5</label>
	                <input type="text" id="person5" placeholder="이름을 입력하세요">
	                <select>
	                    <option value="">관계 선택</option>
	                    <option value="친구">친구</option>
	                    <option value="가족">가족</option>
	                    <option value="동료">동료</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="usePeople">이용 인원</label>
	                <input type="text" id="usePeople" value="1명" readonly>
	            </div>
	            <div class="form-group">
	                <label for="notes">특이사항</label>
	                <textarea id="notes" placeholder="특이사항이 있는 경우 입력해 주세요."></textarea>
	            </div>
	            <div class="instructions">
	                <ul>
	                    <li>이 신청서의 개인 정보는 연수원 이용을 위해 수집됩니다.</li>
	                    <li>연수원 이용은 1일 전 18시까지 완료되어야 합니다.</li>
	                    <li>연수원 이용은 프로토 1장당 연수원 하루 당첨 횟수로 제한됩니다.</li>
	                </ul>
	            </div>
	            <div class="button-group">
	                <button type="button">이전</button>
	                <button type="submit">다음</button>
	            </div>
	        </form>
	    </div>
    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>