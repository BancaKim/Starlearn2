<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
	<title>스프링MVC</title>
	<script type="text/javascript">
	function modifyboard(){
		modifyform.submit();
	}
	</script>
</head>

<body>
<!-- 게시판 수정 -->
<form action="${pageContext.request.contextPath}/facility/noticeModifyAction" method="post" name="modifyform">
<input type="hidden" name="facility_notice_num" value="${noticedata.facility_notice_num}">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">MVC 게시판</td>
	</tr>
	<tr>
		<td height="16" style="font-family:돋음; font-size:12">
			<div align="center">제 목</div>
		</td>
		<td>
			<input name="facility_notice_title" size="50" maxlength="100" 
				value="${noticedata.facility_notice_title}">
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td>
			<textarea name="facility_notice_content" cols="67" rows="15">
			${noticedata.facility_notice_content}
			</textarea>
		</td>
	</tr>
	
	<c:if test="!(boarddata.BOARD_FILE ==null)">
		<tr>
			<td style="font-family:돋음; font-size:12">
				<div align="center">파일 첨부</div>
			</td>
			<td>
				&nbsp;&nbsp;${noticedata.facility_notice_file}
			</td>
	</tr>
	</c:if>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	
	<tr align="center" valign="middle">
		<td colspan="5">
			<font size=2>
			<a href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp;
			<a href="javascript:history.go(-1)">[뒤로]</a>&nbsp;&nbsp;
			</font>
		</td>
	</tr>
</table>
</form>
<!-- 게시판 수정 -->
</body>



</html>