<%@ page import="com.example.webpagejsp.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <jsp:useBean id="categoryID" class="com.example.webpagejsp.dao.ProductDao" scope="request"/>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PIXEL</title>
    <meta name="description" content="Pixel">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="pixel/assets/img/pix.png">

    <!-- all css here -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/animate.css">
    <link rel="stylesheet" href="./assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./assets/css/chosen.min.css">
    <link rel="stylesheet" href="./assets/css/jquery-ui.css">
    <link rel="stylesheet" href="./assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="./assets/css/themify-icons.css">
    <link rel="stylesheet" href="./assets/css/icofont.css">
    <link rel="stylesheet" href="./assets/fonts/icofont/icofont.min.css">
    <link rel="stylesheet" href="./assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="./assets/css/bundle.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/responsive.css">
    <script src="./assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<div class="wrapper">
    <!-- header start -->
    <jsp:include page="header.jsp"/>
    <div class="breadcrumb-area pt-230 pb-126" style="background-image: url(pixel/assets/img/banner/banner-4.png)">
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
                                    <c:forEach items="${categoryID.productCategory}" var="object">
                                        <li><a href="category?categoryId=${object.categoryID}"><i
                                                class="icofont-laptop-alt"></i> ${object.categoryName}</a>
                                        </li>
                                    </c:forEach>


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
                                    <li><a href="#"><img src="pixel/assets/img/icon-img/acer-icon.png"/></a></li>
                                    <li><a href="#"><img src="pixel/assets/img/icon-img/asus-icon.png"/></a></li>
                                    <li><a href="#"><img src="pixel/assets/img/icon-img/gigabyte-icon.png"/></a></li>
                                    <li><a href="#"><img src="pixel/assets/img/icon-img/dell-icon.png"/></a></li>
                                    <li><a href="#"><img src="pixel/assets/img/icon-img/lenovo-icon.png"/></a></li>
                                    <li><a href="#"><img src="pixel/assets/img/icon-img/msi-icon.png"/></a></li>
                                    <li><a href="#"><img src="pixel/assets/img/icon-img/hp-icon.png"/></a></li>
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

                                <c:forEach items="${categoryID.listProductHot}" var="obj">
                                    <div class="single-best-seller">
                                        <div class="best-seller-img">
                                            <a href="#"><img  src="${obj.image}" alt="" height="50%" width="50%"></a>
                                        </div>
                                        <div class="best-seller-text">
                                            <h3><a href="#">${obj.description}</a></h3>
                                            <span style="font-weight: bold; color: red">Gi??: ${obj.price}</span>
                                        </div>
                                    </div>
                                </c:forEach>


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
                                <a class="active" data-toggle="tab" href="#new-product">V??N PH??NG</a>
                                <a data-toggle="tab" href="#use-product">GAMING</a>
                                <a data-toggle="tab" href="#accessory-product">CAO C???P</a>
                            </div>
                            <div class="sorting sorting-bg-1">
                                <form>
                                    <select class="select">
                                        <option value="">S???p x???p</option>
                                        <option value="">S???p x???p m???i nh???t</option>
                                        <option value="">S???p x???p theo gi??</option>
                                    </select>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="grid-list-product-wrapper tab-content">
                        <div id="new-product" class="product-grid product-view tab-pane active">
                            <div class="row">
                                <%
                                    List<Product> productList = (List<Product>) request.getAttribute("listProd");
                                %>

                                <c:forEach items="<%=productList%>" var="object">
                                    <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                        <div class="product-wrapper mb-35">

                                            <div class="product-img">
                                                <a href="pixel/laptop1.html">
                                                    <img src="${object.image}" alt="">
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
                                                        <h4><a href="pixel/laptop1.html">${object.name}</a></h4>
                                                        <div class="product-price">
                                                            <span>${object.price}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-list-details">
                                                <h2><a href="pixel/laptop1.html">${object.name}</a>
                                                </h2>
                                                <div class="quick-view-rating">
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                </div>
                                                <div class="product-price">
                                                    <span>${object.price}</span>
                                                </div>
                                                <p>${object.description}</p>
                                                <div class="shop-list-cart">
                                                    <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o
                                                        gi???
                                                        h??ng</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>


                            </div>
                        </div>
                        <div id="use-product" class="product-grid product-view tab-pane">
                            <div class="row">
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/laptop2.html">
                                                <img src="pixel/assets/img/product/zx1.png" alt="">
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
                                                    <h4><a href="pixel/laptop2.html">Gigabyte AERO 15 OLED YD
                                                        73S1624GH</a></h4>
                                                    <div class="product-price">
                                                        <span>76.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/laptop2.html">Gigabyte AERO 15 OLED YD 73S1624GH</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>76.990.000??</span>
                                            </div>
                                            <p>Laptop Gigabyte AERO 15 OLED YD 73S1624GH l?? chi???c laptop cao c???p thu???c
                                                AERO Series t??? Gigabyte. L?? nh???ng s???n ph???m s??? m??? ra nh???ng b?????c ti???n ?????u
                                                ti??n c???a Gigabyte v??o kh??? n??ng chinh ph???c ng?????i d??ng laptop c???n s??? s??ng
                                                t???o v?? nh???ng c??ng vi???c li??n quan ?????n ????? h???a, h??nh ???nh.Ngo???i h??nh sang
                                                tr???ng c??ng s???c m???nh hi???u n??ng ???n t?????ng s??? ??em l???i tr???i nghi???m t???t nh???t
                                                d??nh cho c??ng vi???c c???a b???n.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/zc1.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">Lenovo IdeaPad Gaming 3
                                                        15ARH05 82EY00JXVN</a></h4>
                                                    <div class="product-price">
                                                        <span>18.690.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">Lenovo IdeaPad Gaming 3 15ARH05
                                                82EY00JXVN</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>

                                            <div class="product-price">
                                                <span>18.690.000??</span>
                                            </div>
                                            <p>Laptop Lenovo IdeaPad Gaming 3 15ARH05 82EY00JXVN mang ?????n v??? ngo??i v??
                                                c??ng c???ng c??p v?? m???nh m??? ???????c t???o n??n t??? ch???t li???u nh???a cao c???p t???o n??n
                                                ????? b???n b???, ch???c ch???n nh???t ?????nh. C??c ???????ng n??t tr??n Lenovo IdeaPad Gaming
                                                3 15ARH05 82EY00JXVN t???o n??n v??? ngo??i gaming.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/zv1.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">Acer Nitro 5 AN515 45
                                                        R3SM</a></h4>

                                                    <div class="product-price">
                                                        <span>21.390.000??</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">Acer Nitro 5 AN515 45 R3SM</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>21.390.000??</span>
                                            </div>
                                            <p>Acer Nitro 5 2021 AN515 45 R3SM t??ch h???p nh???ng ???v?? kh????? m???i nh???t. Bao g???m
                                                CPU AMD Ryzen 5 5600H, VGA NVIDIA GeForce GTX 1650 cho hi???u n??ng x??? l??
                                                m???nh m???.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/zz1.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">Acer Aspire 7 A715 42G
                                                        R4ST</a></h4>
                                                    <div class="product-price">
                                                        <span>18.490.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">Acer Aspire 7 A715 42G R4ST</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>18.490.000??</span>
                                            </div>
                                            <p>Acer Aspire 7 2020 A715 42G R4ST t??ch h???p card ????? h???a NVIDIA GTX1650 4GB
                                                GDDR6 ra m???t n??m 2020, l?? laptop ch??i game t???t nh???t ph??n kh??c. Kh??ng ch???
                                                v???y, phi??n b???n n??y c??n mang thi???t k??? m???i g???n g??ng v?? sexy h??n. Aspire 7
                                                2020 ???????c trang b??? h??? th???ng t???n nhi???t m???nh m??? b???c nh???t trong ph??n kh??c,
                                                th???a h?????ng c??ng ngh??? t??? c??c d??ng m??y cao c???p h??n c???a Acer, c??ng c???u h??nh
                                                ?????nh cao, gi??p cho ng?????i d??ng c?? th??? v???a ch??i game v???a l??m vi???c ??? b???t c???
                                                l??c n??o</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/az1.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">ASUS TUF Gaming F15 FX506LH
                                                        HN002T</a></h4>
                                                    <div class="product-price">
                                                        <span>20.490.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">ASUS TUF Gaming F15 FX506LH
                                                HN002T</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>20.490.000??</span>
                                            </div>
                                            <p>Laptop cao c???p v?????t tr???i v???i CPU Intel Core i5-10300H v?? GPU GeForce GTX???
                                                1650 m???nh m???, c??c t???a game h??nh ?????ng s??? ch???y nhanh, m?????t m?? v?? khai th??c
                                                t???i ??a m??n h??nh IPS t???n s??? qu??t 144Hz. M???c d?? c?? khung m??y di ?????ng v??
                                                nh??? h??n so v???i th??? h??? ti???n nhi???m, chi???c laptop n??y v???n c?? dung l?????ng pin
                                                (48Wh/90Wh) cho th???i l?????ng pin d??i. H??? th???ng t???n nhi???t t??? l??m s???ch hi???u
                                                qu??? k???t h???p v???i ????? b???n ?????t chu???n qu??n ?????i c???a TUF gi??p chi???c m??y tr???
                                                th??nh chi???n binh b???n b??? ????ng tin c???y cho c??c game th???.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/xx1.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">Lenovo Legion 5 15ARH05
                                                        82B500GTVN</a></h4>
                                                    <div class="product-price">
                                                        <span>25.290.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">Lenovo Legion 5 15ARH05
                                                82B500GTVN</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>25.290.000??</span>
                                            </div>
                                            <p>Ch??ng ta c?? m???t m??n h??nh l???n 15.6??? chu???n m??u sRGB 100% , t???m n???n IPS ch???t
                                                l?????ng cao c??ng kh??? n??ng ch???ng ch??i v?? t???n s??? qu??t nhanh l??n ?????n 144Hz.
                                                B???t ph?? m???i gi???i h???n gaming c??ng nh?? l??m vi???c.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/zxc1.png" alt="">
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
                                                    <h4><a href="#">Asus ROG Strix G15 G513IC HN002T</a></h4>
                                                    <div class="product-price">
                                                        <span>25.690.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Asus ROG Strix G15 G513IC HN002T</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>25.690.000??</span>
                                            </div>
                                            <p>Phong c??ch th??? thao th??? hi???n qua ba m??u s???c kh??c bi???t gi??p n??ng t???m di???n
                                                m???o v?? phong c??ch c???a b???n. Nh???ng phi??n b???n v???i m??u ??en nguy??n b???n
                                                Original Black, x??m c???c ch???t Eclipse Gray, v?? Electro Punk r???c r??? s??? th???
                                                hi???n phong c??ch c???a b???n. Ch??i game t???i b???t k??? ????u v???i khung m??y c?? k??ch
                                                th?????c nh??? h??n ?????n 7% v?? g???n nh??? h??n nh???ng th??? h??? ti???n nhi???m. Nh???ng bi???u
                                                t?????ng v?? ???????ng c???t tinh t??? t?? ??i???m b??n ngo??i m??y v?? th???m ch?? th??m ph???n
                                                thu h??t ??? ph???n ????? m??y, t???o ??i???m nh???n kh??c bi???t t??? m???i g??c ?????. L??m b???ng
                                                s??ng cho m??i tr?????ng xung quanh b???n v???i h??? th???ng Aura Sync n???i b???t t???
                                                logo kim lo???i c???a ROG, d???c b??n ph??m c?? ????n n???n t???i d???i ????n chi???u s??ng ???
                                                m???t ????y.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/zxx1.png" alt="">
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
                                                    <h4><a href="#">Asus ROG Zephyrus G14 GA401QC HZ021T</a></h4>
                                                    <div class="product-price">
                                                        <span>35.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Asus ROG Zephyrus G14 GA401QC HZ021T</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>35.990.000??</span>
                                            </div>
                                            <p>Asus ROG Zephyrus G14 GA401QC HZ021T h???p kim magie-nh??m v???i c??c chi ti???t
                                                gia c??? d???ng t??? ong gi??? cho khung m??y v???a ch???c v???a nh???.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/zzx1.png" alt="">
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
                                                    <h4><a href="#">MSI GF63 Thin 9SCSR 1057VN</a></h4>
                                                    <div class="product-price">
                                                        <span>22.490.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">MSI GF63 Thin 9SCSR 1057VN</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>22.490.000??</span>
                                            </div>
                                            <p>Thi???t k??? ???? ?????i t??? phong c??ch b???n h???m h??? sang phong c??ch thanh l???ch, t???i
                                                gi???n v?? di ?????ng h??n. ????y l?? chi???c laptop gaming c?? c??n n???ng nh??? nh???t
                                                trong ph??n kh??c ch??? ch??a ?????n 1,9kg (N???ng 1.86kg, m???ng 2,7mm). V???i m???t
                                                tr??n v??? kim lo???i x?????c v?? thi???t k??? b??n ph??m li???n k???, m??t d?????i v???i khe
                                                th??ng gi?? h??nh ch??? X ???n v?? c??ng ?????c ????o. M???t l??ng ???????c thi???t k??? theo
                                                phong c??ch t???i gi???n v???i ch??? 1 logo r???ng x????ng m??u ????? n???m ??? gi???a. ?????n c???
                                                ph???n ?????y m??y c??c chi ti???t ???????c thi???t k??? c???u k??, ???????ng n??t g??c c???nh, phay
                                                x?????c r???t c?? t??nh. </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/msi1.png" alt="">
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
                                                    <h4><a href="#">MSI Creator M16 A11UD 694VN</a></h4>
                                                    <div class="product-price">
                                                        <span>39.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">MSI Creator M16 A11UD 694VN</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>39.990.000??</span>
                                            </div>
                                            <p>V???i b??? vi x??? l?? Intel core i7 th??? h??? th??? 11 m???i nh???t , Creator M16 cung
                                                c???p t???n s??? turbo l??i k??p l??n ?????n 4,6 GHz, mang ?????n cho b???n s???c m???nh ??a
                                                th??? h??? ????? ????p ???ng c??c t??c v??? x??? l?? ??a nhi???m v?? chuy??n nghi???p c???a b???n.
                                                Creator M16 mang ?????n cho b???n nhi???u th???i gian h??n ????? theo ??u???i n??ng th??
                                                l?? t?????ng t??? b??? x??? l?? t???t nh???t.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/ace.png" alt="">
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
                                                    <h4><a href="#">Acer Nitro 5 Eagle AN515 57 720A</a></h4>
                                                    <div class="product-price">
                                                        <span>28.490.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Acer Nitro 5 Eagle AN515 57 720A</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>28.490.000??</span>
                                            </div>
                                            <p>V???i s??? k???t h???p t??? CPU Core i7 -11800H v?? GPU NVIDIA?? GeForce RTX??? 3050Ti,
                                                laptop Gaming Acer Nitro 5 Eagle AN515 57 720A s??? cho ch??ng ta hi???u n??ng
                                                t???t ????? x??? l?? c??c c??ng vi???c ????? h???a ????n gi???n tr??n c??c ph???n m???m chuy??n
                                                d???ng, t???c ????? x??? l?? th??ng tin c??ng t????ng ?????i nhanh v?? m?????t. </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/vi.png" alt="">
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
                                                    <h4><a href="#">Asus VivoBook Flip TM420IA EC227T</a></h4>
                                                    <div class="product-price">
                                                        <span>19.490.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Asus VivoBook Flip TM420IA EC227T</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>19.490.000??</span>
                                            </div>
                                            <p>????y l?? m???t m???u laptop c?? th??? chuy???n ?????i, v???a l?? m???u laptop th???i trang v???a
                                                l?? m???t m??y t??nh b???ng ?????y ti???n ??ch. C??ng v???i ???? c??n s??? h???u hi???u n??ng n??
                                                cho ph??p ng?????i d??ng d??? d??ng th???c hi???n c??c t??c v??? h??ng ng??y c??ng nh?? th???a
                                                s???c s??ng t???o </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/gi.png" alt="">
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
                                                    <h4><a href="#">Gigabyte AORUS 15P KD 72S1223GH</a></h4>
                                                    <div class="product-price">
                                                        <span>45.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Gigabyte AORUS 15P KD 72S1223GH</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>45.990.000??</span>
                                            </div>
                                            <p>Laptop Gigabyte AORUS 15P KD 72S1223GH ???????c thi???t k??? ????? ch??i game ???????c
                                                trang b??? Intel Core i7-11800H 45W v???i 8 l??i v?? 16 lu???ng v?? GPU RTX 30
                                                series (l??n ?????n 130W). B??n trong khung m??y m???ng ?????p m???t, thi???t k??? t???n
                                                nhi???t WINDFORCE Infinity ?????c quy???n ???????c t???i ??u h??a b???ng c??ch l??m d??y c??c
                                                ???ng d???n gi??p hi???u su???t t???ng th??? c???a GPU t??ng 30% so v???i th??? h??? tr?????c.
                                                C??ng v???i panel Full HD 240Hz mang ?????n tr???i nghi???m ch??i game ?????m ch??m
                                                ?????nh cao, 100% c??ng ngh??? ti??n ti???n ?????u ???????c s??? d???ng tr??n m???i b??? ph???n c???a
                                                m??y.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="accessory-product" class="product-grid product-view tab-pane">
                            <div class="row">
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/laptop3.html">
                                                <img src="pixel/assets/img/product/za1.png" alt="">
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
                                                    <h4><a href="pixel/laptop3.html">ASUS ZenBook UX325EA KG363T</a>
                                                    </h4>
                                                    <div class="product-price">
                                                        <span>22.190.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/laptop3.html">ASUS ZenBook UX325EA KG363T</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>22.190.000??</span>
                                            </div>
                                            <p>Chi???c ZenBook 13 tuy???t ?????p ???? tr??? n??n g???n nh??? h??n bao gi??? h???t. S???n ph???m
                                                m???ng h??n, nh??? h??n v?? g???n g??ng kh?? tin nh??ng v???n ???????c trang b??? HDMI,
                                                Thunderbolt??? 4 USB-C??, USB Type-A v?? ?????u ?????c th??? MicroSD cho s???c m???nh
                                                linh ho???t v?????t tr???i. ???????c thi???t k??? ????? mang l???i hi???u n??ng m???nh m???,
                                                ZenBook 13 l?? l???a ch???n ho??n h???o cho phong c??ch s???ng n??ng ?????ng.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/zs1.png" alt="">
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
                                                    <h4><a href="#">LENOVO ThinkPad L13 Gen 2 20VH004AVA</a></h4>
                                                    <div class="product-price">
                                                        <span>27.290.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">LENOVO ThinkPad L13 Gen 2 20VH004AVA</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>27.290.000??</span>
                                            </div>
                                            <p>M???c d?? s??? h???u thi???t k??? kh??ng qu?? n???i b???t v???i m??u ??en quen thu???c, L13 l???i
                                                cho m???t thi???t k??? kh?? m???ng so v???i nh???ng chi???c ThinkPad kh??c. 4 c???nh vi???n
                                                c???a m??y ???????c l??m vu??ng v???n, ch???c ch???n. Tuy v???y ki???u thi???t k??? n??y c?? ph???n
                                                h??i k??n ph??i n???. ????? m???ng c???a m??y v??o kho???ng 1.76 cm, r???t v???a v???n khi cho
                                                v??o m???t chi???c balo c??? v???a. ThinkPad L13 Gen 2 v???n s??? d???ng v???t li???u ch???
                                                y???u l?? carbon k???t h???p s???i thu??? tinh, t???o s??? ch???c ch???n, nh??ng v???n mang
                                                n??t nh??? nh??ng. M???t l??ng v???n ???????c ph??? l???p soft touch m???n, cho c???m gi??c
                                                m???m m???i khi c???m n???m.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/xc1.png" alt="">
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
                                                    <h4><a href="#">Asus Vivobook Pro 15 OLED M3500QC L1105T</a></h4>
                                                    <div class="product-price">
                                                        <span>24.690.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Asus Vivobook Pro 15 OLED M3500QC L1105T</a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>24.690.000??</span>
                                            </div>
                                            <p>Asus VivoBook Pro 15 s??? h???u m??n h??nh vi???n m???ng 15.6 inch v???i ????? ph??n gi???i
                                                Full HD (1920 x 1080) c??ng m??n h??nh OLED mang ?????n nh???ng h??nh ???nh r?? n??t
                                                c?? ????? t????ng ph???n v?? ??nh s??ng cao, ?????ng th???i c?? kh??? n??ng t???o m??u ??en s??u
                                                h??n v???i g??c nh??n ???????c r???ng m???, cho b???n nh???ng tr???i nghi???m tr???n v???n nh??ng
                                                v???n gi??p ti???t ki???m ??i???n n??ng t???i ??a.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/mac1.png" alt="">
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
                                                    <h4><a href="#">Macbook Air 2020 M1 7GPU 16GB 512GB Z127000DF ???
                                                        Silver</a></h4>
                                                    <div class="product-price">
                                                        <span>36.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Macbook Air 2020 M1 7GPU 16GB 512GB Z127000DF ??? Silver</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>36.990.000??</span>
                                            </div>
                                            <p>Macbook Air 13 2020 M1 7GPU 16GB 256GB Z127000DE l?? chi???c laptop ?????n t???
                                                h??ng c??ng ngh??? h??ng ?????u Apple. V???i thi???t k??? m???ng h??n, nh??? h??n, Macbook
                                                Air 13 2020 ??em ?????n cho ng?????i d??ng v??n ph??ng th??m m???t l???a ch???n trong
                                                ph??n kh??c laptop v??n ph??ng m???ng nh???.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="pixel/assets/img/product/ma1.png" alt="">
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
                                                    <h4><a href="#">Macbook Air 2020 M1 7GPU 16GB 512GB Z12A00050 ???
                                                        Gold</a></h4>
                                                    <div class="product-price">
                                                        <span>36.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Macbook Air 2020 M1 7GPU 16GB 512GB Z12A00050 ??? Gold</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>36.990.000??</span>
                                            </div>
                                            <p>Trong c??ng 1 n??m MacBook Air 2020 m???i ???????c Apple n??ng c???p ra m???t v???i s???
                                                xu???t hi???n c???a con Chip Apple M1 ???????c ph??t tri???n v???i ki???n tr??c ARM m???i,
                                                nhanh h??n 98% PC, pin 18 gi???. ????y l?? chi???c MacBook Air ?????u ti??n v?? c??ng
                                                l?? chi???c m??y Mac ?????u ti??n c???a Apple trong vi???c chuy???n d???ch sang h??? chip
                                                ARM. </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/ac.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">Acer Swift 3 Evo SF314 511
                                                        59LV</a></h4>
                                                    <div class="product-price">
                                                        <span>20.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">Acer Swift 3 Evo SF314 511 59LV</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>20.990.000??</span>
                                            </div>
                                            <p> Laptop Acer Swift 3 Evo SF314 511 59LV l?? m???t s??? l???a ch???n h??ng ?????u cho
                                                ng?????i d??ng ph??n kh??c Laptop Ph??? Th??ng ??? H???c T???p ??? V??n Ph??ng, mang thi???t
                                                k??? g???n nh???, sang tr???ng c??ng hi???u n??ng v?????t tr???i t??? vi x??? l?? Intel th??? h???
                                                11 t??n ti???n.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/de.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">Dell Inspiron 14 5406
                                                        70232602</a></h4>
                                                    <div class="product-price">
                                                        <span>21.590.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">Dell Inspiron 14 5406 70232602</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>21.590.000??</span>
                                            </div>
                                            <p>Laptop Dell Inspiron 14 5406 70232602 s??? h???u v??? ngo??i sang tr???ng v???i l???p
                                                m??u Silver qu?? ph??i, v?? c??ng n???i b???t trong m??i tr?????ng v??n ph??ng v?? h???c
                                                t???p. C??ng tr???ng l?????ng ch??? c?? 1.72 kg, Dell Inspiron 14 v?? c??ng th??ch h???p
                                                cho di chuy???n, b???n c?? th??? tho???i m??i ?????t chi???c laptop g???n g??ng trong balo
                                                v?? ??i b???t k?? ????u. Trang b??? th??m thi???t k??? b???n l??? th??ng minh, cho ph??p
                                                n??ng b??n ph??m c???a laptop Dell Inspiron 14 5406 70232602 gi??p ??em l???i c???m
                                                gi??c g?? ph??m tho???i m??i nh???t, thu???n ti???n nh???t.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/asu.png">
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
                                                    <h4><a href="pixel/product-details.html">ASUS ExpertBook P2451FA
                                                        EK0262R</a></h4>
                                                    <div class="product-price">
                                                        <span>24.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">ASUS ExpertBook P2451FA EK0262R</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>24.990.000??</span>
                                            </div>
                                            <p>ASUS ExpertBook P2451FA K0262R l?? s???n ph???m ho??n h???o ????? mang l???i hi???u to??n
                                                di???n ????? gi??p b???n v?????t qua m???t ng??y l??m vi???c. M??y t??nh x??ch tay si??u nh???
                                                k???t h???p c??ng b???n l??? ph???ng 180 ????? ????? b???n c?? th??? ?????t laptop tr??n b???t k???
                                                m???t ph???ng n??o, c???c k??? l?? t?????ng ????? chia s??? n???i dung tr??n m??n h??nh v???i
                                                ng?????i kh??c.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/lg.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">LG Gram 2020 14Z90N
                                                        V.AR52A5</a></h4>
                                                    <div class="product-price">
                                                        <span> 29.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">LG Gram 2020 14Z90N V.AR52A5</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span> 29.990.000??</span>
                                            </div>
                                            <p>D??ng LG Gram c???a LG v???n n???i ti???ng nh??? tr???ng l???c c???c nh??? ch??? d?????i 1kg ???
                                                th??? h??? ?????u ti??n 14 inch ??i k??m th???i l?????ng pin t???t. ??? phi??n b???n 2020,
                                                laptop LG Gram 14Z90N-V.AR52A5 l???i ti???p t???c ph??t huy truy???n th???ng n??y,
                                                ?????ng th???i laptop LG c??ng n??ng c???p hi???u n??ng x??? l?? v???i con chip Intel
                                                Core th??? h??? th??? 10.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/sw.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">Acer Swift 3S SF314 42
                                                        R5Z6</a></h4>
                                                    <div class="product-price">
                                                        <span> 18.190.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">Acer Swift 3S SF314 42 R5Z6</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span> 18.190.000??</span>
                                            </div>
                                            <p>Laptop Acer Swift 3 SF314 42 R5Z6 l?? m???t trong nh???ng m???u laptop m???ng nh???
                                                ph?? h???p d??nh cho gi???i v??n ph??ng. V???i thi???t k??? nh???, g???n v???i h???a ti???t t???i
                                                gi???n nh??ng kh??ng k??m ph???n sang tr???ng chi???c Acer Swift 3 gi??p t???o cho
                                                ng?????i d??ng c???m gi??c ???????c s??? cao c???p t??? s???n ph???m. </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/ze.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">Asus ZenBook 14 UX425EA
                                                        BM069T</a></h4>
                                                    <div class="product-price">
                                                        <span> 22.990.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">Asus ZenBook 14 UX425EA BM069T</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span> 22.990.000??</span>
                                            </div>
                                            <p>Thi???t k??? ho??n to??n b???ng kim lo???i, si??u nh???, m???ng v?? g???n g??ng c???a Asus
                                                ZenBook 14 khi???n n?? tr??? th??nh ng?????i b???n ?????ng h??nh l?? t?????ng trong nh???ng
                                                chuy???n c??ng t??c. ???? c??ng l?? chi???c laptop 14-inch m???ng nh???t th??? gi???i v???i
                                                ?????y ????? c??c c???ng k???t n???i ??? bao g???m HDMI v?? USB Type-A ??? ????? b???n c?? th??? t???n
                                                h?????ng t??nh n??ng k???t n???i linh ho???t d?? ??? b???t k??? ????u.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="pixel/product-details.html">
                                                <img src="pixel/assets/img/product/hp.png" alt="">
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
                                                    <h4><a href="pixel/product-details.html">HP Envy 13 BA1027TU
                                                        2K0B1PA</a></h4>
                                                    <div class="product-price">
                                                        <span> 22.590.000??</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="pixel/product-details.html">HP Envy 13 BA1027TU 2K0B1PA</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span> 22.590.000??</span>
                                            </div>
                                            <p>HP ENVY 13-ba1027TU 2K0B1PA s??? h???u m???t thi???t k??? tr??? trung, n??ng ?????ng ch???c
                                                ch???n s??? mang ?????n cho b???n s??? t??? tin nh???t khi c???m tr??n tay. ????y l?? chi???c
                                                laptop k???t h???p ho??n h???o c???a m???t chi???c laptop v??n ph??ng v???i th???i trang
                                                hi???n ?????i.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Th??m v??o gi???
                                                    h??ng</a>
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
    <jsp:include page="footer.jsp"/>


</div>
<!-- all js here -->
<script src="pixel/assets/js/vendor/jquery-1.12.0.min.js"></script>
<script src="pixel/assets/js/popper.js"></script>
<script src="pixel/assets/js/bootstrap.min.js"></script>
<script src="pixel/assets/js/isotope.pkgd.min.js"></script>
<script src="pixel/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="pixel/assets/js/jquery.counterup.min.js"></script>
<script src="pixel/assets/js/waypoints.min.js"></script>
<script src="pixel/assets/js/ajax-mail.js"></script>
<script src="pixel/assets/js/owl.carousel.min.js"></script>
<script src="pixel/assets/js/plugins.js"></script>
<script src="pixel/assets/js/main.js"></script>
</body>
</html>
