<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KB 스타런</title>
<style>
.date-input {
	width: 300px; /* 원하는 넓이로 설정 */
}

.resister_body {
	background-color: #f4f4f4;
	display: flex;
	justify-content: center;
}

td {
	padding: 5px; /* 셀 간격을 위해 약간의 패딩 추가 */
}

.label-cell {
	width: 120px; /* 라벨 셀의 넓이 설정 */
	text-align: right;
	padding-right: 10px;
	background-color: #f5ebe0;
	;
}

.input-cell {
	width: 120px; /* 입력 필드 셀의 넓이 설정 */
}

.full-width {
	width: 60%; /* 테이블 전체 넓이 설정 */
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
	</c:choose>>
	<main style="margin: 150px auto 0;" /* Center align horizontally * />



		
		<form class="resister_body" action = "${pageContext.request.contextPath}/course/courseResisterAction" id="regiform" method="Post" enctype="multipart/form-data" name="regiform">
		<table class="full-width" bgcolor="#faebd7" border="1">
			<tr style="height: 40px;">
				<td colspan="4" bgcolor="d4a373"><center>
						<h3>과목 기본정보 입력</h3>
					</center></td>
			</tr>
			<tr>
				<td class="label-cell">과목명:</td>
				<td class="input-cell"><input type="text" name="course_name"
					id="course_name"></td>
				<td class="label-cell">과목 회차:</td>
				<td class="input-cell"><input type="number"
					name="session_number" id="session_number"></td>
			</tr>

			<tr>
				<td class="label-cell">연수대분류:</td>
				<td class="input-cell"><select name="course_category"
					id="course_category">
						<option value="직무필수">직무필수</option>
						<option value="직급필수">직급필수</option>
						<option value="직무인증제">직무인증제</option>
						<option value="직무역량향상">직무역량향상</option>
				</select></td>
				<td class="label-cell">연수중분류:</td>
				<td class="input-cell"><select name="course_subcategory"
					id="course_subcategory">
						<option value="공통A">공통A</option>
						<option value="공통B">공통B</option>
						<option value="선택">선택</option>
						<option value="개인금융">개인금융</option>
						<option value="기업금융">기업금융</option>
				</select></td>
			</tr>


			<tr>
				<td class="label-cell">연수시작일:</td>
				<td class="input-cell"><input type="date"
					name="course_start_date" id="course_start_date" class="date-input"></td>
				<td class="label-cell">연수종료일:</td>
				<td class="input-cell"><input type="date"
					name="course_end_date" id="course_end_date" class="date-input"></td>
			</tr>
			<tr>
				<td class="label-cell">연수신청시작일:</td>
				<td class="input-cell"><input type="date"
					name="course_entrol_start_date" id="course_entrol_start_date"
					class="date-input"></td>
				<td class="label-cell">연수신청종료일:</td>
				<td class="input-cell"><input type="date"
					name="course_entrol_end_date" id="course_entrol_end_date"
					class="date-input"></td>
			</tr>
			<tr>
				<td class="label-cell">연수취소가능시작일:</td>
				<td class="input-cell"><input type="date"
					name="course_cancel_start_date" id="course_cancel_start_date"
					class="date-input"></td>
				<td class="label-cell">연수취소가능종료일:</td>
				<td class="input-cell"><input type="date"
					name="course_cancel_end_date" id="course_cancel_end_date"
					class="date-input"></td>
			</tr>
			<tr>

				<td class="label-cell">진행현황:</td>
				<td class="input-cell"><select name="progress_status"
					id="progress_status">
						<option value="예정">예정</option>
						<option value="진행중">진행중</option>
						<option value="완료">완료</option>
						<option value="취소">취소</option>
				</select></td>

				<td class="label-cell">평가스타일:</td>
				<td><select name="evaluation_style" id="evaluation_style">
						<option value="집합평가A">집합평가</option>
						<option value="사이버평가">사이버평가</option>
						<option value="평가없음">평가없음</option>
						<option value="사이버평가&진도율달성">사이버평가&진도율달성</option>

				</select></td>
			<tr>


				<td class="label-cell">연수형태:</td>
				<td><select name="training_type" id="training_type">
						<option value="통신연수">통신연수</option>
						<option value="집합연수">집합연수</option>
						<option value="사이버연수">사이버연수</option>
						<option value="동영상연수">동영상연수</option>

				</select></td>

				<td class="label-cell">주관처:</td>
				<td><select name="operating_firm" id="operating_firm">
						<option value="인재개발부">인재개발부</option>
						<option value="금융연수원">금융연수원</option>
						<option value="행내기타부서">행내기타부서</option>
						<option value="기타국내기관">기타국내기관</option>

				</select></td>

			</tr>
			<tr>

				<td class="label-cell">연수난이도:</td>
				<td><select name="course_difficulty" id="course_difficulty">
						<option value="상">상</option>
						<option value="중">중</option>
						<option value="하">하</option>
				</select></td>


				<td class="label-cell">교재유무:</td>
				<td><select name="material_availabe" id="material_availabe">
						<option value="유">유</option>
						<option value="무">무</option>
				</select></td>

			</tr>
			<tr>

				<td class="label-cell">평가일:</td>
				<td class="input-cell"><input type="date"
					name="evaluation_date" id="evaluation_date"></td>

				<td class="label-cell">평가일2:</td>
				<td class="input-cell"><input type="date"
					name="evaluation_date_second" id="evaluation_date_second"></td>


			</tr>
			<tr>



				<td class="label-cell">마일리지:</td>
				<td class="input-cell"><input type="number" name="mileage"
					id="mileage"></td>
					
									<td class="label-cell">부점장결재필요여부:</td>
				<td><select name="manager_approval" id="manager_approval">
						<option value="필요">필요</option>
						<option value="불필요">불필요</option>
				</select></td>
					
			
			</tr>
			<tr>
				<td class="label-cell">신청정원:</td>
				<td class="input-cell"><input type="number"
					name="course_capacity" id="course_capacity"></td>
				<td class="label-cell">신청인원:</td>
				<td class="input-cell"><input type="number" name="course_count"
					id="course_count"></td>
			</tr>


			<tr>
				<td class="label-cell">과정요약:</td>
				<td class="input-cell" colspan="3"><textarea
						name="course_summary" id="course_summary" rows="4" cols="100"></textarea>
				</td>
			</tr>
			<tr>
				<td class="label-cell">과정상세:</td>
				<td class="input-cell" colspan="3"><textarea
						name="course_details" id="course_details" rows="10" cols="100"></textarea>
				</td>
			</tr>

			<tr>
				<td class="label-cell">대표 사진:</td>
				<td class="input-cell" colspan="3">
				<input type="file" name="course_proflie"></td>
			</tr>

			<tr>
				<td colspan="2">
					<div class="options" style="text-align: right;">
						<input type="submit" value="회원 가입">
				</td>
				<td colspan="2"><input type="reset" value="다시 입력"></td>

				</div>
			</tr>
		</table>

	</form>
	</main>
	<c:import url="../footer.jsp"></c:import>
	<script defer
		src="${pageContext.request.contextPath}/resources/js/signup.js"></script>
</body>
</html>
