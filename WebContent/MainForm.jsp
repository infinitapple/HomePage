<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<%--
		String contentPage=request.getParameter("contentPage");
		if(contentPage==null)
			contentPage="FirstView.jsp";
			
		�� �κ��� EL�� JSTL�� �����ϸ� �Ʒ��� ����.	
	--%>
	
<html>
<head>
	<title>Mafia Game</title>
	
	<style>
		/*
		���̾ƿ� ��ü ��� ���� �±�  
		- margin:0 auto 0 auto;(�ð�������� ��, ������, �Ʒ�, ����)
		����, ������ �ٱ������� auto�� �ָ� �߾������� �ȴ�. 
		background-image: url('img/mafia.jpg');
		��ü�� �����ִ� �±� #wrap 
		*/
		body{
		
		background-color: black;
		}
		#wrap {
			width: 1200px;
			margin: 0 auto 0 auto;
			background-color: #FFFFFF;
		}
		
		#header {
			text-align: center;
			width: 1200px;
			height: 150px;
			
			background-color: #FFFFFF;
			padding: 20px 0px;
		}

		#main {
			text-align: center;
			float: left;
			width: 1200px;
			height: auto;
			min-height: 500px;
			/*background-color: #FFCA6C;*/
			text-align:center;
			/*vertical-align: middle;*/
			overflow:visible;	 �ڵ� ��ũ�� 
		}
		#footer {
			text-align: center;
			clear: left;
			width: 1200px;
			height: 100px;
			background-color: #FFFFFF;
		}
	</style>
	
</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="Header.jsp" />
		</div>
		<div id="main">
		
			<!-- contentPage�� ���� ��� FirstView.jsp�� �����ش�. -->
			<c:set var="contentPage" value="${param.contentPage}"/>
			<c:if test="${contentPage==null}">	
				<jsp:include page="FirstView.jsp" />
			</c:if>
			<jsp:include page="${contentPage}" />
			
		</div>
	</div>
	
</body>
</html>