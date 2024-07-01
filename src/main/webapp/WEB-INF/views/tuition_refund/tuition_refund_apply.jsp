<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.ParseException"%>

<link rel="shortcut icon" href="<c:url value='${pageContext.request.contextPath}/resources/images/favicon.ico' />" type="image/x-icon"/>
<link rel="icon" href="<c:url value='${pageContext.request.contextPath}/resources/images/favicon.ico' />" type="image/x-icon"/>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!DOCTYPE html>
<html lang="ko">
<head>
	<c:import url="../nav.jsp"></c:import>
    <meta charset="UTF-8">
    <title>학원비 지원신청 </title>
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
		   
		}
		main{
			text-align: center;
        	margin: 200px auto 0; /* Center align horizontally */
        	background-color: #f7f4f0;
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

		.file-button {
		    width: 184px;
		    height: 50px;
		    display: inline-block;
		    color: black; /* 'font-color'는 유효한 CSS 속성이 아니므로 'color'로 수정 */
		    background-color: #f7f4f0; /* 버튼 기본 색상 */
		    border: none;
		    border-radius: 4px; /* 둥근 모서리 */
		    cursor: pointer;
		    text-align: center;
		    text-decoration: none; /* 링크 밑줄 제거 */
		    transition: background-color 0.3s ease; /* 배경색 전환 효과 */
		    line-height: 50px; /* 버튼 높이와 동일하게 설정하여 수직 중앙 정렬 */
		    vertical-align: middle; /* 수직 정렬 */
		    margin-left: 10px; /* 버튼과 입력 필드 사이 간격 조정 */
		}

        .file-button:hover {
            background-color: #e8e8e8; /* 호버 시 색상 */
        }

        .file-button:focus {
            outline: none; /* 포커스 시 아웃라인 제거 */
            box-shadow: 0 0 5px #007bff; /* 포커스 시 그림자 효과 */
        }
        .main{
        	text-align: center;
        	background-color : white;
        }
        .subject{
        	text-align: center;
        	width: 200px;
        	height: 60p;
        }
         .form{
        	width: 900px;
        	height: 60p;
        }
        #caution{
            position: relative;
   			min-height: 68px;
    		padding: 22px 40px;
    		background-color: #f7f4f0;
        	width:1100px;
        	height : 380px;
        
        }
       table tr td {
		    padding-bottom: 15px; /* 원하는 간격 크기로 설정 */
		}

    </style>
</head>
<body>
<main>
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
        <img src="${pageContext.request.contextPath}/resources/images/지원내용.png"><br>
        <img src="${pageContext.request.contextPath}/resources/images/지원대상.png"><br>
        <img src="${pageContext.request.contextPath}/resources/images/필요서류.png">
