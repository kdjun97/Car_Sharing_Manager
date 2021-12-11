<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
	<title>Insert title here</title>
	<style>
		.jumbotron {
  			background-color: #0000CD; 
  			color: #ffffff;
  			padding: 100px 25px;
		}
	
		label{ 
			display:inline-block;
			width:130px;
		}
		button{ 
			background-color:blue; 
			color:white;
			font-size:15px;
		}
		#btn_group{
			margin-right:-30px;
			padding : 15px;
		}
		
	</style>
</head>



<body>
	<div class="jumbotron text-center">
		<h1>Car Sharing Manager</h1>
	</div>
	
	<div style='width:100%;text-align:center;padding-top:60px'>
	
	<form method="post" action="./loginok">
		<div><label>User ID: </label>
		<input type='text' name='id' /></div>
		<div><label>Password: </label>
		
		<input type='password' name='password' /></div>
		 <div id="btn_group">
			<button type='submit'style="border:none;" >login</button>
			<button type="button" onclick="location.href='register'" style="border:none; ">register</button>
 		</div>
	</form>
	</div>
	
</body>
</html>