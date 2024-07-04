<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
	<title>스타런</title>
	<script type="text/javascript">
	function modifyboard(){
		modifyform.submit();
	}
	</script>
	    <link href="${pageContext.request.contextPath}/resources/css/facility_noticeModify.css" rel="stylesheet">
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
<!-- 게시판 수정 -->
	<main>
         <div class="breadcrumbs">
            <a href="#">홈</a> &gt; <a href="#">생활연수</a> &gt; 공지사항
        </div>
		<form action="${pageContext.request.contextPath}/facility/noticeModifyAction?num=${noticedata.facility_notice_num}" method="post" name="modifyform">
		<input type="hidden" name="facility_notice_num" value="${noticedata.facility_notice_num}">
		
		
	<table>
		<tr align="center" valign="middle">
			<td colspan="5"><span class="table-title">공지사항 수정</span></td>
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
	</table>
	<div class="button-options">
			<a href="javascript:modifyboard()"><button type="button" class="btn btn-outline-primary">수정</button></a>
			<a href="javascript:history.go(-1)"><button type="button" class="btn btn-outline-secondary">뒤로</button></a>
	</div>

	</form>
<!-- 게시판 수정 -->
		
	</main>


</body>



</html>