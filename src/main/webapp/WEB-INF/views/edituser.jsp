<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>

<h1>회원정보수정</h1>
<form:form commandName="userVO" method="POST" action="../editok">
	<form:hidden path="uid"/>
	<table id="edit">
		<tr>
            <td>Name:</td>
            <td><form:input path="uname" /></td>
         </tr>
         <tr>
            <td>id:</td>
            <td><form:input path="id" /></td>
         </tr>
         <tr>
            <td>password</td>
            <td><form:textarea cols="20" rows="1" path="password" /></td>
         </tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="location.href='../list'"/>
</form:form>

</body>
</html>