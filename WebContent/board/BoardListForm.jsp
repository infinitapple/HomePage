<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<html>
<head>
<%@ page import="java.net.URLEncoder"%>

	<title>��ü �Խñ�</title>
	<!-- Bootstrap -->
  <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
  
	<style type="text/css">
		#wrap {
			width: 1200px;
			margin: 0 auto 0 auto;
		}

		#topForm{
			text-align :center;
		}

		#board, #pageForm, #searchForm{
			text-align :center;
		}
		
		#bList{
			text-align :center;
		}
	</style>
	
	<script type="text/javascript">
		function writeForm(){
			location.href="BoardWriteForm.bo";
		}
	</script>
	
</head>
<body>	

<div id="wrap">

	<!-- �۸�� �� �κ�-->
	<br>
	<div id="topForm">
		<c:if test="${sessionScope.sessionID!=null}">
			<input type="button" value="�۾���" onclick="writeForm()">
		</c:if>	
	</div>
	
	<!-- �Խñ� ��� �κ� -->
	<br>
	<div id="board">
		<table id="bList" class="table table-bordered table-hover">
         <thead>
			<tr bgcolor="silver">
             <th width="10%">��ȣ</th>
             <th width="50%">����</th>
             <th width="10%">�ۼ���</th>
             <th width="20%">�ۼ���</th>
             <th width="10%">��ȸ</th>
			</tr>
         </thead>
		<c:forEach var="board" items="${requestScope.list}">
			<tr>
				<td>${board.board_num}</td>
				<td align="left">
					<a href="BoardDetailAction.bo?num=${board.board_num}&pageNum=${spage}">
					${board.board_subject}
					</a>
				</td>
				<td><a href="#">${board.board_id}</a></td>
				<td>${board.board_date}</td>
				<td>${board.board_count}</td>
			</tr>
		</c:forEach>
		</table>
	</div>
	
	<!-- ������ �ѹ� �κ� -->
	<br>
	<div id="pageForm">
		<c:if test="${startPage != 1}">
			<a href='BoardListAction.bo?page=${startPage-1}'>[ ���� ]</a>
		</c:if>
		<c:if test="${startPage>=0}">
			<c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
				<c:if test="${pageNum == spage}">
					${pageNum}&nbsp;
				</c:if>
				<c:if test="${pageNum != spage}">
					<a href='BoardListAction.bo?page=${pageNum}'>${pageNum}&nbsp;</a>
				</c:if>
			</c:forEach>
		</c:if>
		
		
		<c:if test="${endPage != maxPage }">
			<a href='BoardListAction.bo?page=${endPage+1 }'>[����]</a>
		</c:if>
	</div>
	
	<!--  �˻� �κ� -->
	<br>
	<div id="searchForm">
		<form>
			<select name="opt">
				<option value="0">����</option>
				<option value="1">����</option>
				<option value="2">����+����</option>
				<option value="3">�۾���</option>
			</select>
			<input type="text" size="20" name="condition"/>&nbsp;
			<input type="submit" value="�˻�"/>
		</form>	
	</div>
</div>	

</body>
</html>