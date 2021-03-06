<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String error = (String) request.getAttribute("error");

%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PIXEL</title>
    <meta name="description" content="Live Preview Of Oswan eCommerce HTML5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/pix.png">

    <!-- all css here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/chosen.min.css">
    <link rel="stylesheet" href="assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/icofont.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/bundle.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<div class="wrapper">
    <header>
        <div class="header-area transparent-bar ptb-55">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-4">
                        <div class="logo-small-device">
                            <a href="index.jsp"><img alt="" src="assets/img/logo/logo.png"></a>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-8">
                        <div class="header-contact-menu-wrapper pl-45">
                            <div class="header-contact">
                                <p>BẠN CÓ MUỐN LIÊN LẠC VỚI CHÚNG TÔI +9999 999 990</p>
                            </div>
                            <div class="menu-wrapper text-center">
                                <button class="menu-toggle">
                                    <img class="s-open" alt="" src="assets/img/icon-img/menu.png">
                                    <img class="s-close" alt="" src="assets/img/icon-img/menu-close.png">
                                </button>
                                <div class="main-menu">
                                    <nav>
                                        <ul>
                                            <li><a href="index.jsp">Trang chủ</a></li>
                                            <li class="active"><a href="about-us.html">Về chúng tôi</a></li>
                                            <li><a href="#">Cửa hàng</a>
                                                <ul>
                                                    <li><a href="mouse-shop-page.html">shop</a></li>
                                                    <li><a href="product-details.html">product details</a></li>
                                                    <li><a href="checkout.html">checkout</a></li>
                                                    <li><a href="wishlist.html">wishlist</a></li>
                                                    <li><a href="cart.html">cart</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">pages</a>
                                                <ul>
                                                    <li><a href="about-us.html">about us</a></li>
                                                    <li><a href="cart.html">cart page</a></li>
                                                    <li><a href="checkout.html">checkout</a></li>
                                                    <li><a href="wishlist.html">wishlist</a></li>
                                                    <li><a href="login.jsp">login</a></li>
                                                    <li><a href="contact.html">contact</a></li>
                                                </ul>
                                            </li>
                                            <!--                                                    <li><a href="#">blog</a>-->
                                            <!--                                                        <ul>-->
                                            <!--                                                            <li><a href="blog.html">blog</a></li>-->
                                            <!--                                                            <li><a href="blog-details.html">blog details</a></li>-->
                                            <!--                                                        </ul>-->
                                            <!--                                                    </li>-->
                                            <li><a href="contact.html">Liên hệ</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="header-cart cart-small-device">
                            <button class="icon-cart">
                                <i class="ti-shopping-cart"></i>
                                <span class="count-style">02</span>
                                <span class="count-price-add">$295.95</span>
                            </button>
                            <div class="shopping-cart-content">
                                <ul>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h3><a href="#">Gloriori GSX 250 R </a></h3>
                                            <span>Price: $275</span>
                                            <span>Qty: 01</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                        </div>
                                    </li>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-2.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h3><a href="#">Demonissi Gori</a></h3>
                                            <span>Price: $275</span>
                                            <span class="qty">Qty: 01</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                        </div>
                                    </li>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-3.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h3><a href="#">Demonissi Gori</a></h3>
                                            <span>Price: $275</span>
                                            <span class="qty">Qty: 01</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                        </div>
                                    </li>
                                </ul>
                                <div class="shopping-cart-total">
                                    <h4>total: <span>$550.00</span></h4>
                                </div>
                                <div class="shopping-cart-btn">
                                    <a class="btn-style cr-btn" href="#">checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-menu-area col-12">
                        <div class="mobile-menu">
                            <nav id="mobile-menu-active">
                                <ul class="menu-overflow">
                                    <li><a href="index.jsp">HOME</a></li>
                                    <li><a href="#">pages</a>
                                        <ul>
                                            <li><a href="about-us.html">about us</a></li>
                                            <li><a href="cart.html">cart page</a></li>
                                            <li><a href="checkout.html">checkout</a></li>
                                            <li><a href="wishlist.html">wishlist</a></li>
                                            <li><a href="login.jsp">login</a></li>
                                            <li><a href="contact.html">contact</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">shop</a>
                                        <ul>
                                            <li><a href="mouse-shop-page.html">shop</a></li>
                                            <li><a href="product-details.html">product details</a></li>
                                            <li><a href="checkout.html">checkout</a></li>
                                            <li><a href="wishlist.html">wishlist</a></li>
                                            <li><a href="cart.html">cart</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">BLOG</a>
                                        <ul>
                                            <li><a href="blog.html">blog page</a></li>
                                            <li><a href="blog-details.html">blog details</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html"> Contact us</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-cart-wrapper">
                <div class="header-cart">
                    <button class="icon-cart">
                        <i class="ti-shopping-cart"></i>
                        <span class="count-style">03</span>
                        <span class="count-price-add">96.940đ</span>
                    </button>
                    <div class="shopping-cart-content">
                        <ul>
                            <li class="single-shopping-cart">
                                <div class="shopping-cart-img">
                                    <a href="#"><img alt="" src="assets/img/cart/img.png"></a>
                                </div>
                                <div class="shopping-cart-title">
                                    <h3><a href="#">Asus ROG Strix Hero II </a></h3>
                                    <span>Giá: 27.500đ</span>
                                    <span>S.Lượng: 01</span>
                                </div>
                                <div class="shopping-cart-delete">
                                    <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                </div>
                            </li>
                            <li class="single-shopping-cart">
                                <div class="shopping-cart-img">
                                    <a href="#"><img alt="" src="assets/img/cart/alienware14.png"></a>
                                </div>
                                <div class="shopping-cart-title">
                                    <h3><a href="#">Dell Alienware 14</a></h3>
                                    <span>Giá: 37.450đ</span>
                                    <span class="qty">S.Lượng: 01</span>
                                </div>
                                <div class="shopping-cart-delete">
                                    <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                </div>
                            </li>
                            <li class="single-shopping-cart">
                                <div class="shopping-cart-img">
                                    <a href="#"><img alt="" src="assets/img/cart/msi-gamin-gf65.png"></a>
                                </div>
                                <div class="shopping-cart-title">
                                    <h3><a href="#">MSI Gaming GF65</a></h3>
                                    <span>Giá: 31.990đ</span>
                                    <span class="qty">S.Lượng: 01</span>
                                </div>
                                <div class="shopping-cart-delete">
                                    <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                </div>
                            </li>
                        </ul>
                        <div class="shopping-cart-total">
                            <h4>tổng giá: <span>96.940đ</span></h4>
                        </div>
                        <div class="shopping-cart-btn">
                            <a class="btn-style cr-btn" href="#">Thanh toán</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="breadcrumb-area pt-255 pb-170" style="background-image: url(assets/img/banner/geomatry.jpg)">
        <div class="container-fluid">
            <div class="breadcrumb-content text-center">
                <h2>login / register</h2>
                <ul>
                    <li>
                        <a href="index.jsp">home</a>
                    </li>
                    <li>login register</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="login-register-area ptb-130">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 ml-auto mr-auto">
                    <div class="login-register-wrapper">
                        <div class="login-register-tab-list nav">
                            <a class="active" data-toggle="tab" href="#lg1">
                                <h4> Đăng nhập </h4>
                            </a>
                            <a data-toggle="tab" href="#lg2">
                                <h4> Đăng ký </h4>
                            </a>
                        </div>
                        <div class="tab-content">
                            <div id="lg1" class="tab-pane active">
                                <div class="login-form-container">
                                    <div class="login-form">
                                        <form action="doLogin" method="post">
                                            <%
                                                if (error != null) {
                                            %>
                                            <div class="alert alert-danger" role="alert">
                                                <%=error%>
                                            </div>
                                            <%
                                                }
                                            %>
                                            <input type="text" name="user-name" placeholder="Tên đăng nhập ">
                                            <input type="password" name="user-password" placeholder="Mật khẩu">
                                            <div class="button-box">
                                                <div class="login-toggle-btn">
                                                    <input type="checkbox">
                                                    <label>Lưu đăng nhập</label>
                                                    <a href="#">Quên mật khẩu?</a>
                                                </div>
                                                <button type="submit" class="btn-style cr-btn"><span>Đăng nhập</span>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div id="lg2" class="tab-pane">
                                <div class="login-form-container">
                                    <div class="login-form">
                                        <form action="#" method="post">
                                            <input type="text" name="user-name" placeholder="Tên đăng nhập ">
                                            <input type="password" name="user-password" placeholder="Mật khẩu">
                                            <input name="user-email" placeholder="Email" type="email">
                                            <div class="button-box">
                                                <button type="submit" class="btn-style cr-btn"><span>Đăng ký</span>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="newsletter-area">
        <div class="container">
            <div class="newsletter-wrapper-all theme-bg-2">
                <div class="row">
                    <div class="col-lg-5 col-12 col-md-12">
                        <div class="newsletter-img bg-img"
                             style="background-image: url(assets/img/banner/newsletter-bg.png)">
                            <img alt="image" src="assets/img/team/newsletter-img.png">
                        </div>
                    </div>
                    <div class="col-lg-7 col-12 col-md-12">
                        <div class="newsletter-wrapper text-center">
                            <div class="newsletter-title">
                                <h3>Đăng ký để nhận bản tin từ SHOP</h3>
                            </div>
                            <div id="mc_embed_signup" class="subscribe-form">
                                <form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef"
                                      method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form"
                                      class="validate" target="_blank" novalidate>
                                    <div id="mc_embed_signup_scroll" class="mc-form">
                                        <input type="email" value="" name="EMAIL" class="email"
                                               placeholder="Email của bạn..." required>
                                        <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                        <div class="mc-news" aria-hidden="true"><input type="text"
                                                                                       name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef"
                                                                                       tabindex="-1" value=""></div>
                                        <div class="clear"><input type="submit" value="Subscribe" name="subscribe"
                                                                  id="mc-embedded-subscribe" class="button"></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="footer-top pt-210 pb-98 theme-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="footer-widget mb-30">
                            <div class="footer-logo">
                                <a href="index.jsp">
                                    <img src="assets/img/logo/2.png" alt="">
                                </a>
                            </div>
                            <div class="footer-about">
                                <p><span>PIXEL </span> là doanh nghiệp cung cấp PC gaming, laptop, phụ kiện máy tính,
                                    thiết bị chơi game chính hãng. Hãy mua và nhận điều ưu đãi hấp dẫn</p>
                                <div class="footer-support">
                                    <h5>HỆ THỐNG TỒNG ĐÀI MIỄN PHÍ</h5>
                                    <span>Tổng đài mua hàng: <strong> 1800 1234</strong></span></br>
                                    <span>Tổng đài hỗ trợ khách hàng: <strong> 1800 4567</strong></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="footer-widget mb-30 pl-60">
                            <div class="footer-widget-title">
                                <h3>THÔNG TIN</h3>
                            </div>
                            <div class="quick-links">
                                <ul>
                                    <li><a href="about-us.html">Giới thiệu về Pixel</a></li>
                                    <li><a href="#">Mua và nhận đơn hàng</a></li>
                                    <li><a href="#">Quy định và hình thức thanh toán</a></li>
                                    <li><a href="mouse-shop-page.html">Shop</a></li>
                                    <li><a href="blog-sidebar.html">Blog</a></li>
                                    <li><a href="#">Điều khoản</a></li>
                                    <li><a href="contact.html">Liên hệ</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="footer-widget mb-30">
                            <div class="footer-widget-title">
                                <h3>VỀ PIXEL</h3>
                            </div>
                            <div class="food-widget-content pr-30">
                                <div class="single-tweet">
                                    <p><a href="#"></a>Là một Gear store phục vụ bạn nhanh chóng</p>
                                </div>
                                <div class="single-tweet">
                                    <p><a href="#"></a>Là doanh nghiệp chuyên cung cấp thiết bị, giải pháp về máy tính,
                                        thiết bị chơi game,
                                        thiết bị công nghệ cao cấp hàng đầu Việt Nam</p>
                                </div>
                                <div class="single-tweet">
                                    <p><a href="#"></a> Hệ thống nhân viên hỗ trợ nhiệt tình</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="footer-widget mb-30">
                            <div class="footer-widget-title">
                                <h3>HỆ THỐNG SHOW ROOM:</h3>
                            </div>
                            <div class="food-info-wrapper">
                                <div class="food-address">
                                    <div class="food-info-title">
                                        <span>+SHOW ROOM HCM (làm việc từ 9:00-19:00)</span>
                                    </div>
                                    <div class="food-info-content">
                                        <p>Khu phố 6, phường Linh Trung, thành phố Thủ Đức</p>
                                    </div>
                                </div>
                                <div class="food-address">
                                    <div class="food-info-title">
                                        <span>+SHOW ROOM HN (làm việc từ 9:00-19:00)</span>
                                    </div>
                                    <div class="food-info-content">
                                        <p>37 Ngõ 121 Thái Hà, Phường Trung Liệt, Quận Đống Đa.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom ptb-35 black-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-12">
                        <div class="copyright">
                            <p>©Copyright, 2018 All Rights Reserved by <a href="https://freethemescloud.com/">Free
                                themes Cloud</a></p>
                        </div>
                    </div>
                    <div class="col-md-4 col-12">
                        <div class="footer-payment-method">
                            <a href="#"><img alt="" src="assets/img/icon-img/payment.png"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>


<!-- all js here -->
<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/isotope.pkgd.min.js"></script>
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/ajax-mail.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
