<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="${pageContext.request.contextPath}/resources/css/facility_noticeWrite.css" rel="stylesheet">
    <title>KB 스타런</title>
    
</head>
<body>
	<c:import url="../nav.jsp"></c:import>
	
	  <main>
      <!-- 게시판 등록 -->
      	<div class="maintitle"><span>공지사항</span></div>
		<form action="${pageContext.request.contextPath}/facility/noticeAddAction" method="post" 
			enctype="multipart/form-data" name="noticeform">
		<table class="table table-striped">
			<tr>
				<td style="font-family:돋음; font-size:12" height="16">
					<div align="center">제 목</div>
				</td>
				<td>
					<input name="facility_notice_title" type="text" size="50" maxlength="100" 
						value=""/>
				</td>
			</tr>
			<tr>
				<td style="font-family:돋음; font-size:12">
					<div align="center">내 용</div>
				</td>
				<td>
					<textarea name="facility_notice_content" cols="67" rows="15"></textarea>
				</td>
			</tr>
			<tr>
				<td style="font-family:돋음; font-size:12">
					<div align="center">파일 첨부</div>
				</td>
				<td>
					<input name="facility_notice_file" type="file"/>
				</td>
			</tr>
			<tr bgcolor="cccccc">
				<td colspan="2" style="height:1px;">
				</td>
			</tr>
			<tr><td colspan="2">&nbsp;</td></tr>
			<tr align="center" valign="middle">
				<td colspan="5">
					<a href="javascript:addboard()">[등록]</a>&nbsp;&nbsp;
					<a href="javascript:history.go(-1)">[뒤로]</a>
				</td>
			</tr>
		</table>
		</form>
		<!-- 게시판 등록 -->
    </main>
	
	<c:import url="../footer.jsp"></c:import>
	<script>
	function addboard(){
		noticeform.submit();
	}
	</script>
</body>
</html>