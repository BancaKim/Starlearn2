<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.ParseException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!DOCTYPE html>
<html lang="ko">
<head>
	<c:import url="../nav.jsp"></c:import>
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
        button {
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
         .date-input {
            width: 200px; /* 원하는 가로 크기로 설정 */
            display: inline-block;
        }

		.academy_proof-file-button{
		  padding: 6px 25px;
		  background-color:#f7f4f0;
		  border-radius: 4px;
		  cursor: pointer;
		}
		 .academy_proof-file-button {
		 	width : 184px;
		 	height : 60px;
		 	height: 60px;
            display: inline-block;
            font-color: balck;
            background-color: #f7f4f0; /* 버튼 기본 색상 */
            border: none;
            border-radius: 8px; /* 둥근 모서리 */
            cursor: pointer;
            text-align: center;
            text-decoration: none; /* 링크 밑줄 제거 */
            transition: background-color 0.3s ease; /* 배경색 전환 효과 */
        }

        .academy_proof-file-button:hover {
            background-color: #e8e8e8; /* 호버 시 색상 */
        }

        .academy_proof-file-button:focus {
            outline: none; /* 포커스 시 아웃라인 제거 */
            box-shadow: 0 0 5px #007bff; /* 포커스 시 그림자 효과 */
        }
        .main{
        	text-align: center;
        	background-color : white;
        }

    </style>
</head>
<body>
<div class ="main">
		<br>
  		<br>
  		<br>
  		<br>
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
</div>
    
    <!-- 모달 창 -->
    <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
       <h1 class="modal-title fs-5 center-text" id="staticBackdropLabel">학원비 신청</h1>
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
       			<td>
       				<input class="form-control form-control-lg" type="text" placeholder="HR부(인재개발)LO 조사역 김설화 | 1653778" aria-label=".form-control-lg example" readonly>
       			</td>
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
       				  <option selected disabled>학습방법을 선택해주세요</option>
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
        			<input class="form-control form-control-lg date-input" id="startDate" name="startDate" 
        			type="date" aria-label=".form-control-lg example"  onchange="handleDateChange()" required>

       				 <input class="form-control form-control-lg date-input" id="endDate" name="endDate" 
       				 type="date" aria-label=".form-control-lg example"  onchange="handleDateChange()" required>
       				
					&nbsp;&nbsp;&nbsp;<span id="datePrint"></span>
				</td>
				<script>
					 function handleDateChange() {
						 var startDate = document.getElementById("startDate").value;
						    var endDate = document.getElementById("endDate").value;

						    // 시작일자와 종료일자가 모두 입력되었을 때만 유효성 검사 수행
						    if (startDate && endDate) {
						        // 날짜를 Date 객체로 변환
						        var startDateObj = new Date(startDate);
						        var endDateObj = new Date(endDate);

						        // 시작일자가 종료일자보다 이전인지 검사
						        if (startDateObj > endDateObj) {
						        	swal("시작일자는 종료일자보다 이전이어야 합니다.");
						            // 시작일자와 종료일자를 초기화하거나 다시 입력할 수 있도록 처리
						            document.getElementById("startDate").value = "";
						            document.getElementById("endDate").value = "";
						            // 출력 요소 초기화
						            document.getElementById("datePrint").innerHTML = "";
						            return;
						        }

						        // 날짜 출력 요소를 가져와서 설정
						        var datePrint = document.getElementById("datePrint");
						        var output = startDate + " ~ " + endDate;
						        datePrint.innerHTML = output;
			            }
			        }
				</script>

       		</tr>
       		<tr>
       			<td>수강증</td>
       			<td>
       				
       				<label class="academy_proof-file-button" for="academy_proof-file">수강증 등록하기</label>
       				<input type="file" id="academy_proof-file" name="academy_proof-file" style="display:none"/>
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
	<c:import url="../footer.jsp"></c:import>
</body>

</html>
