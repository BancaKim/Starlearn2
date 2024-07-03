<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="${pageContext.request.contextPath}/resources/css/facility_notice.css" rel="stylesheet">
    <title>KB 스타런</title>
    
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	  <main>
		<table width="500" cellpadding="0" cellspacing="0" border="1">
				<input type="hidden" name="facility_notice_num" value="${content_view.facility_notice_num}"/>
				<tr>
					<td> 번호 </td>
					<td> ${content_view.facility_notice_num} </td>
				</tr>
				<tr>
					<td> 히트 </td>
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
				<tr>
					<td colspan="2"> 
					<a href="notice_modify?num=${content_view.facility_notice_num}">
					[수정]
					</a>
					<a href="notice_delete?num=${content_view.facility_notice_num}">
					[삭제]
					</a>
					<a href="notice_view">[목록]</a>
					</td>
				</tr>
		</table>
    </main>
	
	<c:import url="../footer.jsp"></c:import>
</body>
</html>