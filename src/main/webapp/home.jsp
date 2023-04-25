<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../resource/trangchu.css">
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css"
	rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/fontawesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/regular.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/regular.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/solid.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/svg-with-js.min.css">
<link rel="icon" href="../resource/img/shopee-logo.png"
	type="image/x-icon">
<title>Shopee Việt Nam | Mua và Bán Trên Ứng Dụng Di Động Hoặc
	Website</title>
</head>
<body>
	<header>
		<nav class="narbar-wrapper-container-wrapper">
			<div class="navbar-wrapper">
				<a href="products"><i class="fa-solid fa-pipe"></i>Kênh người
					bán</a> <a href=""><i class="fa-li fa fa-check-square"></i></i> | Trở
					thành người bán Shopee</a> <a href="">| Tải ứng dụng</a> <a href="">|
					Kết nối</a> <a href=""><i class="fa-brands fa-facebook"></i></a> <a
					href=""><i class="fa-brands fa-instagram"></i></a>
			</div>
			<div class="navbar_space"></div>
			<ul class="nav_links">
				<li class="link"><a href=""><i class="fa-regular fa-bell"></i>
						Thông báo</a></li>
				<li class="link"><a href=""><i
						class="fa-regular fa-circle-question"></i> Hỗ trợ</a></li>
				<li class="link"><a href=""><i
						class="fa-solid fa-earth-americas"></i> Tiếng Việt</a></li>
				<li class="sign"><a href="logout">Đăng xuất</a></li>
				<li class="sign"><a href="">|</a></li>
				<li class="sign"><a href="">Hello ${user.getUsername()}</a></li>

			</ul>
		</nav>
		<div class="container-wrapper">
			<div class="header_logo">
				<a href="home"><img src="../resource/img/logo-full-white.png"
					width="150px"></a>
			</div>


			<div class="header_search">

				<div class="header__search-input">
					<form action="search" method="post" id="form_search">
						<input type="text" id="input_search" name="txtname"
							placeholder="Tìm kiếm trên Shoppee"> <input type="submit"
							name="btn_search" id="btn_search" value="TÌM">
					</form>
				</div>


				<div class="search_list">
					<a href="">Dép</a> <a href="">Áo Khoác</a> <a href="">Túi Xách
						Nữ</a> <a href="">Áo Croptop</a> <a href="">Váy</a> <a href="">Ốp
						Iphone</a> <a href="">Son</a> <a href="">Áo Khoác Nam</a>
				</div>
			</div>
			<div class="header_cart">
				<div class="header__cart header__cart--has-cart">
                    <i class="header__cart-icon fas fa-shopping-cart"></i>
                    <div class="header__cart-count"></div>
                
                    <div class="header__cart-list no-cart">
                        <img src="./assets/img/sp/no-cart.png" class="header__no-cart-img">
                        <p class="header__no-cart-text">Chưa có sản phẩm</p>
                    </div>
                
                    <div class="header__cart-list has-cart">
                        <h4 class="header__cart-heading">Sản phẩm mới thêm</h4>
                        <c:forEach items="${items}" var="item">
	                        <ul class="header__cart-list-item">
	                            <li class="header__cart-item"><img src="${item.image}"
	                                class="header__cart-item-img">
	                                <div class="header__cart-item-info">
	                                    <div class="header__cart-item-heading">
	                                        <h3 class="header__cart-item-name">${item.name}</h3>
	                                        <p class="header__cart-item-price">${item.price}</p>
	                                    </div>
	                                    <div class="header__cart-item-body">
	                                        <p class="header__cart-item-number">x</p>
	                                        <div class="header__cart-item-close">
	                                            <a href="oderdelete?orderid=${item.productID}">Xóa</a>
	                                        </div>
	                                    </div>
	                                </div></li>
	                        </ul>
	                       </c:forEach>
                        <div class="header__cart-footer">
                            <a href="cart">Xem giỏ hàng</a>
                        </div>
                    </div>
                </div>
			</div>
	</header>
	<main>
		<div class="home__page">
			<div class="home__page-banners">
				<div class="home__page-banner">
					<div class="home__page-banner-left">
						<a href=""><img src="../resource/shoppe101.png" alt=""></a>
					</div>
					<div class="home__page-banner-right">
						<div class="home__page-banner-right-img">
							<a href=""><img src="../resource/shoppe102.png"
								alt=""></a>
						</div>
						<div class="home__page-banner-right-img">
							<a href=""><img src="../resource/shoppe103.png"
								alt=""></a>
						</div>
					</div>
				</div>
				<div class="home__page-banner-sales-lists">
					<div class="home__page-banner-sales-list">
						<div class="home__page-banner-sales-list-img">
							<a href=""><img src="../resource/img/sale_list/1.png"
								alt="ss"></a>
						</div>
						<div class="home__page-banner-sales-list-text">Gì Cũng Rẻ -
							Mua Là Freeship</div>
					</div>
					<div class="home__page-banner-sales-list">
						<div class="home__page-banner-sales-list-img">
							<a href=""><img src="../resource/img/sale_list/2.png" alt=""></a>
						</div>
						<div class="home__page-banner-sales-list-text">Flash Sale</div>
					</div>
					<div class="home__page-banner-sales-list">
						<div class="home__page-banner-sales-list-img">
							<a href=""><img src="../resource/img/sale_list/3.png" alt=""></a>
						</div>
						<div class="home__page-banner-sales-list-text">Miễn Phí Vận
							Chuyển</div>
					</div>
					<div class="home__page-banner-sales-list">
						<div class="home__page-banner-sales-list-img">
							<a href=""><img src="../resource/img/sale_list/4.png" alt=""></a>
						</div>
						<div class="home__page-banner-sales-list-text">Bắt Trend -
							Giá Sốc</div>
					</div>
					<div class="home__page-banner-sales-list">
						<div class="home__page-banner-sales-list-img">
							<a href=""><img src="../resource/img/sale_list/5.png" alt=""></a>
						</div>
						<div class="home__page-banner-sales-list-text">Hoàn Xu Xtra
							Từ 100K</div>
					</div>
					<div class="home__page-banner-sales-list">
						<div class="home__page-banner-sales-list-img">
							<a href=""><img src="../resource/img/sale_list/6.png" alt=""></a>
						</div>
						<div class="home__page-banner-sales-list-text">Hàng Hiệu Giá
							Tốt</div>
					</div>
					<div class="home__page-banner-sales-list">
						<div class="home__page-banner-sales-list-img">
							<a href=""><img src="../resource/img/sale_list/7.png" alt=""></a>
						</div>
						<div class="home__page-banner-sales-list-text">Hàng Quốc Tế
							- Deal x9K</div>
					</div>
					<div class="home__page-banner-sales-list">
						<a href="">
							<div class="home__page-banner-sales-list-img">
								<img src="../resource/img/sale_list/8.png" alt="">
							</div>
							<div class="home__page-banner-sales-list-text">Nạp Thẻ &
								Dịch Vụ</div>
						</a>
					</div>
				</div>
			</div>
			<div class="home__page-img">
				<a href=""><img src="../resource/img/bn.png" alt=""></a>
			</div>
			<div class="home__page-list-product">
				<div class="home__page-list-product-header">DANH MỤC</div>
				<div class="list-top">
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/1.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Thời Trang
									Nam</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/2.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Điện Thoại
									& Phụ Kiện</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/3.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Thiết Bị
									Điện Tử</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/4.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Máy Tính &
									Laptop</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/5.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Máy Ảnh &
									Máy Quay Phim</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/6.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Đồng Hồ</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="../home__page-list-product-list-img">
									<img src="../resource/img/product_list/7.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Giày Dép
									Nam</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/8.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Thiết Bị
									Điện Gia Dụng</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/9.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Thể Thao &
									Du Lịch</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/10.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Ô Tô & Xe
									Máy & Xe Đạp</div>
							</a>
						</div>
					</div>
				</div>
				<div class="list-bottom">
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/11.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Thời Trang
									Nữ</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/12.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Mẹ & Bé</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/13.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Nhà Cửa &
									Đời Sống</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/14.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Sắc Đẹp</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/15.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Sức Khỏe</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/16.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Giày Dép Nữ
								</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/17.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Túi Ví Nữ</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/18.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Phụ Kiện &
									Trang Sức Nữ</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/19.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Bách Hóa
									Online</div>
							</a>
						</div>
					</div>
					<div class="home__page-list-product-lists">
						<div class="home__page-list-product-list">
							<a href="">
								<div class="home__page-list-product-list-img">
									<img src="../resource/img/product_list/20.png" alt="">
								</div>
								<div class="home__page-list-product-list-text">Nhà Sách
									Online</div>
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="home__page-suggest">GỢI Ý HÔM NAY</div>
			<div class="home__page-product-line">
				<c:forEach items="${listP}" var="product">
					<ul class="home__page-product">
						<li>
							<div class="product-item">
								<a href="/javaWe/api/product?pid=${product.id}"
									title="View product">
									<div class="home__page-product-top">
										<div class="home__page-product-img">
											<img src="${product.image}" alt="">
										</div>
									</div>
									<div class="home__page-product-bottom">
										<div class="home__page-product-name">
											<c:out value="${product.name}" />
										</div>
										<div class="cost_soult">
											<div class="home__page-product-cost">${product.price}</div>
											<div class="home__page-product-soult">Đã bán 1,2k</div>
										</div>
									</div>
								</a>
							</div>
						</li>
					</ul>
				</c:forEach>
			</div>
			<br>
			<br>
			<div class="home__page-paging">
				<div class="page_select">Trang:</div>
				<c:forEach begin="1" end="${endP}" var="i">
					<a href="count?home=${i}" class="pageid"><button
							class="page_btn">${i}</button></a>
				</c:forEach>
			</div>
	</main>
</body>
</html>