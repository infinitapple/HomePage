<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<html>
<head>
	<title>상단 영역</title>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	
	<style type="text/css">
		#wrap{
			text-align: center;
			width: 1200px;
			height: 150px;
		}
	</style>
	
	<script type="text/javascript">
		
		function changeView(value){
			
			if(value == "0") // HOME 버튼 클릭시 첫화면으로 이동
			{
				location.href="MainForm.do";
			}
			else if(value == "1") // 로그인 버튼 클릭시 로그인 화면으로 이동
			{	
				location.href="LoginForm.do";
			}
			else if(value == "2") // 회원가입 버튼 클릭시 회원가입 화면으로 이동
			{	
				location.href="JoinForm.do";
			}
			else if(value == "3") // 로그아웃 버튼 클릭시 로그아웃 처리
			{
				location.href="MemberLogoutAction.do";
			}
			else if(value == "4") // 내정보 버튼 클릭시 회원정보 보여주는 화면으로 이동
			{
				location.href="MemberInfoAction.do";
			}
			else if(value == "5")
			{
				location.href="MemberListAction.do";
			}
			else if(value == "6")
			{
				location.href="BoardListAction.bo";
			}
			else if(value == "8")
			{	
				location.href="GameMafia.gm";
			}
		}
	</script>
	
</head>
<body>
	<div id = "wrap">
		<p>
		<hr>
		<ul class="menu">
			<li><a onclick="changeView(0)">HOME</a></li>

		<!-- // 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다. -->
		<c:if test="${sessionScope.sessionID==null}">
			<li><a onclick="changeView(1)">Login</a></li>
			<li><a onclick="changeView(2)">Sign Up</a></li>
		</c:if>
	
		<!-- // 로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다. -->
		<c:if test="${sessionScope.sessionID!=null}">
			<li><a onclick="changeView(3)">Logout</a></li>
			<li><a onclick="changeView(4)">Info</a></li>
			<li><a onclick="changeView(8)">Game</a></li>

		</c:if>
			<li><a onclick="changeView(6)">Board</a></li>
			
		<!--  관리자 로그인 -->
		<c:if test="${sessionScope.sessionID !=null && sessionScope.sessionID=='admin'}">
			<li><a onclick="changeView(5)">Show Member</a></li>
		</c:if>
		</ul>
		</p>
	</div>
</body>
</html>