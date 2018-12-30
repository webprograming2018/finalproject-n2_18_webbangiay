<%@page import="ServiceImpl.ProductDAOImpl"%>
<%@page import="Model.Product"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<title>web bán giày REAL</title>
<meta charset="utf-8">
<meta name="author" content="">
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<style>
</style>
</head>
<body>

	<header class="phandau">
		<div class="wrapper">
			<div class="logo">
				<img src="anh/Chưa có tên.png" alt="Fertile" width="150" height="60">
			</div>

			<nav>
				<ul>
					<li><a href="C:\Users\thanh\Desktop\1\trang chủ.html">Home</a></li>
					<li><a href="#">Hàng hot</a></li>
					<li><a href="#">Tất cả các mẫu</a></li>
					<li><a href="#">Hỗ trợ</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<header class="fixed_nav">
		<div class="wrapper">
			<div class="logo">

				<a href="#"><img src="anh/Chưa có tên.png" alt="Fertile"
					width="150" height="60"></a>
			</div>

			<nav>
				<ul>
					<li><a href="C:\Users\thanh\Desktop\1\trang chủ.html">Home</a></li>
					<li><a href="#">Hàng hot</a></li>
					<li><a href="#">Tất cả các mẫu</a></li>
					<li><a href="#">Hỗ trợ</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<section class="billboard">
		<img src="anh/Capture.PNG" alt="" title="anhdep" width="15000"
			height="550" />
	</section>

	<section class="cta cta_top">
		<p>Chào mừng bạn đã đến với thế giới giày REAL</p>
		<a href="">Hãy bắt đầu để ý tới phong cách của bạn</a>
	</section>


	</div>
	<section>
		<div class="imag">
			<img class="smImg" src="anh/nike1.1.PNG" width="70" height="auto"><br>
			<img class="smImg" src="anh/nike1.2.PNG" width="70" height="auto"><br>
			<img class="smImg" src="anh/nike1.3.PNG" width="70" height="auto"><br>
			<img class="smImg" src="anh/nike1.4.PNG" width="70" height="auto"><br>
			<img class="smImg" src="anh/nike1.5.PNG" width="70" height="auto"><br>
			<img class="smImg" src="anh/nike1.6.PNG" width="70" height="auto"><br>
		</div>
		<img id="bigImg" height="400" width="560" src="">
		</div>

		<script type="text/javascript">
			window.onload = function() {
				var imag = document.getElementsByClassName("smImg");
				var bigImg = document.getElementById("bigImg");

				var src = imag[0].src;
				bigImg.src = src;
				console.log(src);

				for (var i = 0; i < imag.length; i++) {
					imag[i].onclick = function() {
						bigImg.src = this.src;
					}
				}
			};
		</script>

		<%
			int id = 2;
			Product product = new Product();
			ProductDAOImpl productDAOImpl = new ProductDAOImpl();
			product = productDAOImpl.getProductById(id);
		%>
		<form action="AddToCart" method="post" class="text1">
			<h3>2.800.000 vnđ</h3>
			<p>Được cải tiến hơn thế hệ trước cho bạn thêm trải nghiệm khi
				mang trên mình đôi giày mới này.</p>
			<br> <input type="text" name="id" value="<%=product.getId()%>"
				style="display: none;"> <input name="price"
				value="<%=product.getPrice()%>" style="display: none;"> <input
				name="url" value="<%=product.getUrl()%>" style="display: none;">
			<input name="name" value="<%=product.getName()%>"
				style="display: none;">
			<p style="float: left; width: 10%;">Chọn số lượng</p>
			<select style="float: left; margin-left: 15px;" name="amount">
				<option>1</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <br> <input type="submit" value="Thêm vào giỏ hàng">
		</form>
	</section>





	<footer>
		<div class="wrapper">
			<section class="cta cta_footer">
				<p>Chúc bạn mua hàng vui vẻ</p>
				<a href="#">Hẹn gặp lại bạn.</a>
			</section>

			<div class="footer_widget">
				<div class="f_cols">
					<h3>Liên kết</h3>
					<p>Bạn có thể chia sẻ rộng rãi trong cộng đồng</p>
					<ul class="sm">
						<li><a class="fb" href="#"></a></li>
						<li><a class="twitter" href="#"></a></li>
						<li><a class="dribbble" href="#"></a></li>
					</ul>
				</div>

				<div class="f_cols">
					<h3>Nike</h3>
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">Hàng hot</a></li>
						<li><a href="#">Tất cả các mẫu</a></li>
						<li><a href="#">Hỗ trợ</a></li>
					</ul>
				</div>

				<div class="f_cols">
					<h3>Hỗ trợ</h3>
					<ul>
						<li><a>FAQ</a></li>
						<li><a>Phone</a></li>
						<li><a>Mạng xã hội</a></li>
					</ul>
				</div>

				<div class="f_cols">
					<h3>PTIT</h3>
					<p>Chúng tôi luôn đặt chất lượng sản phẩm lên hàng đầu.</p>
				</div>
			</div>

			<p class="rights">
				© Hãy xây dựng phong cách theo tính cách của bạn.</a>
			</p>

		</div>
	</footer>


</body>
</html>