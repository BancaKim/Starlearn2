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
    <title>스타런</title>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	<main>
		<div class="container">

	        <div class="instructions">
	            <h1>신청 안내</h1>
	            <div>
	            	<p>신청 진행 중입니다. 아래 세부 정보 입력 후 신청하셔야 합니다.<br/>
	            	동반 가족 필수 입력(입력된 가족 외 입소 제한)<br/>
	            	직원간 이용은 코로나19 감영 예방을 위해 별도 통보시까지 제한</p>
            	</div>
	        </div>		
	        <form name="facility_apply" action="facilityApplyAction" method="post">
    	        <input type="hidden" id="facility_userIdn" name="user_idn" value="${userIdn}" readonly>
	            <div class="form-group">
	                <label for="applicant">연수원 선택</label>
	                <input type="text" id="trainingCenter" name="facility_trainingCenter" value="${requestScope.trainingCenter}" readonly>
	            </div>
	            <div class="form-group">
	                <label for="applicant">방 선택</label>
	                <input type="text" id="roomType" name="facility_roomType" value="${requestScope.roomType}" readonly>
	            </div>
	            <div class="form-group">
	                <label for="applicant">입실일</label>
	                <input type="text" id="roomType" name="facility_startDate" value="${requestScope.startDate}" readonly>
	            </div>
	            <div class="form-group">
	                <label for="applicant">퇴실일</label>
	                <input type="text" id="roomType" name="facility_endDate" value="${requestScope.endDate}" readonly>
	            </div>
	            <div class="form-group">
	                <label for="applicant">비상 연락처</label>
	                <input type="text" id="facility_ph" name="facility_ph" placeholder="-없이 숫자만으로 비상연락처를 입력하세요">
	            </div>
	            <div class="form-group">
	                <label for="applicant">차량번호</label>
	                <input type="text" id="facility_car" name="facility_car">
	            </div>
	            <div class="form-group">
	                <label for="person1">입소자 1</label>
	                <input type="text" id="person1" name="facility_person1_name" value="${requestScope.user_name}" readonly>
	                <select name="facility_person1_rel">
	                    <option value="inperson">본인</option>
	                    <option value="spouse">배우자</option>
	                    <option value="children">자녀</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="person2">입소자 2</label>
	                <input type="text" id="person2" name="facility_person2_name" placeholder="이름을 입력하세요"/>
	                <select name="facility_person2_rel">
	                    <option value="">관계 선택</option>
	                    <option value="inperson">본인</option>
	                    <option value="spouse">배우자</option>
	                    <option value="children">자녀</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="person3">입소자 3</label>
	                <input type="text" id="person3" name="facility_person3_name" placeholder="이름을 입력하세요">
	                <select name="facility_person3_rel">
	                    <option value="">관계 선택</option>
	                    <option value="inperson">본인</option>
	                    <option value="spouse">배우자</option>
	                    <option value="children">자녀</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="person4">입소자 4</label>
	                <input type="text" id="person4" name="facility_person4_name" placeholder="이름을 입력하세요">
	                <select name="facility_person4_rel">
	                    <option value="">관계 선택</option>
	                    <option value="inperson">본인</option>
	                    <option value="spouse">배우자</option>
	                    <option value="children">자녀</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="person5">입소자 5</label>
	                <input type="text" id="person5" name="facility_person5_name" placeholder="이름을 입력하세요">
	                <select name="facility_person5_rel">
	                    <option value="">관계 선택</option>
	                    <option value="inperson">본인</option>
	                    <option value="spouse">배우자</option>
	                    <option value="children">자녀</option>
	                </select>
	            </div>
	            <div class="form-group">
	                <label for="usePeople">이용 인원</label>
	                <input type="number" name="facility_appl_pn" id="usePeople"/>
	            </div>
	            <div class="form-group">
	                <label for="notes">특이사항</label>
	                <textarea id="notes" name="facility_significiant" placeholder="특이사항이 있는 경우 입력해 주세요."></textarea>
	            </div>
	            <div class="instructions">
	                <ul>
	                    <li>
	  	                	<div class="form-check">
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheck1">
								<label class="form-check-label" for="flexCheckDefault">
							    	1.이용일 기준 재직중인 임직원만 신청가능하며, 입소정원은 직원 본인 포함 5인 이내 직계가족, 차량은 1대로 제한
								</label>
							</div>
	                    </li>
	                    <li>
	  	                	<div class="form-check">
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheck2">
								<label class="form-check-label" for="flexCheckDefault">
							    	2.안식년 휴가 활용 신청자는 안식년 휴가로 평일 연수시설을 이용하는 직원(이용일 기준 휴직/퇴직직원 제외)
								</label>
							</div>
	                    </li>
	                    <li>
	  	                	<div class="form-check">
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheck3">
								<label class="form-check-label" for="flexCheckDefault">
							    	3.입소(16:00-24:00) 퇴소 (10:00) 시간을 준수합니다.
								</label>
							</div>
	                    </li>
	                    <li>
	  	                	<div class="form-check">
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheck4">
								<label class="form-check-label" for="flexCheckDefault">
							    	4.수건 등 세면도구는 지원되지 않으니 개별 지참하시기 바랍니다.
								</label>
							</div>
	                    </li>
	                    <li>
	  	                	<div class="form-check">
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheck5">
								<label class="form-check-label" for="flexCheckDefault">
							    	5.애완동물 동반 입소 금지합니다.
								</label>
							</div>
	                    </li>
	                </ul>
	            </div>
	            <div class="button-group">
	                <button type="button" onclick="javascript:history.go(-1)">이전</button>
	                <button type="submit">신청</button>
	            </div>s
	        </form>
	    </div>
    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>