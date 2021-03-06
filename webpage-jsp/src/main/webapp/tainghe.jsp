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
                                <p>B???N C?? MU???N LI??N L???C V???I CH??NG T??I +9999 999 990</p>
                            </div>
                            <div class="menu-wrapper text-center">
                                <button class="menu-toggle">
                                    <img class="s-open" alt="" src="assets/img/icon-img/menu.png">
                                    <img class="s-close" alt="" src="assets/img/icon-img/menu-close.png">
                                </button>
                                <div class="main-menu">
                                    <nav>
                                        <ul>
                                            <li><a href="../WEB-INF/index.jsp">Trang ch???</a></li>
                                            <li class="active"><a href="about-us.html">V??? ch??ng t??i</a></li>
                                            <li><a href="#">C???a h??ng</a>
                                                <ul>
                                                    <li><a href="mouse-shop-page.html">C???a h??ng</a></li>
                                                    <li><a href="product-details.html">Chi ti???t s???n ph???n</a></li>
                                                    <li><a href="checkout.html">Thanh to??n</a></li>
                                                    <li><a href="wishlist.html">Danh s??ch y??u th??ch</a></li>
                                                    <li><a href="cart.html">Gi??? h??ng</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">pages</a>
                                                <ul>
                                                    <li><a href="about-us.html">V??? ch??ng t??i</a></li>
                                                    <li><a href="cart.html">Trang gi??? h??ng</a></li>
                                                    <li><a href="checkout.html">Thanh to??n</a></li>
                                                    <li><a href="wishlist.html">Danh s??ch y??u th??ch</a></li>
                                                    <li><a href="../WEB-INF/login-register.jsp">????ng nh???p</a></li>
                                                    <li><a href="contact.html">Li??n h???</a></li>
                                                </ul>
                                            </li>
