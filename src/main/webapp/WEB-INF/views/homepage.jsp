<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>HomePage</title>
<style>
.navbar {
  margin-bottom: 0;
  background-color: #fff;
  z-index: 9999;
  border: 0;
  font-size: 15px !important;
  line-height: 1.42857143 !important;
  letter-spacing: 4px;
  border-radius: 0;
  text-align : right;
  margin-left:-50px;
}
.navbar a, .navbar .navbar-brand {
  color: pink !important;
}
.navbar-nav li a:hover, .navbar-nav li.active a {
  color: red !important;
  background-color: #fff !important;
}

.navbar-default .navbar-toggle {
  border-color: transparent;
  color: #fff !important;
}
		.jumbotron {
  			background-color: #0000CD; 
  			color: #ffffff;
  			padding: 100px 25px;
  			text-align: center;
		}

#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}

#button{
		margin-right:-50px;
	}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="collapse navbar-collapse" id="myNavbar">
       <ul class="nav navbar-nav navbar-right">
        	<a href="../login/logout">logout</a>
        	<a href="./editUser/${login.uid}">회원정보수정</a>
      
      </ul>
    </div>
  </div>
</nav>


  

	<div class="jumbotron text-center">
		<h1>Room</h1>
		<p>환영합니다. [${login.uname}]님.</p>
	</div>
	<div style='width:100%; text-align:left; margin-top: 30px; margin-right:-30px;'>
	
	 <button type="button" onclick="location.href='makeRoom/${login.uid}' " style="padding:10px 20px; text-align:center; color:pink;">New</button>
<table id="list" width="90%" padding="10px">
<tr>
	<th>방번호</th>
	<th>인원</th>
	<th>내용</th>
	<th>입장여부</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.room_num}</td>
		<td>${u.room_count}</td>
		<td>${u.room_contents}</td>
		<td><a href="./enter/${u.room_num}/${login.uid}">방입장</a></td>
	</tr>
</c:forEach>
</table>
<br/>
</body>
</html>