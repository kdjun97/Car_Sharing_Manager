<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면 샘플 - Bootstrap</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

.button {
	padding-top: 50px;
}
</style>
</head>
<body>
	<div class="container">
		<input type="button" value="이전" onclick="location.href='./login'"
			style="border: none;" />
		<div class="input-form-backgroud row">

			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>

				<form action="./registerok" method="post">
					<div id="edit">
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="name">Student ID</label> <input type="text"
									class="form-control" name="uid" id="Student I" placeholder=""
									value="" required>
								<div class="invalid-feedback">Student ID를 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="nickname">Name</label> <input type="text"
									class="form-control" name="uname" id="Name" placeholder=""
									value="" required>
								<div class="invalid-feedback">Name 입력해주세요.</div>
							</div>
							<div class="mb-3">
								<label for="email">Id</label> <input type="text"
									class="form-control" name="id" id="id" placeholder="Id"
									required>
								<div class="invalid-feedback">Id 입력해주세요.</div>
							</div>
							<div class="mb-3">
								<label for="address">Password</label> <input type="password"
									class="form-control" name="password" id="password"
									placeholder="Password" required>
								<div class="invalid-feedback">Password 입력해주세요.</div>
								<hr class="mb-4">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="aggrement" required> <label
										class="custom-control-label" for="aggrement">개인정보 수집 및
										이용에 동의합니다.</label>
								</div>
								<div class="mb-4"></div>
							</div>
						</div>
					</div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">가입
						완료</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
