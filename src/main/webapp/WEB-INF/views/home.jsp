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

<<<<<<< HEAD
	Hello world!  HO~DFD
	이렇게 가다간 다 죽어
	다 죽는다구~~!!
	
	안녕 죽지는 않을거 같다.
=======
	</div>
		<div>
		<h1>Hello world! line2</h1>
>>>>>>> one0701

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
