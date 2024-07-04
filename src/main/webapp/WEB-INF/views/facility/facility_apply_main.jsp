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
    <link href="${pageContext.request.contextPath}/resources/css/facility_main.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>KB 스타런</title>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	<main>
		<br><Br><Br>
		<div class="maintitle">생활연수 신청</div>
        <div class="tab-container">
            <button class="tab active">연수원</button>
            <button class="tab">체육시설</button>
        </div>

       <section class="notice-board">
            <h2>공지사항</h2>
            <ul>
            <c:forEach items="${noticelist}" var="item">
            	<li>
                    <span class="number">${item.facility_notice_num}</span>
                    <a href="content_view?num=${item.facility_notice_num}" class="notice-title"><span class="title">${item.facility_notice_title}</span></a>
                    <span class="date">${item.facility_notice_rolldate}</span>
                    <span class="views">${item.facility_notice_hit} 조회</span>
                </li>
            </c:forEach>
            </ul>
        </section>

        <section class="application-status">
            <h2>신청현황</h2>
            <p>전체 ${listCount} 건</p>
            <table>
                <thead>
                    <tr>
                        <th>시설명</th>
                        <th>세부사항</th>
                        <th>신청입실일</th>
                        <th>신청퇴실일</th>
                        <th>신청인원</th>
                        <th>기능</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${facilityApplyList}" var="item">
                    	<tr>
	                    	<td>${item.facility_trainingCenter}</td>
	                    	<td>${item.facility_roomType}</td>
	                    	<td>${item.facility_startDate}</td>
	                    	<td>${item.facility_endDate}</td>
	                    	<td>${item.facility_appl_pn}</td>
	                    	<td></td>
	                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <button type="button" class="apply-button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            	연수원 간편신청
            </button>
           
           <!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog modal-xl">
				    	<div class="modal-content">
				    		<div class="modal-header text-center">
				        		<h1 class="modal-title fs-5" id="staticBackdropLabel" align="center">연수원 이용 신청하기</h1>
				        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      		</div>
				      		<div class="modal-body">
						  		<p>설렘과 웃음이 가득한 속초, 대전연수원에 오셔서 즐겁고 행복한 시간 보내시길 바랍니다.</p>
						  
								<div class="info">
								    <p>속초·대전연수원(안식년 휴가 활용 포함) 생활연수 안내<br/>
								    운영 예정일 : '24.8.23(금) ~ 24.8.31(일)<br/>
								    접수 Open : '24.7.1(월) 21:00 ~<br/>
								    7월12일~8월19일 하계생활연수 신청<br/>
								    8월19일~8월22일 미운영 (시설점검)<br/>
								    ※ 참고 23.10.27.인재개발부 579<br/>
								    숙조·대전연수원 "생활연수 운영방법, 변경 안내"</p>
								</div>
								<div class="second-container">
									<div class="image-container"></div>
									<div class="form-container">
										<form id="applicationForm" action="${pageContext.request.contextPath}/facility/facilityApplyForm" method="post">
			                    			<div class="options">
								    			<label for="trainingCenter">연수원 선택</label>
								    			<div class="button_group">
			                        				
			                        				<input type="radio" class="btn-check" name="trainingCenter" id="option5" autocomplete="off" value="속초" checked>
													<label class="btn" for="option5">속초 연수원</label>

													<input type="radio" class="btn-check" name="trainingCenter" id="option6" autocomplete="off" value="대천" >
													<label class="btn" for="option6">대천 연수원</label>

			                    				</div>
			                    			</div>
								   			<div class="options">
				                       			<label>방 유형 선택</label>
				                       			<div class="button_group">	
			                        				<input type="radio" class="btn-check" name="roomType" id="option7" value="투룸" autocomplete="off" checked>
													<label class="btn" for="option7">투룸</label>

													<input type="radio" class="btn-check" name="roomType" id="option8" value="쓰리룸" autocomplete="off">
													<label class="btn" for="option8">쓰리룸</label>	
			                  					</div>
			                  				</div>
			                    			<div class="options">
			                        			<label>입실 날짜 선택</label>
			                        			<div class="button_group">
			                        				<input class="form-control form-control-lg date-input" id="startDate" name="startDate"
       												type="date" aria-label=".form-control-lg example" required>
       												
       												 <input class="form-control form-control-lg date-input" id="endDate" name="endDate"
       				 								type="date" aria-label=".form-control-lg example"  onchange="handleDateChange()" required>
       				 								<br>
       				 								
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
       				 								
			                        			</div>
           			
			                    			</div>
		                    				<button type="submit" class="apply-button">연수원 신청하기</button>
							  			</form>
									</div>
									

								</div>
							</div> 
						</div>
					</div>
				</div>   
        </section>

    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>