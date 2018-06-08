<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<html>
	<head>
		<title>첫화면</title>
	</head>
	<body>		
			<!-- 로그인 안되었을 경우 -->
	<c:if test="${sessionScope.sessionID==null}">
		<br><br><br>
		<img src="img/mafia.jpg">
		<br><br>	
	</c:if>	
			<!-- 로그인 -->
	<c:if test="${sessionScope.sessionID!=null}">	
		<br>
		<font size=6 color="blue">${sessionScope.sessionID}</font>
		<font size=6>님 환영합니다.</font>
		<br><br>	
		<img src="img/welcome.jpg">
	</c:if>	
	
	</body>
</html>



