
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<html>
	<head>
		<title>ùȭ��</title>
		<style>
		#wrap {
			width: 1200px;
			margin: 0 auto 0 auto;
			background-color: #FFFFFF;
		}
		</style>
		<script src="game/TemplateData/UnityProgress.js"></script>  
    	<script src="game/Build/UnityLoader.js"></script>
    	<script>
      		var gameInstance = UnityLoader.instantiate("gameContainer", "game/Build/Mafia.json", {onProgress: UnityProgress});
    	</script>
	</head>
	<body>		
			<!-- �α��� �ȵǾ��� ��� -->
	<c:if test="${sessionScope.sessionID==null}">
		<br><br><br>
		  �α����� �ʿ��մϴ�.
		<br><br>	
	</c:if>	
			<!-- �α��� -->
	<c:if test="${sessionScope.sessionID!=null}">	
		<div id="wrap">
		<div class="webgl-content">
      		<div id="gameContainer" style="width: 800px; height: 500px; text-align:center;"></div>
    	</div>
    	</div>
	</c:if>	
	
	</body>
</html>



