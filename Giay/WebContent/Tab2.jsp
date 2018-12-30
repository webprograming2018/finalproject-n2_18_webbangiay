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
<
style type ="text/css">figure.zoom {
	background-position: 50% 50%;
	position: relative;
	width: 450px;
	overflow: hidden;
	cursor: zoom-in;
}

figure.zoom img:hover {
	opacity: 0;
}

figure.zoom img {
	transition: opacity 0.5s;
	display: block;
	width: 100%;
}
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
					<li><a href="Main.jsp">Home</a></li>
					<li><a href="D:/web/hanghot.html">Hàng hot</a></li>
					<li><a href="Adidas.jsp">Adidas</a></li>
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
					<li><a href="#">Home</a></li>
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
		<th>

			<div class="img1">
				<div id="content" style="background: #D1D0D6">


					<figure class="zoom" style="background: url(anh/nike8.png)"
						onmousemove="zoom(event)" ontouchmove="zoom(event)">
						<img src="anh/nike8.png" />
					</figure>
				</div>

				<script>
  					function zoom(e) {
    				var zoomer = e.currentTarget;
    				e.offsetX ? offsetX = e.offsetX : offsetX = e.touches[0].pageX
    				e.offsetY ? offsetY = e.offsetY : offsetX = e.touches[0].pageX
    				x = (offsetX / zoomer.offsetWidth) * 100
    				y = (offsetY / zoomer.offsetHeight) * 100
    				zoomer.style.backgroundPosition = x + "% " + y + "%";
  					}
				</script>


				<!-- <img src="anh/nike1.png" alt="" width="150dp"> -->
			</div> <input type="button" id="btnXanh" style="background: green">
			<input type="button" id="btnDo" style="background: red"> <input
			type="button" id="btnVang" style="background: yellow"> <input
			type="button" id="#D1D0D6" style="background: #D1D0D6"> <script
				type="text/javascript">
					//lay 2 button va the div
					var button1 = document.getElementById("btnXanh")
					var button2 = document.getElementById("btnDo")
					var button3 = document.getElementById("btnVang")
					var button4 = document.getElementById("#D1D0D6")
					var div = document.getElementById("content")
					//  thiet lap onclick
					button1.onclick = function(){
						div.style.background="green"
					}
					button2.onclick = function(){
						div.style.background="Red"
					}
					
					button3.onclick = function(){
						div.style.background="Yellow"
					}
					button4.onclick = function(){
						div.style.background="#D1D0D6"
					}
					
					


				</script>



			</div>
		</th>



		</script>
		<% int id =1;
			Product product = new Product();
			ProductDAOImpl productDAOImpl = new ProductDAOImpl();
			product = productDAOImpl.getProductById(id);
		%>
		<form action="AddToCart" method="post">
			<h3><%=product.getPrice() %>vnđ</h3>
			<input type="text" name="id" value="<%=product.getId()%>" style="display: none;">
			<input name="price" value="<%=product.getPrice() %>" style="display: none;">
			<input name="url" value="<%=product.getUrl() %>" style="display: none;">
			<input name="name" value="<%=product.getName() %>" style="display: none;">
			<p>Được cải tiến hơn thế hệ trước cho bạn thêm trải nghiệm khi
				mang trên mình đôi giày mới này.</p>
			<p style="float: left; width: 10%;">Chọn số lượng</p>
			<select style="float: left; margin-left: 15px;" name = "amount">
				<option>1</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
			<br>
			<input type="submit" value="Thêm vào giỏ hàng">
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