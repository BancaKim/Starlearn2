<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<c:import url="./nav.jsp"></c:import>
<h1>

	Hello world!  HO~DFD
	이렇게 가다간 다 죽어
	다 죽는다구~~!!
	
	안녕 죽지는 않을거 같다.

</h1>

<P>  The time on the server is ${serverTime}. </P>
<c:import url="./footer.jsp"></c:import>
</body>
</html>
