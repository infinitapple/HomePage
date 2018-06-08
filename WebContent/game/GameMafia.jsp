
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<html>
	<head>
		<title>첫화면</title>
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
			<!-- 로그인 안되었을 경우 -->
	<c:if test="${sessionScope.sessionID==null}">
		<br><br><br>
		  로그인이 필요합니다.
		<br><br>	
	</c:if>	
			<!-- 로그인 -->
	<c:if test="${sessionScope.sessionID!=null}">	
		<div id="wrap">
		<div class="webgl-content">
      		<div id="gameContainer" style="width: 800px; height: 500px; text-align:center;"></div>
    	</div>
    	</div>
	</c:if>	
	
	</body>
</html>



