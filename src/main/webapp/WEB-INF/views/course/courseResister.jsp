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

td {
	padding: 5px; /* 셀 간격을 위해 약간의 패딩 추가 */
}

.label-cell {
	width: 120px; /* 라벨 셀의 넓이 설정 */
	text-align: right;
	padding-right: 10px;
}

.input-cell {
	width: 300px; /* 입력 필드 셀의 넓이 설정 */
}

.full-width {
	width: 60%; /* 테이블 전체 넓이 설정 */
}
</style>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	<main style="margin: 200px auto 0;" /* Center align horizontally */>
		<h1>
			<center>과목 등록</center>
		</h1>
		<form action="${pageContext.request.contextPath}/signUpConfirm"
			id="regiform" method="Post" enctype="multipart/form-data" name="regiform">
			<table class="full-width" bgcolor="white" border="1">
				<tr style="height: 40px;">
					<td colspan="4" bgcolor="pink"><center>과목 기본정보</center></td>
				</tr>
				<tr>
					<td class="label-cell" bgcolor="gray">과목명:</td>
					<td class="input-cell"><input type="text" name="course_name"
						id="course_name"></td>
					<td class="label-cell" bgcolor="gray">과목 회차:</td>
					<td class="input-cell"><input type="number"
						name="session_number" id="session_number"></td>
				</tr>

				<tr>
					<td class="label-cell" bgcolor="gray">연수대분류:</td>
					<td class="input-cell"><select name="course_category"
						id="course_category">
							<option value="직무필수">직무필수</option>
							<option value="직급필수">직급필수</option>
							<option value="직무인증제">직무인증제</option>
							<option value="직무역량향상">직무역량향상</option>
					</select></td>
					<td class="label-cell" bgcolor="gray">연수중분류:</td>
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
					<td class="label-cell" bgcolor="gray">연수시작일:</td>
					<td class="input-cell"><input type="date"
						name="course_start_date" id="course_start_date" class="date-input"></td>
					<td class="label-cell" bgcolor="gray">연수종료일:</td>
					<td class="input-cell"><input type="date"
						name="course_end_date" id="course_end_date" class="date-input"></td>
				</tr>
				<tr>
					<td class="label-cell" bgcolor="gray">연수신청시작일:</td>
					<td class="input-cell"><input type="date"
						name="course_entrol_start_date" id="course_entrol_start_date"
						class="date-input"></td>
					<td class="label-cell" bgcolor="gray">연수신청종료일:</td>
					<td class="input-cell"><input type="date"
						name="course_entrol_end_date" id="course_entrol_end_date"
						class="date-input"></td>
				</tr>
				<tr>
					<td class="label-cell" bgcolor="gray">연수취소가능시작일:</td>
					<td class="input-cell"><input type="date"
						name="course_cancel_start_date" id="course_cancel_start_date"
						class="date-input"></td>
					<td class="label-cell" bgcolor="gray">연수취소가능종료일:</td>
					<td class="input-cell"><input type="date"
						name="course_cancel_end_date" id="course_cancel_end_date"
						class="date-input"></td>
				</tr>
				<tr>

					<td class="label-cell" bgcolor="gray">진행현황:</td>
					<td class="input-cell"><select name="progress_status"
						id="progress_status">
							<option value="진행중">진행중</option>
							<option value="예정">예정</option>
							<option value="완료">완료</option>
							<option value="취소">취소</option>
					</select></td>

					<td class="label-cell" bgcolor="gray">평가스타일:</td>
					<td class="input-cell"><input type="text"
						name="evaluation_style" id="evaluation_style"></td>
				</tr>


				<tr>

					<td class="label-cell" bgcolor="gray">연수형태:</td>
					<td class="input-cell"><input type="text" name="training_type"
						id="training_type"></td>

					<td class="label-cell" bgcolor="gray">주관처:</td>
					<td class="input-cell"><input type="text"
						name="operating_firm" id="operating_firm"></td>




				</tr>
				<tr>


					<td class="label-cell" bgcolor="gray">연수난이도:</td>
					<td class="input-cell"><input type="text"
						name="course_difficulty" id="course_difficulty"></td>

					<td class="label-cell" bgcolor="gray">교재유무:</td>
					<td class="input-cell"><input type="text"
						name="material_availabe" id="material_availabe"></td>

				</tr>
				<tr>

					<td class="label-cell" bgcolor="gray">평가일:</td>
					<td class="input-cell"><input type="text"
						name="evaluation_date" id="evaluation_date"></td>

					<td class="label-cell" bgcolor="gray">평가일2:</td>
					<td class="input-cell"><input type="text"
						name="evaluation_date_second" id="evaluation_date_second"></td>


				</tr>
				<tr>



					<td class="label-cell" bgcolor="gray">마일리지:</td>
					<td class="input-cell"><input type="text" name="mileage"
						id="mileage"></td>

					<td class="label-cell" bgcolor="gray">부점장결재필요여부:</td>
					<td class="input-cell"><input type="text"
						name="manager_approval" id="manager_approval"></td>
				</tr>
				<tr>
					<td class="label-cell" bgcolor="gray">신청정원:</td>
					<td class="input-cell"><input type="text"
						name="course_capacity" id="course_capacity"></td>
					<td class="label-cell" bgcolor="gray">신청인원:</td>
					<td class="input-cell"><input type="text" name="course_count"
						id="course_count"></td>
				</tr>


				<tr>
					<td class="label-cell" bgcolor="gray">과정요약:</td>
					<td class="input-cell" colspan="3"><textarea
							name="course_summary" id="course_summary"></textarea></td>
				</tr>
				<tr>
					<td class="label-cell" bgcolor="gray">과정상세:</td>
					<td class="input-cell" colspan="3"><textarea
							name="course_details" id="course_details"></textarea></td>
				</tr>

				<tr>
					<td class="label-cell" bgcolor="gray">대표 사진:</td>
					<td class="input-cell" colspan="3"><input type="file"
						name="course_proflie"></td>
				</tr>
			</table>
			<div class="options">
				<input type="submit" value="회원 가입"> <input type="reset"
					value="다시 입력">
			</div>
		</form>
	</main>
	<c:import url="../footer.jsp"></c:import>
	<script defer
		src="${pageContext.request.contextPath}/resources/js/signup.js"></script>
</body>
</html>
