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
<form:form commandName="roomVO" method="POST" action="../makeok">
	<form:hidden path="room_master" value="uid"/>
	<table id="edit">
         <tr>
            <td>방 내용</td>
            <td><form:textarea cols="50" rows="3" path="room_contents" /></td>
         </tr>
	</table>
	<input type="submit" value="방만들기"/>
	<input type="button" value="취소하기" onclick="location.href='../list'"/>
</form:form>

</body>
</html>