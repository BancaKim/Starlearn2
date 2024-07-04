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
      <!-- 게시판 등록 -->
		<form action="${pageContext.request.contextPath}/facility/noticeAddAction" method="post" 
			enctype="multipart/form-data" name="noticeform">
		 <table>
        <tr>
            <td colspan="2"><h1>공지사항</h1></td>
        </tr>
        <tr>
            <td class="font-default align-center">제 목</td>
            <td>
                <input name="facility_notice_title" type="text" maxlength="100" value=""/>
            </td>
        </tr>
        <tr>
            <td class="font-default align-center">내 용</td>
            <td>
                <textarea name="facility_notice_content" rows="15"></textarea>
            </td>
        </tr>
        <tr>
            <td class="font-default align-center">파일 첨부</td>
            <td>
                <input name="facility_notice_file" type="file"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="align-center">
                <a href="javascript:addboard()"><button type="button" class="btn btn-outline-primary">등록</button></a>
                <a href="javascript:history.go(-1)"><button type="button" class="btn btn-outline-secondary">뒤로</button></a>
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