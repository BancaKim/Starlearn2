<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<c:import url="./nav.jsp"></c:import>
	<div>
		<h1>Hello world! line1</h1>




	</div>
		<div>
		<h1>my course</h1>
		<a href="/lxp/course/courseView">my course</a><br>

	</div>
		<div>
		<h1>Hello world! line4</h1>

	</div>
		<div>
		<h1>Hello world! line5</h1>

	</div>
	


	<P>The time on the server is ${serverTime}.</P>
	<c:import url="./footer.jsp"></c:import>
</body>
</html>
