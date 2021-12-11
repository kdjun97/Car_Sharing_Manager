<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<h1>회원가입</h1>
<form action="./registerok" method="post">
	<table id="edit">
		<tr><td>학번 :<input type="text" name="uid"/></td></tr>
		<tr><td>이름 :<input type="text" name="uname"/></td></tr>
		<tr><td>id :<input type="text" name="id"/></td></tr>
		<tr><td>password :<input type="password" name="password"/></td></tr>
	</table>
	<button type="submit">회원가입</button>
	<input type="button" value="취소하기" onclick="location.href='./login'"/>
</form>

</body>
</html>