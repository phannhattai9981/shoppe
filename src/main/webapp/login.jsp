<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="../resource/login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>

<body>
	<header>
		<div class="content">
			<div class="header_logo">
				<a href=""><img src="../resource/img/Shopee.svg" alt="erro"></a>
				<p>Đăng nhập</p>
			</div>
			<div class="header_helps">
				<a href="">Bạn cần giúp đỡ?</a>
			</div>
		</div>
	</header>
	<main>
		<div class="main_logo">
			<div class="main_logo_logo">
				<img src="../resource/img/logo_shopee.png" width="210">
			</div>
			<div class="main_logo_slogan">
				<h2>
					Nền tảng thương mại điện tử <br> yêu thích ở Đông Nam Á & Đài
					Loan
				</h2>
			</div>
		</div>
		<div class="main_form">
			<div class="text">
				<div class="text_login">Đăng nhập</div>
				<div class="text_QR">
					<div class="box_QR">
						<p>Đăng nhập với mã QR</p>
					</div>
					<div class="QR_code">
						<a href=""><img src="../resource/img/qr.png" width="45px"></a>
					</div>
				</div>
			</div>
			<form action="login" method="post" class="form_login">
				<input name="username" type="text"
					placeholder="Email/ Số điện thoại/ Tên đăng nhập"><br>
				<input name="password" type="text" placeholder="Mật khẩu"><br>
				<input type="submit" value="Đăng Nhập">
			</form>
			<div class="form_forgot_phone">
				<div class="form_forgot_password">
					<a href="">Quên mật khẩu</a>
				</div>
				<div class="form_login_phonenumber">
					<a href="">Đăng nhập với SMS</a>
				</div>
			</div>
			<br>
			<div class="form_or">
				<div class="form_or_text">------------------------------ HOẶC
					------------------------------</div>
			</div>
			<br> <br>
			<div class="login_socials">
				<a href="" class="login_social">
					<div class="social_logo">
						<img src="../resource/img/fblogo.webp" width="20px">
					</div>
					<div class="social_name">Facebook</div>
				</a> <a href="" class="login_social">
					<div class="social_logo">
						<img src="../resource/img/gg.png" width="20px">
					</div>
					<div class="social_name">Google</div>
				</a> <a href="" class="login_social">
					<div class="social_logo">
						<img src="../resource/img/ap.png" width="18px">
					</div>
					<div class="social_name">Apple</div>
				</a>
			</div>
			<div class="new_signup">
				<div class="signup_text">Bạn mới đến Shopee?</div>
				<div class="signup_link">
					<a href="">Đăng ký</a>
				</div>
			</div>
		</div>

	</main>

</body>
</html>