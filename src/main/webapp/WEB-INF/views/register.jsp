<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원가입</title>
	<style>
		.jumbotron {
  			background-color: #0000CD; 
  			color: #ffffff;
  			
  			padding: 80px 25px;
  			text-align: center;
		}
		#btn_group{
		
			font-size:15px;
		}
		table {
   			margin-left:auto; 
    		margin-right:auto;
		}
		
	</style>
</head>

<body>
	<div class="jumbotron text-center">
		<h1>회원가입</h1>
	</div>
	
	<div style='width:100%;text-align:center;padding-top:100px'>
		
	<form action="./registerok" method="post">
	<table id="edit">
		<tr><td>Student ID :	<input type="text" name="uid"/></td></tr>
		<tr><td>Name :	<input type="text" name="uname"/></td></tr>
		<tr><td>Id :	<input type="text" name="id"/></td></tr>
		<tr><td>Password :	<input type="password" name="password"/></td></tr>
	</table>
	
		<table style='width:100%;text-align:center;padding-down:50px'></table>
	
	 <div id="btn_group">
		<button type="submit" style="border:none;">회원가입</button>
		<input type="button" value="취소하기" onclick="location.href='./login'" style="border:none;"/>
	</div>
</form>
</div>
</body>
</html>