<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<html>
<head>
	<title>Ż�� ȭ��</title>
	
	<style type="text/css">
		table{
			margin-left:auto; 
			margin-right:auto;
			border:3px solid silver;
		}
		
		td{
			border:1px solid silver
		}
		
		#title{
			background-color:silver;
			color:white;
			text-align:center;
		}
	</style>
	
	<script type="text/javascript">
		// ��й�ȣ ���Է½� ���â
		function checkValue(){
			if(!document.deleteform.password.value){
				alert("��й�ȣ�� �Է����� �ʾҽ��ϴ�.");
				return false;
			}else{
				
			}
		}
	</script>
	
</head>
<body>
		<br><br>
		<b><font size="6" color="gray">ȸ�� Ż��</font></b>
		<br><br><br>
		
		<form name="deleteform" method="post" action="MemberDeleteAction.do"
			onsubmit="return checkValue()">
		
			<table>
				<tr>
					<td bgcolor="silver">��й�ȣ</td>
					<td><input type="password" name="password" maxlength="50"></td>
				</tr>
			</table>
				
			<br> 
			<input type="button" value="���" onclick="javascript:window.location='MainForm.do'">
			<input type="submit" value="Ż��" /> 
		</form>
</body>
</html>