</div>
    
    <!-- 모달 창 -->
    <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
       <h3 class="modal-title center-text" id="staticBackdropLabel" style="text-align: center;  flex: 1;">학원비 신청</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <br>
       <span style="font-weight: bold;">신청정보</span>
       <hr>
       <br>
       <div>
       	<table>
       		<tr>
			    <td class="subject">신청직원</td>
			    <td class="form">
			        <input class="form-control form-control-lg" type="text" placeholder="HR부(인재개발)LO 조사역 김설화 | 1653778" aria-label=".form-control-lg example" readonly>
			    </td>
			</tr>
       		<tr>
	            <td class="subject">학습구분 및 분야</td>
	            <td >
	                <div class="flex-container">
						<select id="categorySelect" name="categorySelect" class="form-select form-select-lg mb-3" aria-label="Large select example" onchange="handleCategoryChange()">
					        <option selected disabled>학습구분을 선택해주세요</option>
					        <option value="외국어">외국어</option>
					        <option value="IT">IT</option>
					    </select>
			    
			    		<select id="subCategorySelect" name="subCategorySelect" class="form-select form-select-lg mb-3" aria-label="Large select example" disabled>
			        		<option selected disabled>학습분야를 선택해주세요</option>
			   			 </select>
			</div>
			
			<script>
			 function handleCategoryChange() {
			        var category = document.getElementById("categorySelect").value;
			        var subCategorySelect = document.getElementById("subCategorySelect");

			        // Clear the current options
			        subCategorySelect.innerHTML = '<option selected disabled>학습분야를 선택해주세요</option>';
			        
			        if (category === "IT") {
			            addOptions(subCategorySelect, ["프로그래밍", "데이터", "AI", "등급자격증(ICT관련)", "기타"]);
			        } else if (category === "외국어") {
			            addOptions(subCategorySelect, ["영어", "일어", "중국어", "기타"]);
			        }

			        // Enable the subCategorySelect
			        subCategorySelect.disabled = false;
			    }

			    function addOptions(selectElement, options) {
			        options.forEach(function(option) {
			            var newOption = document.createElement("option");
			            newOption.value = option;
			            newOption.text = option;
			            selectElement.appendChild(newOption);
			        });
			    }
			</script>
	            </td>
       		 </tr>
       		 <tr>
       			<td class="subject">학습방법</td>
       			<td class="form">
       				<select class="form-select form-select-lg mb-3 " aria-label="Large select example">
       				  <option selected disabled>학습방법을 선택해주세요</option>
					  <option value="학원수강">학원수강</option>
					  <option value="인터넷수강">인터넷수강</option>
					  <option value="전화수강">전화수강</option>
					  <option value="학습지">학습지</option>
					</select>  				
				</td>
       		</tr>
       		<tr>
       			<td class="subject">학원명</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text" placeholder="학원명을 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td class="subject">학원 홈페이지</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text" placeholder="학원 홈페이지 주소를 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td class="subject">과정명</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text" placeholder="과정명을 입력하세요" aria-label=".form-control-lg example">
				</td>
       		</tr>
       		<tr>
       			<td class="subject">수강기간</td>
       			<td class="form">
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
       			<td class="subject">수강증</td>
       			<td class="d-flex align-items-center">
				    <input id="academy_proof-name" class="form-control form-control-lg " type="text" placeholder="수강자명,학원명,수강과정명,수강기간,수강료가 기입된 수강증을 등록하세요."  style="display: inline-block;" readonly>
				    <label class="academy_proof-file-button file-button" for="academy_proof-file" style="display: inline-block; vertical-align: middle;">수강증 등록하기</label>
				    <input type="file" id="academy_proof-file" name="academy_proof-file" style="display: none;"  onchange="updateAcademy_proofName(this)">
				</td>
				<script>
				 	function updateAcademy_proofName(input) {
				 		 const fileName = input.files[0].name;
				         document.getElementById('academy_proof-name').value = fileName;
				    }
				</script>
	
       		</tr>
       		
       			 <tr>
                    <td class="subject">수강료</td>
                    <td class="form">
                        <input id="academy_price" name="academy_price" class="form-control form-control-lg" type="text" placeholder="수강료를 입력하세요" aria-label=".form-control-lg example">
                    </td>
                </tr>
                <tr>
                    <td class="subject">지원금액</td>
                    <td class="form">
                        <input id="refund_price" name="refund_price" class="form-control form-control-lg" type="text" aria-label=".form-control-lg example" readonly>
                        <span class="info-span">지원대상 금액은 수강료의 80% 교재비 제외</span>
                    </td>
                </tr>
               <script>
				    // 수강료 입력 필드
				    const academy_price = document.getElementById('academy_price');
				    // 지원금액 출력 필드
				    const refund_price = document.getElementById('refund_price');
				
				    // 수강료 입력이 변경될 때마다 호출되는 함수
				    academy_price.addEventListener('input', function() {
				        // 입력된 수강료 가져오기
				        const price = parseFloat(this.value.replace(/,/g, ''));
				
				        // 수강료가 숫자이고 유효할 경우
				        if (!isNaN(price) && price >= 0) {
				            // 지원금액 계산 (수강료의 80%)
				            const refund = price * 0.8;
				
				            // 계산된 지원금액을 지원금액 입력 필드에 쉼표를 추가하여 출력
				            refund_price.value = refund.toLocaleString('ko-KR');
				        } else {
				            // 유효하지 않은 입력이거나 빈 문자열인 경우
				            refund_price.value = ''; // 입력 필드 비우기
				        }
				
				        // 입력 필드에 쉼표 추가하여 출력
				        this.value = price.toLocaleString('ko-KR');
				    });
				</script>
       	</table>
       	  <br>
       	  <span style="font-weight: bold;">결제정보</span>
       	  <hr>
       	 <table>
       	 <tr>
       	 	<td class="subject">결제정보</td>
       	 	<td class="form">
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
       			<td class="subject">카드번호</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text" placeholder="카드 번호를 입력하세요" aria-label=".form-control-lg example" >
					<sapn>반드시 실카드번호를 입력해주세요.(ex. 알파원카드로 결제시 알파원으로 설정된 실카드번호)</sapn>	
				</td>
				
       		</tr>
       		 <tr>
       			<td class="subject">승인번호</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text" placeholder="승인 번호를 입력하세요" aria-label=".form-control-lg example" >
				</td>
				
       		</tr>
       		<tr>
       			<td class="subject">승인·입금일</td>
       			<td class="form">
       				<input class="form-control form-control-lg date-input" id="confirm_number" name="confirm_number" 
        			type="date" aria-label=".form-control-lg example" required>
				</td>
				
       		</tr>
       		<tr>
       			<td class="subject">가맹점명</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text" placeholder="가맹점명를 입력하세요" aria-label=".form-control-lg example" >
				</td>
				
       		</tr>
       		<tr >
       			<td class="subject">결제영수증</td>
       			<td class="d-flex align-items-center form">
       				<input id="receipt-name" class="form-control form-control-lg" type="text" placeholder="카드번호,승인번호, 승인일, 승인금액, 가맹점 정보가 기재된 결제영수증을 등록하세요." readonly>
                    <label class="receipt-file-button file-button" for="receipt-file">결제 영수증 가져오기</label>
                    <input type="file" id="receipt-file" name="receipt-file" style="display: none;" onchange="updateReceiptName(this)">
				</td>
				<tr>
					<td></td>
					<td>
						<div>*영수증은 본인의 KB카드에 한함</div>
					</td>
				<tr>
				<script>
				 	function updateReceiptName(input) {
				        const fileName = input.files[0].name;
				        document.getElementById('receipt-name').value = fileName;
				    }
				</script>
       		</tr>
       	 
       	 </table>
       	  <br>
       	  <span style="font-weight: bold;">결과 등록</span>
       	  <hr>
       	 <table>
       		<tr>
			    <td class="subject">수료증 등록</td>
			    <td class="d-flex align-items-center form">
			        <input id="certificates-name" class="form-control form-control-lg" type="text" placeholder="수강한 교육과정의 수료증, 출석표, 진도율표 중 택1하여 등록해 주세요." readonly>
			        <label class="certificates-file-button file-button" for="certificates-file">수료증 등록하기</label>
			        <input type="file" id="certificates-file" name="certificates-file" style="display: none;" onchange="updateCertificatesName(this)">
			    </td>
			</tr>
		<script>
		    function updateCertificatesName(input) {
		        const fileName = input.files[0].name;
		        document.getElementById('certificates-name').value = fileName;
		    }
		</script>
       	 
       	 </table>
			 <br>
       	  <span style="font-weight: bold;">지원 정보</span>
       	  <hr>
       	 <table>
       		<tr >
       			<td class="subject">지원 한도액</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text" value="960,000" aria-label=".form-control-lg example" readonly>
				</td>
       		</tr>
       		
       		<tr >
       			<td class="subject">지원신청 누계액</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text"  value="0" aria-label=".form-control-lg example" readonly>
				</td>
       		</tr>
       		
       		<tr >
       			<td class="subject">지원 누계액</td>
       			<td class="form">
       				<input class="form-control form-control-lg" type="text"  value="0" aria-label=".form-control-lg example" readonly>
				</td>
       		</tr>
       	 
       	 </table>
       	  <br>
       	  <span style="font-weight: bold;">지원 신청시 유의사항</span>
       	  <hr>
       	  <div id="caution">
       	  	<div>본인은 아래 사항에 대해 모두 확인 및 동의합니다.</div><br><br>
       	  	<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="" id="caution1">
			  <label class="form-check-label" for="caution1">
			   자기주도학습비는 직원 본인의 자기개발 및 직무역량향상을 위해 지원하고 있습니다. 본 제도의 취지에 맞는 지원임을 확인합니다.
			  </label>
			  <br>
			  <br>
			  <input class="form-check-input" type="checkbox" value="" id="caution2">
			  <label class="form-check-label" for="caution2">
			    허위정보 등록 또는 부당수령 확인시 소속부점 통보,기지원금 환입,향후 자기주도학습비 지원 제한, 각 종 연수참가 제한, 인사조치 등을 실시할 예정입니다.
			  </label>
			  <br>
			  <br>
			  <input class="form-check-input" type="checkbox" value="" id="caution3">
			  <label class="form-check-label" for="caution3">
			    신청 내용 검증을 위해 추가자료 제출 요청 및 개인정보 조회를 실시할 수 있습니다.
			  </label>
			  <br>
			  <br>
			  <input class="form-check-input" type="checkbox" value="" id="caution4">
			  <label class="form-check-label" for="caution4">
			    교육훈련비 미환입자의 경우, 자기주도학습비 지원이 제한됩니다.
			  </label>
			  <br>
			  <br>
			  <input class="form-check-input" type="checkbox" value="" id="caution5">
			  <label class="form-check-label" for="caution5">
			    지급된 자기주도학습비는 기소득 처리 대상으로 HR부(인재개발)에서 일괄 과표처리합니다.
			  </label>
			</div>
       	  </div>
       		
       </div>
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-secondary">지원신청</button>
        <button type="button" class="btn btn-Light" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</main>
	<c:import url="../footer.jsp"></c:import>
</body>

</html>
