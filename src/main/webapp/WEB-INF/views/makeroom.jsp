<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방 만들기</title>
</head>
<body>

<h1>방 만들기</h1>
<form action="../makeok" method="post">
	<table id="edit">
	<tr><td><input type="hidden" name="room_master" value="${id}"/></td></tr>
	<tr><td>Contents:</td><td><textarea cols="50" rows="5" name="room_contents"></textarea></td></tr>
	</table>
	<button type="submit">방만들기</button>
	<input type="button" value="취소하기" onclick="location.href='../list'"/>
</form>

</body>
</html>