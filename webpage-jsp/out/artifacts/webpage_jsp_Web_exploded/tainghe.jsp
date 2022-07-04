<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="product" class="com.example.webpagejsp.dao.ProductDao" scope="request"/>
<head>




    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PIXEL</title>
    <meta name="description" content="Pixel">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/pix.png">

    <!-- all css here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/chosen.min.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/icofont.css">
    <link rel="stylesheet" href="assets/fonts/icofont/icofont.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/bundle.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<div class="wrapper">
    <!-- header start -->
    <header>
        <div class="header-area transparent-bar ptb-55">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-4">
                        <div class="logo-small-device">
                            <a href="../WEB-INF/index.jsp"><img alt="" src="assets/img/logo/logo.png"></a>
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
                                            <li><a href="../WEB-INF/index.jsp">Trang chủ</a></li>
                                            <li class="active"><a href="about-us.html">Về chúng tôi</a></li>
                                            <li><a href="#">Cửa hàng</a>
                                                <ul>
                                                    <li><a href="mouse-shop-page.html">Cửa hàng</a></li>
                                                    <li><a href="product-details.html">Chi tiết sản phản</a></li>
                                                    <li><a href="checkout.html">Thanh toán</a></li>
                                                    <li><a href="wishlist.html">Danh sách yêu thích</a></li>
                                                    <li><a href="cart.html">Giỏ hàng</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">pages</a>
                                                <ul>
                                                    <li><a href="about-us.html">Về chúng tôi</a></li>
                                                    <li><a href="cart.html">Trang giỏ hàng</a></li>
                                                    <li><a href="checkout.html">Thanh toán</a></li>
                                                    <li><a href="wishlist.html">Danh sách yêu thích</a></li>
                                                    <li><a href="../WEB-INF/login-register.jsp">Đăng nhập</a></li>
                                                    <li><a href="contact.html">Liên hệ</a></li>
                                                </ul>
                                            </li>
