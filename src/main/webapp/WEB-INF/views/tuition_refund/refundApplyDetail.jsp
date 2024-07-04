<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원 신청 현황 조회</title>
<c:choose>
		<c:when test="${user_id == 'admin'}">
			<c:import url="../nav_admin.jsp"></c:import>
		</c:when>
		<c:otherwise>
			<c:import url="../nav.jsp"></c:import>		
		</c:otherwise>
	</c:choose>
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
    	width:1100px;
        text-align: center;
        margin: 200px auto 0; /* Center align horizontally */
        
    }
    table{
    	border: 1px solid #d7d7d7;
    	border-radius: 30px; /* 둥근 모서리 */
    }
    td{
    	padding-bottom: 15px;
    }
        #title {
        font-size: 32px;
        font-weight: bold;
    }
</style>
<script>

function RefundList(){
	window.location.href = "${pageContext.request.contextPath}/tuition_refund/refundApplyList";
}
function refundApplyOk(tuition_index){
	OK.submit();
}
function refundApplyNo(tuition_index){
	NO.submit();
}

</script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<body>
<main>
	<div id="title">지원신청 상세 조회</div>
	<br><br>
	<table class="table table-bordered">
		<c:forEach var="refund" items="${RefundListDetail}">
		<tr>
			  <td>신청직원</td>
			  <td>${refund.user_idn}</td>
		</tr>
       	<tr>
	          <td>학습구분 및 분야</td>
	          <td>${refund.learning_division} / ${refund.learning_field}</td>
       	</tr>
       	<tr>
       		  <td>학습방법</td>
       	      <td>${refund.learning_how}</td>
       	</tr>
       	<tr>
       		  <td>학원명</td>
       		  <td>${refund.academy_name}</td>
       	</tr>
       	<tr>
       		  <td>학원 홈페이지</td>
       		  <td>${refund.academy_page}</td>
       	</tr>
       	<tr>
       		  <td>과정명</td>
       		  <td>${refund.academy_course}</td>
       	</tr>
       	<tr>
       		  <td>수강기간</td>
       		  <td>${refund.academy_date}</td>	
       	</tr>
       	<tr>
              <td>수강료</td>
              <td>${refund.academy_price}</td>      
        </tr>
        <tr>
               <td>지원금액</td>
               <td>${refund.refund_price}</td>
        </tr>
  
       	 <tr>
       	 	<td>결제정보</td>
       	 	<td>${refund.payment_how}</td>
       	 
       	 </tr>
       	 <tr>
       		<td>카드번호</td>
       		<td>${refund.credit_number}</td>
				
       		</tr>
       		 <tr>
       			<td>승인번호</td>
       			<td>${refund.confirm_number}</td>
				
       		</tr>
       		<tr>
       			<td>승인·입금일</td>
       			<td>${refund.confirm_date}</td>
				
       		</tr>
       		<tr>
       			<td>가맹점명</td>
       			<td>${refund.franchisee_name}</td>
       		</tr>
       		<tr>
       			<td>신청일자</td>
       			<td>${fn:substring(refund.request_date,0,10)}</td>
       		</tr>
       		<form action="${pageContext.request.contextPath}/admin/refundApply" method="post" name="OK">
       			<input type="hidden" id="index" name="index" value="${refund.tuition_index}">
       			<input type="hidden"  name="YN" value="0">
       		</form>
       		<form action="${pageContext.request.contextPath}/admin/refundApply" method="post" name="NO">
       			<input type="hidden" id="index" name="index" value="${refund.tuition_index}">
       			<input type="hidden"  name="YN" value="1">
       		</form>
       		</c:forEach>
	</table>
	<br>
	<c:choose>
        <c:when test="${sessionScope.user_id == 'admin'}">
            <div class="admin">
                <button type="button" class="btn btn-success" onclick="refundApplyOk()">승인</button>
                <button type="button" class="btn btn-danger" onclick="refundApplyNo()">거절</button>
                <button type="button" class="btn btn-secondary" onclick="javascript:history.go(-1)">돌아가기</button>
            </div>
        </c:when>
        <c:otherwise>
            <div class="user">
                <button type="button" class="btn btn-warning" onclick="RefundList()">돌아가기</button>
            </div>
        </c:otherwise>
    </c:choose>
	
</main>
<br>
<br>
<br>
<br>
<br><br>
<c:import url="../footer.jsp"></c:import>
</body>
</html>