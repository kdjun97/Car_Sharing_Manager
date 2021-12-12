<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 
<title>방 만들기</title>
<style>
			.jumbotron {
  			background-color: #fff; 
  			color: #0000CD;
  			padding: 100px 25px;
		}
		#btn_group{
			margin-right:-30px;
			padding : 15px;
		}
		table {
   			margin-left:auto; 
    		margin-right:auto;
		}
</style>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>방 만들기</h1>
	</div>
		<div style='width:100%;text-align:center;padding-top:100px'>
	
	
<form action="../makeok" method="post">
	<table id="edit">
	<tr><td><input type="hidden" name="room_master" value="${id}"/></td></tr>
	<tr><td>Contents:</td><td><textarea cols="50" rows="5" name="room_contents"></textarea></td></tr>
	</table>
		<div id="btn_group">
			<button type="submit" style="border:none;">방만들기</button>
			<input type="button" value="취소하기" onclick="location.href='../list'" style="border:none;"/>
		</div>
</form>

</body>
</html>