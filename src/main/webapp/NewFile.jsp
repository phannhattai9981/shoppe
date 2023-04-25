<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="dangki" method="post" class="form_login">
		<label for="username"></label> <input type="text" id="username"
			name="username" placeholder="Email/Số điện thoại/ Tên đăng nhập"><br>
		<label for="password"></label> <input type="password" id="password"
			name="password" placeholder="Mật khẩu"><br> <input
			type="submit" value="Đăng ký" id="button_signup">
	</form>
</body>
</html>