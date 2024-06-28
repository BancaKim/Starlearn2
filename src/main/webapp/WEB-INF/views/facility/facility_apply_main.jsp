<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/resources/css/facility_main.css" rel="stylesheet">
    <title>KB 스타런</title>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	<main>
            <a href="#" class="back-button">&lt; 이전</a>
                <h1>생활연수 신청</h1>
        <div class="tab-container">
            <button class="tab active">연수원</button>
            <button class="tab">체육시설</button>
        </div>

        <section class="notice-board">
            <h2>공지사항</h2>
            <ul>
                <li>
                    <span class="number">1</span>
                    <span class="title">속초 대전연수원 '생활 연수 운영 방법' 변경 안내</span>
                    <span class="date">2023-11-01</span>
                    <span class="views">10572 조회</span>
                </li>
                <li>
                    <span class="number">2</span>
                    <span class="title">생활연수 예약접수일자 임시변경 안내</span>
                    <span class="date">2022-12-29</span>
                    <span class="views">7346 조회</span>
                </li>
                <li>
                    <span class="number">3</span>
                    <span class="title">속초 · 대전연수원 생활연수 이용안내 입니다.</span>
                    <span class="date">2022-12-01</span>
                    <span class="views">15379 조회</span>
                </li>
            </ul>
        </section>

        <section class="application-status">
            <h2>신청현황</h2>
            <p>전체 0건</p>
            <table>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>시설명</th>
                        <th>신청기간</th>
                        <th>신청일시</th>
                        <th>신청상태</th>
                        <th>기능</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- 테이블 내용은 비어있음 -->
                </tbody>
            </table>
            <button type="button" class="apply-button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            	연수원 간편신청
            </button>
           
           <!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog modal-xl">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="staticBackdropLabel" align="center">연수원 이용 신청하기</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
					  <p>설월과 충훈의 가득한 숙조, 대전연수원에 오셔서 즐겁고 행복한 시간 보내시길 바랍니다.</p>
					  
						  <div class="info">
						    <p>숙조·대전연수원(안식년 휴가 활용 포함) 생활연수 안내<br/>
						    운영 예정일 : '24.8.23(금) ~ 24.8.31(일)<br/>
						    접수 Open : '24.7.1(월) 21:00 ~<br/>
						    7월12일~8월19일 하계생활연수 신청<br/>
						    8월19일~8월22일 미운영 (시설점검)<br/>
						    ※ 참고 23.10.27.인재개발부 579<br/>
						    숙조·대전연수원 "생활연수 운영방법, 변경 안내"</p>
						  </div>
					<div class="second-container">
					 <div class="image-container">
					  </div>
					<div class="right-container">
					  <form>
					    <div class="form-group">
					      <label>연수원 선택</label>
					      <div class="button-group">
					        <button class="selected">숙조 연수원</button>
					        <button>대전 연수원</button>
					      </div>
					    </div>
					
					    <div class="form-group">
					      <label>방 유형 선택</label>
					      <div class="button-group">
					        <button class="selected">투룸</button>
					        <button>안식년 (투룸)</button>
					      </div>
					    </div>
					
					    <div class="form-group">
					      <label>투숙기간 선택</label>
					      <input type="text" value="입실 2024.07.04" readonly>
					    </div>
					
					    <button class="submit-btn">연수원 신청하기</button>
					  </form>
					  </div>
					  </div>
					</div> 
					</div>
					</div>
					</div>   
        </section>

        <section class="quick-links">
            <h2>생활연수 바로가기</h2>
            <div class="link-container">
                <a href="#" class="quick-link">생활연수 FAQ</a>
                <a href="#" class="quick-link">생활연수 운영지침</a>
            </div>
        </section>
    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>