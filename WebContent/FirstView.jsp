<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<html>
	<head>
		<title>ùȭ��</title>
	</head>
	<body>		
			<!-- �α��� �ȵǾ��� ��� -->
	<c:if test="${sessionScope.sessionID==null}">
		<br><br><br>
		<img src="img/mafia.jpg">
		<br><br>	
	</c:if>	
			<!-- �α��� -->
	<c:if test="${sessionScope.sessionID!=null}">	
		<br>
		<font size=6 color="blue">${sessionScope.sessionID}</font>
		<font size=6>�� ȯ���մϴ�.</font>
		<br><br>	
		<img src="img/welcome.jpg">
	</c:if>	
	
	</body>
</html>



