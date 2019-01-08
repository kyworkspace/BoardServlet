<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div align=center>총 게시글 수 : ${cnt }</div>
<table align=center border solid>
	<tr>
		<td>글번호</td>
		<td>글제목</td>
		<td>작성자</td>
		<td>작성일자</td>
		<td>조회수</td>
		<td>첨부파일</td>
	</tr>
	<c:forEach items="${list}" var="i">
		<tr>
			<td>${i.BOARD_NUM }</td>
			<td><a href="javascript:boardview(${i.BOARD_NUM})">${i.BOARD_SUBJECT }</td>
			<td>${i.BOARD_NAME }</td>
			<td>${i.BOARD_DATE }</td>
			<td>${i.BOARD_READCOUNT }</td>
			<c:if test="${i.BOARD_FILE!=''}">
				<td>O</td>
			</c:if>
			<c:if test="${i.BOARD_FILE==''}">
				<td>X</td>
			</c:if>
		</tr>
	</c:forEach>
</table>
<div align=center>
	<!-- 이전 -->
	<c:if test="${startPage>blockPage }">
		<a href="javascript:getSearchList(${startPage-blockPage},${field},${word})">[이전]</a>
	</c:if>
	<!-- 페이지 블록 출력 -->
	<c:forEach begin="${startPage}" end="${endPage}" var="i">
		<c:if test="${i==currentPage}">[${i}]</c:if>
		<c:if test="${i!=currentPage}">
			<a href="javascript:getSearchList(${i},${field},${word})">[${i}]</a>
		</c:if>
	</c:forEach>
	<!-- 다음 -->
	<c:if test="${endPage<totPage}">
		<a href="javascript:getSearchList(${endPage+1},${field},${word})">[다음]</a>
	</c:if>
</div>