<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<html>
<head>
<%@ page import="java.net.URLEncoder"%>

	<title>전체 게시글</title>
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

	<!-- 글목록 위 부분-->
	<br>
	<div id="topForm">
		<c:if test="${sessionScope.sessionID!=null}">
			<input type="button" value="글쓰기" onclick="writeForm()">
		</c:if>	
	</div>
	
	<!-- 게시글 목록 부분 -->
	<br>
	<div id="board">
		<table id="bList" class="table table-bordered table-hover">
         <thead>
			<tr bgcolor="silver">
             <th width="10%">번호</th>
             <th width="50%">제목</th>
             <th width="10%">작성자</th>
             <th width="20%">작성일</th>
             <th width="10%">조회</th>
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
	
	<!-- 페이지 넘버 부분 -->
	<br>
	<div id="pageForm">
		<c:if test="${startPage != 1}">
			<a href='BoardListAction.bo?page=${startPage-1}'>[ 이전 ]</a>
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
			<a href='BoardListAction.bo?page=${endPage+1 }'>[다음]</a>
		</c:if>
	</div>
	
	<!--  검색 부분 -->
	<br>
	<div id="searchForm">
		<form>
			<select name="opt">
				<option value="0">제목</option>
				<option value="1">내용</option>
				<option value="2">제목+내용</option>
				<option value="3">글쓴이</option>
			</select>
			<input type="text" size="20" name="condition"/>&nbsp;
			<input type="submit" value="검색"/>
		</form>	
	</div>
</div>	

</body>
</html>