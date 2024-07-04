<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="${pageContext.request.contextPath}/resources/css/facility_noticeView.css" rel="stylesheet">
    <title>KB 스타런</title>
    
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
	  		<div class="breadcrumbs">
                <a href="#">홈</a> &gt; <a href="#">생활연수</a> &gt; 공지사항
            </div>
      		<div class="maintitle">공지사항</div>
			<table width="500" cellpadding="0" cellspacing="0" border="1"  class="table-warning">
				<input type="hidden" name="facility_notice_num" value="${content_view.facility_notice_num}"/>
				<tr class="table-warning">
					<td> 번호 </td>
					<td> ${content_view.facility_notice_num} </td>
				</tr>
				<tr>
					<td> 조회수 </td>
					<td> ${content_view.facility_notice_hit} </td>
				</tr>
				<tr>
					<td> 작성일 </td>
					<td> ${content_view.facility_notice_rolldate} </td>
				</tr>
				<tr>
					<td> 제목 </td>
					<td> ${content_view.facility_notice_title}</td>
				</tr>
				<tr>
					<td> 내용 </td>
					<td> ${content_view.facility_notice_content}</td>
				</tr>
		</table>
		<div class="option-button">
			<c:if test="${user_id=='admin'}">
			<a href="notice_modify?num=${content_view.facility_notice_num}">
					<button type="button" class="btn btn-warning">수 정</button>
					</a>
					<a href="notice_delete?num=${content_view.facility_notice_num}">
					<button type="button" class="btn btn-danger">삭 제</button>
					</a>
			</c:if>
					<a href="notice_view"><button type="button" class="btn btn-primary">목 록</button></a>
		</div>
		
    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>