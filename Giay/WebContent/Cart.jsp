<%@page import="Model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ServiceImpl.CartDAOImpl"%>
<%@page import="Model.Product"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
	<title>web bán giày REAL</title>
	<meta charset="utf-8">
	<meta name="author" content="">
	<meta name="description" content=""/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <style type="text/css">
    #result {
   position: absolute;
   width: 50%;
   max-width:100px;
   cursor: pointer;
   overflow-y: auto;
   max-height: 150px;
   box-sizing: border-box;
   z-index: 1001;
  }
    
		figure.zoom {
  	background-position: 50% 50%;
  position: relative;
  width: 300px;
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
				<img src="anh/Chưa có tên.png" alt="giay" width="150" height="60">
			</div>

			<nav>
				<ul>
					<li><a href="1/trang chủ.html">Home</a></li>
					<li><a href="Hanghot.jsp">Hàng hot</a></li>
					<li><a href="Adidas.jsp">Adidas</a></li>
					<li><a href="#">Hỗ trợ</a></li>
				</ul>
			</nav>
		</div>
	
	</header>

	<header class="fixed_nav">
		<div class="wrapper">
			<div class="logo">
				<a href="#"><img src="anh/Chưa có tên.png" alt="Fertile"  width="150" height="60" ></a>
			</div>

			<nav>
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="Hanghot.jsp">Hàng hot</a></li>
					<li><a href="Adidas.jsp">Adidas</a></li>
					<li><a href="#">Hỗ trợ</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<section class="billboard">
		<img src="anh/Capture.PNG" alt="" title=""  width="15000" height="550"  />
	</section>

	<section class="cta cta_top">
		<p> Chào mừng bạn đã đến với thế giới giày REAL</p>
				<a href="">Hãy bắt đầu để ý tới phong cách của bạn</a>
	</section>
	<div align="center">
    <input type="text" name="search" id="search" placeholder="Search Employee Details" class="form-control" />
   </div>
   <ul class="list-group" id="result"></ul>

	<section class="services wrapper">
			<h2>Chúng tôi tạo ra cho bạn phong cách.</h2>
			
				
		<div >
			   <h3>${message }</h3>
	<%
		CartDAOImpl cartDAOImpl = new CartDAOImpl();
		ArrayList<Cart> list = cartDAOImpl.getAllProduct();
		Cart cart = new Cart();
		int x =0;
	%>
	<h3>Danh sách sản phẩm trong giỏ hàng</h3>
	<%
		for (int i = 0; i < list.size(); i++) {
			cart = list.get(i);
			x+=cart.getPrice();
	%>
	<img  alt="This is piture" src="anh/<%=cart.getUrl()%>"
		style="width: 25%; height: 175px;">
	<div style="width: 25%; text-align: center;">
		<p>
			Giá:
			<%=cart.getPrice()%></p>
		<p>
			Số lượng :
			<%=cart.getAmount()%></p>
	</div>
	<%
		}
	%>
	<form action="AddToOrder" method="post">
		<input style="display: none;" value="<%=list.size()%>" name="amount">
		<input style="display: none;" value="<%=x%>" name="money">
		<input type="submit" value="Thanh toán">
	</form>
	</div>
	</section>
			   
			   
			   
			   
	<section class="clients">
		<div class="wrapper">
			<ul>
				<li><a href=""><img src="anh/Chưa có tên.png" alt="" title="Client Logo" width="90" height="70"/></a></li>
				<li><a href=""><img src="anh/Chưa có tên.png" alt="" title="Client Logo"width="90" height="60"/></a></li>
				<li><a href=""><img src="anh/Chưa có tên.png" alt="" title="Client Logo"width="90" height="60"/></a></li>
				<li><a href=""><img src="anh/Chưa có tên.png" alt="" title="Client Logo"width="90" height="60"/></a></li>
				<li><a href=""><img src="anh/Chưa có tên.png" alt="" title="Client Logo"width="90" height="60"/></a></li>
				<li><a href=""><img src="anh/Chưa có tên.png" alt="" title="Client Logo"width="90" height="60"/></a></li>
			</ul>
		</div>
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
						<p>Bạn có thể chia sẻ rộng rãi trong cộng đồng </p> 	
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
							<li><a >FAQ</a></li>
							<li><a >Phone</a></li>
							<li><a >Mạng xã hội</a></li>
						</ul>	
					</div>	

					<div class="f_cols">
						<h3>PTIT</h3>
						<p>Chúng tôi luôn đặt chất lượng sản phẩm lên hàng đầu.</p>
					</div>
			</div>

			<p class="rights">© Hãy xây dựng phong cách theo tính cách của bạn.</a></p>	

		</div>
	</footer>

	        
	</body>
</html>