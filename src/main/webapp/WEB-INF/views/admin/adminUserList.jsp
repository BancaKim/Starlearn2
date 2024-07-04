<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타런</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminUserList.css"/>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
	<c:choose>
		<c:when test="${user_id == 'admin'}">
			<c:import url="../nav_admin.jsp"></c:import>
		</c:when>
		<c:otherwise>
			<c:import url="../nav.jsp"></c:import>		
		</c:otherwise>
	</c:choose>
	<main>
		  <div class="content__inner">
                    <h1>회원정보 관리</h1>
            <div class="member_table">
				<table>
	        		<thead>
	           		 <tr>
	           		 	<th scope="col">ID</th>
	               		<th scope="col">비밀번호</th>
	               		<th scope="col">이름</th>
	              		<th scope="col">직급</th>
	                	<th scope="col">부서</th>
	                	<th scope="col">입사년도</th>
	               		<th scope="col">관리자 여부</th>
	               		<th scope="co1">비고</th>
	           		 </tr>
	      			 </thead>
     			<tbody>
    				<c:forEach items="${requestScope.userlist}" var="ul">
      		 			<tr>
		         			<th scope="row">
								<a href="./MemberViewAction.lo?user_id=${ul.user_id}">
									${ul.user_id}
								</a>
		         			</th>
							<td>${ul.user_pw}</td>
							<td>${ul.user_name}</td>
				  			<td>${ul.user_rank}</td>
				  			<td>${ul.user_dept}</td>
				  			<td>${ul.user_enrollYear}</td>	
				  			<td>${user.user_isAdmin == 1 ? '관리자' : '일반 사용자'}</td>
				  			<td>
				  				<a href="${pageContext.request.contextPath}/admin/adminDelete?user_id=${ul.user_id}"><button type="button" class="btn btn-danger">삭제</button></a>
				  			</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>