<!--                                            <li><a href="#">blog</a>-->
<!--                                                <ul>-->
<!--                                                    <li><a href="blog.html">blog</a></li>-->
<!--                                                    <li><a href="blog-details.html">blog details</a></li>-->
<!--                                                </ul>-->
<!--                                            </li>-->
                                            <li><a href="contact.html">Li??n h???</a></li>
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
                        <span class="count-price-add">96.940??</span>
                    </button>
                    <div class="shopping-cart-content">
                        <ul>
                            <li class="single-shopping-cart">
                                <div class="shopping-cart-img">
                                    <a href="#"><img alt="" src="assets/img/cart/img.png"></a>
                                </div>
                                <div class="shopping-cart-title">
                                    <h3><a href="#">Asus ROG Strix Hero II </a></h3>
                                    <span>Gi??: 27.500??</span>
                                    <span>S.L?????ng: 01</span>
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
                                    <span>Gi??: 37.450??</span>
                                    <span class="qty">S.L?????ng: 01</span>
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
                                    <span>Gi??: 31.990??</span>
                                    <span class="qty">S.L?????ng: 01</span>
                                </div>
                                <div class="shopping-cart-delete">
                                    <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                </div>
                            </li>
                        </ul>
                        <div class="shopping-cart-total">
                            <h4>t???ng gi??: <span>96.940??</span></h4>
                        </div>
                        <div class="shopping-cart-btn">
                            <a class="btn-style cr-btn" href="#">Thanh to??n</a>
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
                            <h3 class="sidebar-widget">T??m ki???m</h3>
                            <div class="sidebar-search">
                                <form action="#">
                                    <input type="text" placeholder="T??m ki???m s???n ph???m...">
                                    <button><i class="ti-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="sidebar-widget pb-50">
                            <h3 class="sidebar-widget">Danh m???c s???n ph???m</h3>
                            <div class="widget-categories">
                                <ul>
                                    <ul>
                                        <li><a href="laptop-shop-page.jsp"><i class="icofont-laptop-alt"></i>
                                            Laptop</a></li>
                                        <li><a href="pc-shop-page.jsp"><i class="icofont-computer"></i> PC v?? M??n h??nh</a>
                                        </li>
                                        <li><a href="mouse-shop-page.html"><i class="icofont-mouse"></i> Chu???t
                                            Gaming</a></li>
                                        <li><a href="tainghe.html"><i class="icofont-headphone-alt-3"></i> Tai nghe</a>
                                        </li>
                                        <li><a href="shop-keyboard.html"><i class="icofont-keyboard-alt"></i> B??n ph??m
                                            Gaming</a></li>
                                        <li><a href="gaming-chair.html"><i class="icofont-chair"></i> Gh??? Gaming</a></li>
                                        <li><a href="linhkien.html"><i class="icofont-usb"></i>Ph??? ki???n</a></li>
                                    </ul>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-widget mb-55">
                            <h3 class="sidebar-widget">Gi?? b???n mu???n</h3>
                            <div class="price_filter mr-60">
                                <div id="slider-range"></div>
                                <div class="price_slider_amount">
                                    <div class="label-input">
                                        <label>price : </label>
                                        <input type="text" id="amount" name="price" placeholder="Add Your Price"/>
                                    </div>
                                    <button type="button">L???c</button>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar-widget mb-55">
                            <h3 class="sidebar-widget">M??u b???n mu???n</h3>
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
                            <h3 class="sidebar-widget">Th????ng hi???u</h3>
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
                            <h3 class="sidebar-widget">S???n ph???m b??n ch???y nh???t th??ng</h3>
                            <div class="best-seller">
                                <div class="single-best-seller">
                                    <div class="best-seller-img">
                                        <a href="#"><img src="assets/img/product/l1.jpg" alt=""></a>
                                    </div>
                                    <div class="best-seller-text">
                                        <h3><a href="#">Laptop Gaming Asus ROG Zephyrus G15 GA503QC HN074T</a></h3>
                                        <span>Gi??: 32,790,000??</span>
                                    </div>
                                </div>
                                <div class="single-best-seller">
                                    <div class="best-seller-img">
                                        <a href="#"><img src="assets/img/product/l2.jpg" alt=""></a>
                                    </div>
                                    <div class="best-seller-text">
                                        <h3><a href="#">Tai nghe SteelSeries Arctis 7P White</a></h3>
                                        <span>Gi??: 4,190,000??</span>
                                    </div>
                                </div>
                                <div class="single-best-seller">
                                    <div class="best-seller-img">
                                        <a href="#"><img src="assets/img/product/l3.png" alt=""></a>
                                    </div>
                                    <div class="best-seller-text">
                                        <h3><a href="#">Chu???t Steelseries Rival 600</a></h3>
                                        <span>Gi??: 4,190,000??</span>
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
                                <a class="active" data-toggle="tab" href="#new-product">B??N CH???Y</a>
                                <a data-toggle="tab" href="#accessory-product">M???I NH???T</a>
                            </div>
                            <!--                            <div class="sorting sorting-bg-1">-->
                            <!--                                <form>-->
                            <!--                                    <select class="select">-->
                            <!--                                        <option value="">S???p x???p</option>-->
                            <!--                                        <option value="">S???p x???p m???i nh???t</option>-->
                            <!--                                        <option value="">S???p x???p theo gi??</option>-->
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
                                                    <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                       href="#">
                                                        <i class=" ti-shopping-cart"></i>
                                                    </a>
                                                    <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                        <i class=" ti-heart"></i>
                                                    </a>
                                                    <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <a href="cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???</a>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="tainghe1.html">Zidli ZH20 7.1 RGB</a></h4>
                                                </div>
                                                <div class="product-price">
                                                    <span>500.000???</span>
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
                                                <span>500.000???</span>
                                            </div>
                                            <p>Ch??ng ta c?? m???t tai nghe gi??? l???p ??m thanh 7.1 c?? ??m thanh hay v?? ????? chi
                                                ti???t cao, ??m tr?????ng r???ng, d??? nghe v?? cho c???m gi??c s??? d???ng t???t theo th???i
                                                gian d??i nh??? ???p ?????m ?????u v?? ???p tai b???ng da cao c???p, c???m gi??c ??eo r???ng r??i
                                                tho???i m??i m?? kh??ng g??y ??au tai.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>1.890.000???</span>
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
                                                <span>1.890.000???</span>
                                            </div>
                                            <p>ROG Cetra RGB l?? m???t s???n ph???m tai nghe in ear s??? gi??p b???n lo???i b??? nh???ng
                                                m???i lo tr??n. Mang trong m??nh kh??? n??ng truy???n t???i ??m thanh ch???t l?????ng nh??
                                                nh???ng tai nghe ch??i game v?? s??? linh ho???t, nh??? g???n,d??? d??ng di chuy???n.
                                                Theo ASUS gi???i thi???u, Cetra cung c???p ??m thanh trung th???cv?? chi ti???t, ??m
                                                bass m???nh v?? kh??? n??ng t???i ??u h??a ??m thanh nh??? tr??nh ??i???u khi???n ASUS
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>650.000???</span>
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
                                                <span>650.000???</span>
                                            </div>
                                            <p>Tai nghe Rapoo VH520 Virtual 7.1 ???????c trang b??? cho m??nh h??? th???ng ????n LED
                                                t??? thay ?????i v???i nhi???u m??u s???c kh??c nhau l??m cho chi???c tai nghe n???i b???t
                                                v?? b???t m???t. V???i ch???t li???u si??u b???n cho VH520 Virtual 7.1 m???t ki???u d??ng
                                                c???ng c??p v?? b???n b??? khi s??? d???ng.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>3.499.000???</span>
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
                                                <span>3.499.000???</span>
                                            </div>
                                            <p>Tai nghe Logitech G733 LIGHTSPEED Wireless Lilac l?? m???t chi???c tai nghe
                                                kh??ng d??y c???c k??? ????ng mua. ???????c thi???t k??? ????? mang l???i s??? tho???i m??i cho
                                                ng?????i d??ng, G733 LIGHTSPEED ???????c trang b??? ??m thanh n???i, b??? l???c ??m thanh
                                                v?? c??c ch???c n??ng ??nh s??ng ti??n ti???n nh???t.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">DareU A710 RGB Wireless</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>1.390.000???</span>
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
                                                <span>1.390.000???</span>
                                            </div>
                                            <p>Chi???c headphone l?? v???t kh??ng th??? thi???u c???a c??c game th??? trong nh???ng tr???n
                                                game ?????y k???ch t??nh. S???n ph???m tai nghe DareU A710 RGB Wireless ??em l???i
                                                tr???i nghi???m h???p d???n v???i ??m th??nh c???c k??? s???ng ?????ng khi d??ng.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>799.000???</span>
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
                                                <span>799.000???</span>
                                            </div>
                                            <p>Tai nghe DareU EH925 7.1 RGB Black Red l?? chi???c tai nghe over-ear ?????n t???
                                                th????ng hi???u n???i l??n v???i c??c ph??? ki???n gear gi?? r??? nh?? b??n ph??m c?? v??
                                                chu???t.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>3.390.000???</span>
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
                                                <span>3.390.000???</span>
                                            </div>
                                            <p>???????c trang b??? driver ??m thanh neodymium 50mm c??ng v???i d???i t???n s??? l??n ?????n
                                                20Hz ??? 30kHz, Corsair HS80 RGB Wireless s??? ??em l???i nh???ng ??m thanh r?? n??t
                                                nh???t t??? nh???ng ti???ng b?????c ch??n nh??? nh??? ?????n nh???ng v??? n??? ch???n ?????ng.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Corsair Virtuoso XT</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>6.590.000???</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe kh??ng d??y Corsair Virtuoso
                                                XT</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>6.590.000???</span>
                                            </div>
                                            <p>Tai nghe kh??ng d??y Corsair Virtuoso XT ???????c s??? h???u 4 kh??? n??ng k???t n???i,
                                                bao g???m: USB Slipstream Wireless, c???ng USB, jack 3.5mm v?? bluetooth. V???i
                                                kh??? n??ng k???t n???i v?????t tr???i nh?? v???y, b???n c?? th??? tho???i m??i s??? d???ng m??
                                                kh??ng c???n ?????n ??o v??? ????? t????ng th??ch c???a thi???t b???.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>990.000???</span>
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
                                                <span>990.000???</span>
                                            </div>
                                            <p>HyperX Cloud Earbuds (Yellow Edition) l?? m???t trong nh???ng s???n ph???m tai
                                                nghe in-ear l?? t?????ng cho game th??? mang theo Nintendo Switch ????? ch??i. V???i
                                                gi???c c???m c?? g??c xoay 90 ?????, d??y c??p b???c cao su kh??ng r???i d??? n???i v???i m??y
                                                h??n ???????c thi???t k??? t???i ??u cho ch??? ????? c???m tay, c?? h???p ?????ng l?? t?????ng ?????
                                                mang theo v?? b???o qu???n an to??n.D??? li??n l???c v???i ?????ng ?????i trong Fortnite v??
                                                c??c game Switch kh??c c?? th??? n??i chuy???n ???????c trong game v?? gi??nh l???i th???
                                                khi ch??i ho???c th?????ng th???c. Cloud Earbuds ??i k??m v???i n??t tai c?? ba k??ch
                                                th?????c kh??c nhau b???ng silicon ???? ???????c c???p b???ng s??ng ch??? ????? mang l???i c???m
                                                gi??c tho???i m??i ?????c tr??ng c???a HyperX, m???t ph??? ki???n l?? t?????ng cho nh???ng
                                                bu???i game k??o d??i. </p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Mpow Air SE Blue</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>690.000???</span>
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
                                                <span>690.000???</span>
                                            </div>
                                            <p>Tai nghe gaming Mpow Air SE Blue l?? d??ng s???n ph???m tai nghe d??nh cho game
                                                th??? ?????n t??? nh?? s???n xu???t Mpow. V???i thi???t k??? nh??? g???n, nh??? k??m theo ???? l??
                                                c??ng ngh??? ??m thanh 3D Surround Sound h???a h???n s??? mang l???i tr???i nghi???m ??m
                                                thanh tuy???t v???i.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Tai nghe Razer BlackShark V2 Pro
                                                        ??? Rainbow Six Edition</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>5.590.000???</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">Tai nghe Razer BlackShark V2 Pro ???
                                                Rainbow Six Edition</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>5.590.000???</span>
                                            </div>
                                            <p>Razer h???p t??c v???i Ubisoft, c??ng b??? BlackShark V2 Pro ??? Six Siege Special
                                                Edition, tai nghe phi??n b???n limited c???a t???a game h??ng tri???u ng?????i ch??i ???
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>3.090.000???</span>
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
                                                <span>3.090.000???</span>
                                            </div>
                                            <p>Thi???t k??? ho??n to??n m???i v???i kh??? n??ng ??i???u ch???nh c??c t???n s??? ??m thanh cao ????
                                                ???????c c???p b???ng s??ng ch??? c?? c?? ch??? ho???t ?????ng gi???ng nh?? 3 tr??nh ??i???u khi???n
                                                ??m thanh trong 1, t???o ra ??m thanh s??ng h??n v???i ??m ba tr???m h??n v?? ??m tr???m
                                                m???nh m??? h??n.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>4.990.000???</span>
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
                                                <span>4.990.000???</span>
                                            </div>
                                            <p>Asus ROG Delta Gundam Edition l?? tai nghe ch??i game RGB ???????c c???p ph??p
                                                ch??nh th???c c???a GUNDAM v???i ESS Quad-DAC c???p hi-fi v?? h??? th???ng chi???u s??ng
                                                RGB h??nh tr??n c?? ?????u n???i USB-C ????? t????ng th??ch v???i PC, b???ng ??i???u khi???n
                                                tr?? ch??i v?? ??i???n tho???i di ?????ng</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
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
                                                    <span>2.990.000???</span>
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
                                                <span>2.990.000???</span>
                                            </div>
                                            <p>Tai nghe kh??ng d??y gaming Logitech G733 LIGHTSPEED Wireless White ???????c
                                                thi???t k??? mang ?????n s??? tho???i m??i cho game th???. ????y l?? m???u tai nghe kh??ng
                                                d??y ???????c trang b??? ??m thanh l???p th???, c??c b??? l???c ??m thanh v?? t??nh n??ng
                                                chi???u s??ng ti??n ti???n b???n c???n ????? nh??n, n??i v?? ch??i phong c??ch h??n bao gi???
                                                h???t.</p>
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
                                                <a class="action-plus-2 p-action-none" title="Th??m v??o gi??? h??ng"
                                                   href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Danh s??ch y??u th??ch" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Xem l?????t qua" data-toggle="modal"
                                                   data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Ajazz AX365 7.1 Black</a></h4>

                                                </div>
                                                <div class="product-price">
                                                    <span>450.000???</span>
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
                                                <span>450.000???</span>
                                            </div>
                                            <p>Ajazz AX365 7.1 Black l?? d??ng tai nghe gaming gi?? r??? ch???t l?????ng cao, ??m
                                                thanh 7.1 cho tr???i nghi???m t???t nh???t k??? c??? nghe nh???c, xem phim v?? ch??i
                                                game (?????c bi???t l?? c??c game FPS v???n y??u c???u r???t cao v??? ??m thanh v??m). Tai
                                                nghe over-ear n??n ph???n ch???p tai c?? k??ch th?????c to h??n nhi???u lo???i tai nghe
                                                kh??c. B??n ngo??i ph???n ???p tai ???????c trang b??? ????n LED b???t m???t.</p>
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
