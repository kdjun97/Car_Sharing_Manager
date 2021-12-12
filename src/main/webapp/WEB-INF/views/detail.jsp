<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detail Page</title>
<style>
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
</style>
<script>
	function delete_ok(send_id,recv_id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='../../deleteok/' + send_id + '/' + recv_id;			
	}
	
	function pay_ok(send_id, recv_id) {
		var a = confirm("입금 완료?");
		if (a) location.href='../../payok/' + send_id + '/' + recv_id;
	}
</script>
</head>
<body>
<h1>Detail Page</h1>
<p>환영합니다. [${login.uname}]님! [${num}]번방입니다.<a href="../../list">방 목록 보기</a>
<button type="button" onclick="location.href='../../roomok/${login.uid}'">완료 및 방 삭제</button>
</p>
<table id="list" width="90%">
<tr>
	<th>학번</th>
	<th>이름</th>
	<th>블랙횟수</th>
	<th>입금여부</th>
	<th>추방</th>
</tr>
<c:forEach items="${ulist}" var="ul">
	<tr>
		<td>${ul.uid}</td>
		<td>${ul.uname}</td>
		<td>${ul.black}</td>
		<td><a href="javascript:pay_ok(${login.uid},${ul.uid})">입금완료</a></td>
		<td><a href="javascript:delete_ok(${login.uid},${ul.uid})">추방</a></td>
	</tr>
</c:forEach>
</table>
<br/>
</body>
</html>