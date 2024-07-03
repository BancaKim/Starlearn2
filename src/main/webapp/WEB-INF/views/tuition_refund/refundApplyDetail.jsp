<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원 신청 현황 조회</title>
<c:import url="../nav.jsp"></c:import>
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
        background-color: #fff; /* 바디 배경색을 하얀색으로 설정 */
        margin: 0;
        padding: 0;
        height: 100vh;
    }
    
    main {
        text-align: center;
        margin: 200px auto 0; /* Center align horizontally */
    }
</style>

<body>
<main>
	<table>
		<tr>
			  <td class="subject">신청직원</td>
			  <td class="form">
			      
			  </td>
		</tr>
       	<tr>
	          <td class="subject">학습구분 및 분야</td>
	          <td></td>
       	</tr>
       	<tr>
       		  <td class="subject">학습방법</td>
       	      <td class="form"></td>
       	</tr>
       	<tr>
       		  <td class="subject">학원명</td>
       		  <td class="form"></td>
       	</tr>
       	<tr>
       		  <td class="subject">학원 홈페이지</td>
       		  <td class="form"></td>
       	</tr>
       	<tr>
       		  <td class="subject">과정명</td>
       		  <td class="form"></td>
       	</tr>
       	<tr>
       		  <td class="subject">수강기간</td>
       		  <td class="form"></td>	
       	</tr>
       	<tr>
              <td class="subject">수강료</td>
              <td class="form"></td>      
        </tr>
        <tr>
               <td class="subject">지원금액</td>
               <td class="form"></td>
        </tr>
  
       	<br>
       	  <div id="title_subject">
       	 	 <span style="font-weight: bold; text-align: left;">결제정보</span>
       	  </div>
       	  <hr>

       	 <tr>
       	 	<td class="subject">결제정보</td>
       	 	<td class="form">
       	 		
       	 	</td>
       	 
       	 </tr>
       	 <tr>
       			<td class="subject">카드번호</td>
       			<td class="form">
       				
				</td>
				
       		</tr>
       		 <tr>
       			<td class="subject">승인번호</td>
       			<td class="form">
       				
				</td>
				
       		</tr>
       		<tr>
       			<td class="subject">승인·입금일</td>
       			<td class="form">
       				
				</td>
				
       		</tr>
       		<tr>
       			<td class="subject">가맹점명</td>
       			<td class="form">
       				
				</td>
       		</tr>


	</table>

</main>
<br>
<br>
<br>
<br>
<br><br>
<c:import url="../footer.jsp"></c:import>
</body>
</html>