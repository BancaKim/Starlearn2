<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="${pageContext.request.contextPath}/resources/css/signup.css" rel="stylesheet">
    <title>스타런</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   	<script src="${pageContext.request.contextPath}/resources/js/signup.js"></script>
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	<main>
		<h1><center> 회원가입</center> </h1>
    	<form action = "${pageContext.request.contextPath}/signUpConfirm" id="regiform" method="Post" enctype="multipart/form-data" name="regiform">

		<table bgcolor = "white" border="1">
		
		<tr style="height: 40px;">
		<td class="substitle" colspan="2" bgcolor="#FFBC00">회원 기본정보</td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">아이디 </td>
		<td> <input type="text" name="user_id" id="id" size="20"> 4~12자의 영문 대소문자와 숫자로만 입력 </td>
		</tr>

		<tr> 
		<td bgcolor="gray">비밀번호 </td>
		<td> <input type="password" name="user_pw" id="password" size="20"> 4~12자의 영문 대소문자와 숫자로만 입력 </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">비밀번호 확인 </td>
		<td><input type="password" name="checkPassword" id="checkPassword"  size="20"> </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">이름 
		<td> <input type="text" name="user_name" id="userName" size="20"> </td>
		</tr>
		<tr> 
		<td bgcolor="gray">사번 
		<td> <input type="text" name="user_idn" id="userIdn" size="20"> </td>
		</tr>
		<tr> 
		<td bgcolor="gray">직급
		<td>
		<select name="user_rank" id="userRank">
			<option selected disabled>직급을 선택하세요</option>
			<option value="L0">L0</option>
			<option value="L1">L1</option>
			<option value="L2">L2</option>
			<option value="L3">L3</option>
			<option value="L4">L4</option>
			<option value="지역본부장">지역본부장</option>
		</select></td>
		</tr>
		<tr> 
		<td bgcolor="gray">직위 
		<td> 
			<select name="user_position" id="userPosition">
				<option selected disabled>직위을 선택하세요</option>
				<option value="계장">계장</option>
				<option value="대리">대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
				<option value="수석차장">수석차장</option>
				<option value="임원">부점장</option>
			</select>
		</td>
		</tr>
		<tr> 
		<td bgcolor="gray">부서 
		<td> <input type="text" name="user_dept" id="userDept" size="20"> </td>
		</tr>
		
		<tr style="height: 40px;">
		<td class="substitle" colspan="2" bgcolor="#FFBB00">개인 신상정보 </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">핸드폰번호 </td>
		<td> <input type="text" name="user_ph" id="ph" size="20"> 예)01057815027 </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">생일 </td>
		<td class="birth-date"> 
			<input type="text" name="user_birthYear" id="birthYear" size="4" placeholder="년">
		<select name="user_birthMonth" id="birthMonth">
		<option value="">월</option>
		<option value="1"> 1</option>
		<option value="2"> 2</option>
		<option value="3"> 3</option>
		<option value="4"> 4</option>
		<option value="5"> 5</option>
		<option value="6"> 6</option>
		<option value="7"> 7</option>
		<option value="8"> 8</option>
		<option value="9"> 9</option>
		<option value="10"> 10</option>
		<option value="11"> 11</option>
		<option value="12"> 12</option>
		</select> 
		<select name="user_birthDay" id="birthDay">
		<option value="">일</option>
		<option value="1"> 1</option>
		<option value="2"> 2</option>
		<option value="3"> 3</option>
		<option value="4"> 4</option>
		<option value="5"> 5</option>
		<option value="6"> 6</option>
		<option value="7"> 7</option>
		<option value="8"> 8</option>
		<option value="9"> 9</option>
		<option value="10"> 10</option>
		<option value="11"> 11</option>
		<option value="12"> 12</option>
		<option value="13"> 13</option>
		<option value="14"> 14</option>
		<option value="15"> 15</option>
		<option value="16"> 16</option>
		<option value="17"> 17</option>
		<option value="18"> 18</option>
		<option value="19"> 19</option>
		<option value="20"> 20</option>
		<option value="21"> 21</option>
		<option value="22"> 22</option>
		<option value="23"> 23</option>
		<option value="24"> 24</option>
		<option value="25"> 25</option>
		<option value="26"> 26</option>
		<option value="27"> 27</option>
		<option value="28"> 28</option>
		<option value="29"> 29</option>
		<option value="30"> 30</option>
		<option value="31"> 31</option>
		</select>
		</tr>
		
		<tr> 
		<td bgcolor="gray">입행년도</td>
		<td> <input type="number" name="user_enrollYear" id="enrollYear" size="20"> 예)2018 </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">프로필 사진</td>
		<td> 
			<input type="file" name="user_proflie"/>
		</td>
		</tr>
		</table>	
		<div class="options">
			<input type="button" value="회원 가입" onclick="allFun()"> 
			<input type="reset" value="다시 입력" onclick="clearForm()">
		</div>
		</form>
		 
    </main>
	
	<c:import url="../footer.jsp"></c:import>


</body>
</html>