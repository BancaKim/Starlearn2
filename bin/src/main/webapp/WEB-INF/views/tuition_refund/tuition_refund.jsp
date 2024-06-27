<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="shortcut icon" href="<c:url value='./resources/images/favicon.ico'/>" type="image/x-icon"/>
<link rel="icon" href="<c:url value='./resources/images/favicon.ico'/>" type="image/x-icon"/>
<!DOCTYPE html>
<html lang="ko">
<head>
	<c:import url="../nav.jsp" var="NavBar"/>
	<c:out value="${NavBar}" escapeXml="false"/>
    <meta charset="UTF-8">
    <style>
        * {
            font-family: 국민연금체;
        }
        #title {
            font-size: 32px;
            font-weight: bold;
        }
        #kb-btn {
            width: 122.55px;
            height: 60px;
            background-color: #ffbc00;
            border: none;
            border-radius: 30px; /* 둥근 모서리 */
            color: white;
            font-size: 15px;
            font-color : white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        #kb-btn:hover {
            background-color: #e6a700; /* 호버 시 색상 변화 */
        }
        button {ㄴ
            background-color: #ffbc00;
            border: 1px solid transparent;
            cursor: pointer;
        }
         .flex-container {
            display: flex;
            gap: 10px;
        }
        .flex-container select {
            width: 100%;
        }
           .custom-control-input:checked ~ .custom-control-label::before {
            background-color: #ffbc00; /* 선택된 라디오 버튼의 배경색을 노란색으로 설정 */
            border-color: #ffbc00; /* 선택된 라디오 버튼의 테두리 색상을 노란색으로 설정 */
        }
    </style>
</head>
<body>
		<br>
  		<br>
    <center>
    	<br>
  		<br>
  		<br>
        <div id="title">학원비 지원신청</div>
  		<br>
  		<Br>
  		<Br>
        <div>
        	<button type="button" id="kb-btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  			지원신청
			</button>
        </div>
        <br>
        <img src="./resources/images/지원내용.png"><br>
        <img src="./resources/images/지원대상.png"><br>
        <img src="./resources/images/필요서류.png">
    </center>
    
    <!-- 모달 창 -->
    <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <center><h1 class="modal-title fs-5" id="staticBackdropLabel">학원비 신청</h1></center>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <span style="font-weight: bold;">신청정보</span>
       <hr>
       <br>
       <div>
       	<table>
       		<tr>
       			<td>신청직원</td>
       			<td>HR부(인재개발)LO 조사역 김설화 | 1653778</td>
       		</tr>
       		<tr>
	            <td>학습구분 및 분야</td>
	            <td>
	                <div class="flex-container">
	                    <select class="form-select form-select-lg mb-3" aria-label="Large select example">
	                        <option selected disabled>학습구분을 선택해주세요</option>
	                        <option value="외국어">외국어</option>
	                        <option value="IT">IT</option>
	                    </select>
	                    <select class="form-select form-select-lg mb-3" aria-label="Large select example">
	                        <option selected disabled>학습분야를 선택해주세요</option>
	                        <option value="외국어">외국어</option>
	                        <option value="IT">IT</option>
	                    </select>
	                </div>
	            </td>
       		 </tr>
       		 <tr>
       			<td>학습방법</td>
       			<td>
       				<select class="form-select form-select-lg mb-3" aria-label="Large select example">
					  <option value="학원수강">학원수강</option>
					  <option value="인터넷수강">인터넷수강</option>
					  <option value="전화수강">전화수강</option>
					  <option value="학습지">학습지</option>
					</select>  				
				</td>
       		</tr>
       		<tr>
       			<td>학원명</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="학원명을 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td>학원 홈페이지</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="학원 홈페이지 주소를 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td>과정명</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="과정명을 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td>수강기간</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="과정명을 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td>수강증</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="과정명을 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td>수강료</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="수강료를 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td>지원금액</td>
       			<td>
       				<input class="form-control form-control-lg" type="text"  aria-label=".form-control-lg example" readonly>
				</td>
       		</tr>
       		
       	</table>
       	<hr>
       	  <span style="font-weight: bold;">결제정보</span>
       	 <table>
       	 <tr>
       	 	<td>결제정보</td>
       	 	<td>
       	 		<div class="form-check form-check-inline">
				  <input class="form-check-input warning" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
				  <label class="form-check-label" for="inlineRadio1">카드</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input warning" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
				  <label class="form-check-label" for="inlineRadio2">무통장입금</label>
				</div>	
       	 	</td>
       	 
       	 </tr>
       	 <tr>
       			<td>카드번호</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="카드 번호를 입력하세요" aria-label=".form-control-lg example" >
					<sapn>반드시 실카드번호를 입력해주세요.(ex. 알파원카드로 결제시 알파원으로 설정된 실카드번호, KB Pay로 결제시 가상카드번호가 아닌 실카드번호)</sapn>	
				</td>
				
       		</tr>
       		 <tr>
       			<td>승인번호</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="승인 번호를 입력하세요" aria-label=".form-control-lg example" >
				</td>
				
       		</tr>
       		<tr>
       			<td>승인 º 입금일</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="승인 번호를 입력하세요" aria-label=".form-control-lg example" >
				</td>
				
       		</tr>
       		<tr>
       			<td>가맹점명</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="가맹점명를 입력하세요" aria-label=".form-control-lg example" >
				</td>
				
       		</tr>
       		<tr>
       			<td>결제영수증</td>
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="카드번호,승인번호,승인일,승인금액,가맹점 정보가 기재된 결제영수증을 등록하세요." aria-label=".form-control-lg example" readonly>
				</td>
				
       		</tr>
       	 
       	 </table>
       	 <hr>
       	 
       	
       </div>
       
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-secondary">지원신청</button>
        <button type="button" class="btn btn-Light" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
