<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<%--
		String contentPage=request.getParameter("contentPage");
		if(contentPage==null)
			contentPage="FirstView.jsp";
			
		이 부분을 EL과 JSTL로 변경하면 아래와 같다.	
	--%>
	
<html>
<head>
	<title>Mafia Game</title>
	
	<style>
		/*
		레이아웃 전체 가운데 정렬 태그  
		- margin:0 auto 0 auto;(시계방향으로 위, 오른쪽, 아래, 왼쪽)
		왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬이 된다. 
		background-image: url('img/mafia.jpg');
		전체를 감싸주는 태그 #wrap 
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
			overflow:visible;	 자동 스크롤 
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
		
			<!-- contentPage가 없을 경우 FirstView.jsp를 보여준다. -->
			<c:set var="contentPage" value="${param.contentPage}"/>
			<c:if test="${contentPage==null}">	
				<jsp:include page="FirstView.jsp" />
			</c:if>
			<jsp:include page="${contentPage}" />
			
		</div>
	</div>
	
</body>
</html>