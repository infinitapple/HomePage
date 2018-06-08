<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<html>
<head>
	<title>��� ����</title>
	
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
			
			if(value == "0") // HOME ��ư Ŭ���� ùȭ������ �̵�
			{
				location.href="MainForm.do";
			}
			else if(value == "1") // �α��� ��ư Ŭ���� �α��� ȭ������ �̵�
			{	
				location.href="LoginForm.do";
			}
			else if(value == "2") // ȸ������ ��ư Ŭ���� ȸ������ ȭ������ �̵�
			{	
				location.href="JoinForm.do";
			}
			else if(value == "3") // �α׾ƿ� ��ư Ŭ���� �α׾ƿ� ó��
			{
				location.href="MemberLogoutAction.do";
			}
			else if(value == "4") // ������ ��ư Ŭ���� ȸ������ �����ִ� ȭ������ �̵�
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

		<!-- // �α��� �ȵǾ��� ��� - �α���, ȸ������ ��ư�� �����ش�. -->
		<c:if test="${sessionScope.sessionID==null}">
			<li><a onclick="changeView(1)">Login</a></li>
			<li><a onclick="changeView(2)">Sign Up</a></li>
		</c:if>
	
		<!-- // �α��� �Ǿ��� ��� - �α׾ƿ�, ������ ��ư�� �����ش�. -->
		<c:if test="${sessionScope.sessionID!=null}">
			<li><a onclick="changeView(3)">Logout</a></li>
			<li><a onclick="changeView(4)">Info</a></li>
			<li><a onclick="changeView(8)">Game</a></li>

		</c:if>
			<li><a onclick="changeView(6)">Board</a></li>
			
		<!--  ������ �α��� -->
		<c:if test="${sessionScope.sessionID !=null && sessionScope.sessionID=='admin'}">
			<li><a onclick="changeView(5)">Show Member</a></li>
		</c:if>
		</ul>
		</p>
	</div>
</body>
</html>