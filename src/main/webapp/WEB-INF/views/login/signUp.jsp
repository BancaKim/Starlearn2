<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="${pageContext.request.contextPath}/resources/css/signup.css" rel="stylesheet">
    <title>KB 스타런</title>
    
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	<main>
		<h1><center> 회원가입</center> </h1>
    	<form action = "${pageContext.request.contextPath}/signUpConfirm" id="regiform" method="Post"enctype="multipart/form-data" name="regiform">

		<table bgcolor = "white" border="1">
		
		<tr style="height: 40px;">
		<td colspan="2" bgcolor="pink">회원기본정보</td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">아이디: </td>
		<td> <input type="text" name="user_id" id="id" size="20"> 4~12자의 영문 대소문자와 숫자로만 입력 </td>
		</tr>

		<tr> 
		<td bgcolor="gray">비밀번호: </td>
		<td> <input type="password" name="user_pw" id="password" size="20"> 4~12자의 영문 대소문자와 숫자로만 입력 </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">비밀번호 확인: </td>
		<td><input type="password" name="checkPassword" id="checkPassword"  size="20"> </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">이름: 
		<td> <input type="text" name="user_name" id="userName" size="20"> </td>
		</tr>
		<tr> 
		<td bgcolor="gray">사번: 
		<td> <input type="text" name="user_idn" id="userIdn" size="20"> </td>
		</tr>
		<tr> 
		<td bgcolor="gray">직급:
		<td> <input type="text" name="user_rank" id="userRank" size="20"> </td>
		</tr>
		<tr> 
		<td bgcolor="gray">직위: 
		<td> <input type="text" name="user_position" id="userPosition" size="20"> </td>
		</tr>
		<tr> 
		<td bgcolor="gray">부서: 
		<td> <input type="text" name="user_dept" id="userDept" size="20"> </td>
		</tr>
		
		<tr style="height: 40px;">
		<td colspan="2" bgcolor="pink">개인 신상 정보 </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">핸드폰번호: </td>
		<td> <input type="text" name="user_ph" id="ph" size="20"> 예)01057815027 </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">생일: </td>
		<td> <input type="text" name="birthYear" id="birthYear" size="10">년
		<select name="birthMonth" id="birthMonth">
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
		</select> 월
		<select name="birthDay" id="birthDay">
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
		</select> 일
		</tr>
		
		<tr> 
		<td bgcolor="gray">입행년도: </td>
		<td> <input type="number" name="user_enrollYHear" id="ph" size="20"> 예)2018 </td>
		</tr>
		
		<tr> 
		<td bgcolor="gray">프로필 사진: </td>
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
	<script defer src="${pageContext.request.contextPath}/resources/js/signup.js">
</script>
</body>
</html>