<!--                                            <li><a href="#">blog</a>-->
<!--                                                <ul>-->
<!--                                                    <li><a href="blog.html">blog</a></li>-->
<!--                                                    <li><a href="blog-details.html">blog details</a></li>-->
<!--                                                </ul>-->
<!--                                            </li>-->
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
                                    <li><a href="../WEB-INF/index.jsp">HOME</a></li>
                                    <li><a href="#">pages</a>
                                        <ul>
                                            <li><a href="about-us.html">about us</a></li>
                                            <li><a href="cart.html">cart page</a></li>
                                            <li><a href="checkout.html">checkout</a></li>
                                            <li><a href="wishlist.html">wishlist</a></li>
                                            <li><a href="../WEB-INF/login-register.jsp">login</a></li>
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
    <div class="breadcrumb-area pt-230 pb-126" style="background-image: url(assets/img/banner/banner-4.png)">
        <div class="container-fluid">
            <div class="breadcrumb-content text-center">
                <h2>Shop Page</h2>
                <ul>
                    <li>
                        <a href="#">home</a>
                    </li>
                    <li>Shop page</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="shop-wrapper fluid-padding-2 pt-120 pb-150">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="product-sidebar-area pr-60">
                        <div class="sidebar-widget pb-55">
                            <h3 class="sidebar-widget">Tìm kiếm</h3>
                            <div class="sidebar-search">
                                <form action="#">
                                    <input type="text" placeholder="Tìm kiếm sản phầm...">
                                    <button><i class="ti-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="sidebar-widget pb-50">
                            <h3 class="sidebar-widget">Danh mục sản phẩm</h3>
                            <div class="widget-categories">
                                <ul>
                                    <ul>
                                        <li><a href="laptop-shop-page.jsp"><i class="icofont-laptop-alt"></i>
                                            Laptop</a></li>
                                        <li><a href="pc-shop-page.jsp"><i class="icofont-computer"></i> PC và Màn hình</a>
                                        </li>
                                        <li><a href="mouse-shop-page.html"><i class="icofont-mouse"></i> Chuột
                                            Gaming</a></li>
                                        <li><a href="tainghe.html"><i class="icofont-headphone-alt-3"></i> Tai nghe</a>
                                        </li>
                                        <li><a href="shop-keyboard.html"><i class="icofont-keyboard-alt"></i> Bàn phím
                                            Gaming</a></li>
                                        <li><a href="gaming-chair.html"><i class="icofont-chair"></i> Ghế Gaming</a></li>
                                        <li><a href="linhkien.html"><i class="icofont-usb"></i>Phụ kiện</a></li>
                                    </ul>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-widget mb-55">
                            <h3 class="sidebar-widget">Giá bạn muốn</h3>
                            <div class="price_filter mr-60">
                                <div id="slider-range"></div>
                                <div class="price_slider_amount">
                                    <div class="label-input">
                                        <label>price : </label>
                                        <input type="text" id="amount" name="price" placeholder="Add Your Price"/>
                                    </div>
                                    <button type="button">Lọc</button>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar-widget mb-55">
                            <h3 class="sidebar-widget">Màu bạn muốn</h3>
                            <div class="product-color">
                                <ul>
                                    <li class="blue">b</li>
                                    <li class="yellow">y</li>
                                    <li class="gray">g</li>
                                    <li class="puce">pu</li>
                                    <li class="black">b</li>
                                    <li class="pink">p</li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-widget mb-45">
                            <h3 class="sidebar-widget">Thương hiệu</h3>
                            <div class="product-tags">
                                <ul>
                                    <li><a href="#"><img src="assets/img/icon-img/acer-icon.png"/></a></li>
                                    <li><a href="#"><img src="assets/img/icon-img/asus-icon.png"/></a></li>
                                    <li><a href="#"><img src="assets/img/icon-img/gigabyte-icon.png"/></a></li>
                                    <li><a href="#"><img src="assets/img/icon-img/dell-icon.png"/></a></li>
                                    <li><a href="#"><img src="assets/img/icon-img/lenovo-icon.png"/></a></li>
                                    <li><a href="#"><img src="assets/img/icon-img/msi-icon.png"/></a></li>
                                    <li><a href="#"><img src="assets/img/icon-img/hp-icon.png"/></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-widget mb-45">
                            <h3 class="sidebar-widget">CPU</h3>
                            <div class="product-tags">
                                <ul>
                                    <li><a href="#">AMD Ryzen 5</a></li>
                                    <li><a href="#">AMD Ryzen 7</a></li>
                                    <li><a href="#">AMD Ryzen 9</a></li>
                                    <li><a href="#">Intel Core i5</a></li>
                                    <li><a href="#">Intel Core i7</a></li>
                                    <li><a href="#">Intel Core i9</a></li>

                                </ul>
                            </div>
                        </div>

                        <div class="sidebar-widget">
                            <h3 class="sidebar-widget">Sản phẩm bán chạy nhất tháng</h3>
                            <div class="best-seller">
                                <div class="single-best-seller">
                                    <div class="best-seller-img">
                                        <a href="#"><img src="assets/img/product/l1.jpg" alt=""></a>
                                    </div>
                                    <div class="best-seller-text">
                                        <h3><a href="#">Laptop Gaming Asus ROG Zephyrus G15 GA503QC HN074T</a></h3>
                                        <span>Giá: 32,790,000đ</span>
                                    </div>
                                </div>
                                <div class="single-best-seller">
                                    <div class="best-seller-img">
                                        <a href="#"><img src="assets/img/product/l2.jpg" alt=""></a>
                                    </div>
                                    <div class="best-seller-text">
                                        <h3><a href="#">Tai nghe SteelSeries Arctis 7P White</a></h3>
                                        <span>Giá: 4,190,000đ</span>
                                    </div>
                                </div>
                                <div class="single-best-seller">
                                    <div class="best-seller-img">
                                        <a href="#"><img src="assets/img/product/l3.png" alt=""></a>
                                    </div>
                                    <div class="best-seller-text">
                                        <h3><a href="#">Chuột Steelseries Rival 600</a></h3>
                                        <span>Giá: 4,190,000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="shop-topbar-wrapper">
                        <div class="grid-list-options">
                            <ul class="view-mode">
                                <li class="active"><a href="#product-grid" data-view="product-grid"><i
                                        class="ti-layout-grid2"></i></a></li>
                                <li><a href="#product-list" data-view="product-list"><i class="ti-view-list"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="product-sorting">
                            <div class="shop-product-sorting nav">
                                <a class="active" data-toggle="tab" href="#new-product">BÁN CHẠY</a>
                                <a data-toggle="tab" href="#accessory-product">MỚI NHẤT</a>
                            </div>
                            <!--                            <div class="sorting sorting-bg-1">-->
                            <!--                                <form>-->
                            <!--                                    <select class="select">-->
                            <!--                                        <option value="">Sắp xếp</option>-->
                            <!--                                        <option value="">Sắp xếp mới nhất</option>-->
                            <!--                                        <option value="">Sắp xếp theo giá</option>-->
                            <!--                                    </select>-->
                            <!--                                </form>-->
                            <!--                            </div>-->
                        </div>
                    </div>
                    <div class="grid-list-product-wrapper tab-content">
                        <div id="new-product" class="product-grid product-view tab-pane active">
                            <div class="row">
                                <c:forEach items="${product.allProduct}" var="p">
                                    <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                        <div class="product-wrapper mb-35">
                                            <div class="product-img">
                                                <a href="tainghe2.html">
                                                    <img src="${p.image}" alt="">
                                                </a>

                                                <div class="product-action">
                                                    <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                       href="#">
                                                        <i class=" ti-shopping-cart"></i>
                                                    </a>
                                                    <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                        <i class=" ti-heart"></i>
                                                    </a>
                                                    <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                       data-target="#exampleModal" href="#">
                                                        <i class=" ti-zoom-in"></i>
                                                    </a>
                                                </div>
                                                <div class="product-content-wrapper">
                                                    <div class="product-title-spreed">
                                                        <h4><a href="tainghe2.html">${p.name}</a>
                                                        </h4>
                                                        <div class="product-price">
                                                            <span>${p.price}</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="product-list-details">
                                                <h2><a href="tainghe2.html">${p.price}</a>
                                                </h2>
                                                <div class="quick-view-rating">
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                </div>
                                                <div class="product-price">
                                                    <span>${p.price}</span>
                                                </div>
                                                <p>${p.description} </p>
                                                <div class="shop-list-cart">
                                                    <a href="cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>


                            </div>
                        </div>

                        <div id="accessory-product" class="product-grid product-view tab-pane">
                            <div class="row">
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="tainghe1.html">
                                                <img src="assets/img/product/zzz12.png" alt="">
                                            </a>
                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="tainghe1.html">Zidli ZH20 7.1 RGB</a></h4>
                                                </div>
                                                <div class="product-price">
                                                    <span>500.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="tainghe1.html">Tai nghe Zidli ZH20 7.1 RGB</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>500.000₫</span>
                                            </div>
                                            <p>Chúng ta có một tai nghe giả lập âm thanh 7.1 có âm thanh hay và độ chi
                                                tiết cao, âm trường rộng, dễ nghe và cho cảm giác sử dụng tốt theo thời
                                                gian dài nhờ ốp đệm đầu và ốp tai bằng da cao cấp, cảm giác đeo rộng rãi
                                                thoải mái mà không gây đau tai.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz13.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Tai nghe Asus ROG Cetra RGB</a>
                                                    </h4>
                                                </div>
                                                <div class="product-price">
                                                    <span>1.890.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Asus ROG Cetra RGB</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>1.890.000₫</span>
                                            </div>
                                            <p>ROG Cetra RGB là một sản phẩm tai nghe in ear sẽ giúp bạn loại bỏ những
                                                mối lo trên. Mang trong mình khả năng truyền tải âm thanh chất lượng như
                                                những tai nghe chơi game và sự linh hoạt, nhỏ gọn,dễ dàng di chuyển.
                                                Theo ASUS giới thiệu, Cetra cung cấp âm thanh trung thựcvà chi tiết, âm
                                                bass mạnh và khả năng tối ưu hóa âm thanh nhờ trình điểu khiển ASUS
                                                Essence.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz14.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Tai nghe Rapoo Gaming VH520</a>
                                                    </h4>
                                                </div>
                                                <div class="product-price">
                                                    <span>650.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Rapoo Gaming VH520</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>650.000₫</span>
                                            </div>
                                            <p>Tai nghe Rapoo VH520 Virtual 7.1 được trang bị cho mình hệ thống đèn LED
                                                tự thay đổi với nhiều màu sắc khác nhau làm cho chiếc tai nghe nổi bật
                                                và bắt mắt. Với chất liệu siêu bền cho VH520 Virtual 7.1 một kiểu dáng
                                                cứng cáp và bền bỉ khi sử dụng.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz15.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Logitech G733 LIGHTSPEED Wireless
                                                        Lilac</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>3.499.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Logitech G733 LIGHTSPEED
                                                Wireless Lilac</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>3.499.000₫</span>
                                            </div>
                                            <p>Tai nghe Logitech G733 LIGHTSPEED Wireless Lilac là một chiếc tai nghe
                                                không dây cực kỳ đáng mua. Được thiết kế để mang lại sự thoải mái cho
                                                người dùng, G733 LIGHTSPEED được trang bị âm thanh nổi, bộ lọc âm thanh
                                                và các chức năng ánh sáng tiên tiến nhất.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz16.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">DareU A710 RGB Wireless</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>1.390.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe DareU A710 RGB Wireless</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>1.390.000₫</span>
                                            </div>
                                            <p>Chiếc headphone là vật không thể thiếu của các game thủ trong những trận
                                                game đầy kịch tính. Sản phẩm tai nghe DareU A710 RGB Wireless đem lại
                                                trải nghiệm hấp dẫn với âm thành cực kỳ sống động khi dùng.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz17.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">DareU EH925 Black Red RGB</a>
                                                    </h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>799.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe DareU EH925 Black Red RGB</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>799.000₫</span>
                                            </div>
                                            <p>Tai nghe DareU EH925 7.1 RGB Black Red là chiếc tai nghe over-ear đến từ
                                                thương hiệu nổi lên với các phụ kiện gear giá rẻ như bàn phím cơ và
                                                chuột.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz18.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Corsair HS80 RGB Wireless</a>
                                                    </h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>3.390.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Corsair HS80 RGB Wireless</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>3.390.000₫</span>
                                            </div>
                                            <p>Được trang bị driver âm thanh neodymium 50mm cùng với dải tần số lên đến
                                                20Hz – 30kHz, Corsair HS80 RGB Wireless sẽ đem lại những âm thanh rõ nét
                                                nhất từ những tiếng bước chân nhỏ nhẹ đến những vụ nổ chấn động.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz19.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Corsair Virtuoso XT</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>6.590.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe không dây Corsair Virtuoso
                                                XT</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>6.590.000₫</span>
                                            </div>
                                            <p>Tai nghe không dây Corsair Virtuoso XT được sở hữu 4 khả năng kết nối,
                                                bao gồm: USB Slipstream Wireless, cổng USB, jack 3.5mm và bluetooth. Với
                                                khả năng kết nối vượt trội như vậy, bạn có thể thoải mái sử dụng mà
                                                không cần đắn đo về độ tương thích của thiết bị.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz20.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">HyperX Cloud Earbuds (Yellow
                                                        Edition)</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>990.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe HyperX Cloud Earbuds (Yellow
                                                Edition)</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>990.000₫</span>
                                            </div>
                                            <p>HyperX Cloud Earbuds (Yellow Edition) là một trong những sản phẩm tai
                                                nghe in-ear lý tưởng cho game thủ mang theo Nintendo Switch để chơi. Với
                                                giắc cắm có góc xoay 90 độ, dây cáp bọc cao su không rối dễ nối với máy
                                                hơn được thiết kế tối ưu cho chế độ cầm tay, có hộp đựng lý tưởng để
                                                mang theo và bảo quản an toàn.Dễ liên lạc với đồng đội trong Fortnite và
                                                các game Switch khác có thể nói chuyện được trong game và giành lợi thế
                                                khi chơi hoặc thưởng thức. Cloud Earbuds đi kèm với nút tai có ba kích
                                                thước khác nhau bằng silicon đã được cấp bằng sáng chế để mang lại cảm
                                                giác thoải mái đặc trưng của HyperX, một phụ kiện lý tưởng cho những
                                                buổi game kéo dài. </p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz21.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Mpow Air SE Blue</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>690.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe gaming Mpow Air SE Blue</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>690.000₫</span>
                                            </div>
                                            <p>Tai nghe gaming Mpow Air SE Blue là dòng sản phẩm tai nghe dành cho game
                                                thủ đến từ nhà sản xuất Mpow. Với thiết kế nhỏ gọn, nhẹ kèm theo đó là
                                                công nghệ âm thanh 3D Surround Sound hứa hẹn sẽ mang lại trải nghiệm âm
                                                thanh tuyệt vời.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz22.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Tai nghe Razer BlackShark V2 Pro
                                                        – Rainbow Six Edition</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>5.590.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Razer BlackShark V2 Pro –
                                                Rainbow Six Edition</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>5.590.000₫</span>
                                            </div>
                                            <p>Razer hợp tác với Ubisoft, công bố BlackShark V2 Pro – Six Siege Special
                                                Edition, tai nghe phiên bản limited của tựa game hàng triệu người chơi –
                                                Rainbow Six Siege.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz23.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Razer BlackShark V2 CouRageJD
                                                        Edition</a></h4>
                                                </div>
                                                <div class="product-price">
                                                    <span>3.090.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Razer BlackShark V2 CouRageJD
                                                Edition</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>3.090.000₫</span>
                                            </div>
                                            <p>Thiết kế hoàn toàn mới với khả năng điều chỉnh các tần số âm thanh cao đã
                                                được cấp bằng sáng chế có cơ chế hoạt động giống như 3 trình điều khiển
                                                âm thanh trong 1, tạo ra âm thanh sáng hơn với âm ba trầm hơn và âm trầm
                                                mạnh mẽ hơn.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz24.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Asus ROG Delta Gundam Edition</a>
                                                    </h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>4.990.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai Nghe Asus ROG Delta Gundam
                                                Edition</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>4.990.000₫</span>
                                            </div>
                                            <p>Asus ROG Delta Gundam Edition là tai nghe chơi game RGB được cấp phép
                                                chính thức của GUNDAM với ESS Quad-DAC cấp hi-fi và hệ thống chiếu sáng
                                                RGB hình tròn có đầu nối USB-C để tương thích với PC, bảng điều khiển
                                                trò chơi và điện thoại di động</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz25.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Logitech G733 LIGHTSPEED Wireless
                                                        White</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>2.990.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Logitech G733 LIGHTSPEED
                                                Wireless White</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>2.990.000₫</span>
                                            </div>
                                            <p>Tai nghe không dây gaming Logitech G733 LIGHTSPEED Wireless White được
                                                thiết kế mang đến sự thoải mái cho game thủ. Đây là mẫu tai nghe không
                                                dây được trang bị âm thanh lập thể, các bộ lọc âm thanh và tính năng
                                                chiếu sáng tiên tiến bạn cần để nhìn, nói và chơi phong cách hơn bao giờ
                                                hết.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/zzz26.png" alt="">
                                            </a>

                                            <div class="product-action">
                                                <a class="action-plus-2 p-action-none" title="Thêm vào giỏ hàng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh sách yêu thích" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem lướt qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Ajazz AX365 7.1 Black</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>450.000₫</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Ajazz AX365 7.1 Black</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>450.000₫</span>
                                            </div>
                                            <p>Ajazz AX365 7.1 Black là dòng tai nghe gaming giá rẻ chất lượng cao, âm
                                                thanh 7.1 cho trải nghiệm tốt nhất kể cả nghe nhạc, xem phim và chơi
                                                game (đặc biệt là các game FPS vốn yêu cầu rất cao về âm thanh vòm). Tai
                                                nghe over-ear nên phần chụp tai có kích thước to hơn nhiều loại tai nghe
                                                khác. Bên ngoài phần ốp tai được trang bị đèn LED bắt mắt.</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="paginations text-center mt-20">
                        <ul>
                            <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li class="active"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
