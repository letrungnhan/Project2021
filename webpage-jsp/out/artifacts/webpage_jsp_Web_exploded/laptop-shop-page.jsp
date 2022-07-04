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
                                    <c:forEach items="${categoryID.productCategory}" var="object">
                                        <li><a href="category?categoryId=${object.categoryID}"><i
                                                class="icofont-laptop-alt"></i> ${object.categoryName}</a>
                                        </li>
                                    </c:forEach>


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
                            <h3 class="sidebar-widget">Sản phẩm bán chạy nhất tháng</h3>
                            <div class="best-seller">
                                <c:forEach items="${categoryID.listProductHot}" var="obj">
                                    <div class="single-best-seller">
                                        <div class="best-seller-img">
                                            <a href="#"><img  src="${obj.image}" alt="" height="50%" width="50%"></a>
                                        </div>
                                        <div class="best-seller-text">
                                            <h3><a href="#">${obj.description}</a></h3>
                                            <span style="font-weight: bold; color: red">Giá: ${obj.price}</span>
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
                                <a class="active" data-toggle="tab" href="#new-product">VĂN PHÒNG</a>
                                <a data-toggle="tab" href="#use-product">GAMING</a>
                                <a data-toggle="tab" href="#accessory-product">CAO CẤP</a>
                            </div>
                            <div class="sorting sorting-bg-1">
                                <form>
                                    <select class="select">
                                        <option value="">Sắp xếp</option>
                                        <option value="">Sắp xếp mới nhất</option>
                                        <option value="">Sắp xếp theo giá</option>
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
                                                    <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào
                                                        giỏ
                                                        hàng</a>
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
                                                    <h4><a href="pixel/laptop2.html">Gigabyte AERO 15 OLED YD
                                                        73S1624GH</a></h4>
                                                    <div class="product-price">
                                                        <span>76.990.000đ</span>
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
                                                <span>76.990.000đ</span>
                                            </div>
                                            <p>Laptop Gigabyte AERO 15 OLED YD 73S1624GH là chiếc laptop cao cấp thuộc
                                                AERO Series từ Gigabyte. Là những sản phẩm sẽ mở ra những bước tiến đầu
                                                tiên của Gigabyte vào khả năng chinh phục người dùng laptop cần sự sáng
                                                tạo và những công việc liên quan đến đồ họa, hình ảnh.Ngoại hình sang
                                                trọng cùng sức mạnh hiệu năng ấn tượng sẽ đem lại trải nghiệm tốt nhất
                                                dành cho công việc của bạn.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">Lenovo IdeaPad Gaming 3
                                                        15ARH05 82EY00JXVN</a></h4>
                                                    <div class="product-price">
                                                        <span>18.690.000đ</span>
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
                                                <span>18.690.000đ</span>
                                            </div>
                                            <p>Laptop Lenovo IdeaPad Gaming 3 15ARH05 82EY00JXVN mang đến vẻ ngoài vô
                                                cùng cứng cáp và mạnh mẽ được tạo nên từ chất liệu nhựa cao cấp tạo nên
                                                độ bền bỉ, chắc chắn nhất định. Các đường nét trên Lenovo IdeaPad Gaming
                                                3 15ARH05 82EY00JXVN tạo nên vẻ ngoài gaming.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">Acer Nitro 5 AN515 45
                                                        R3SM</a></h4>

                                                    <div class="product-price">
                                                        <span>21.390.000đ</span>
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
                                                <span>21.390.000đ</span>
                                            </div>
                                            <p>Acer Nitro 5 2021 AN515 45 R3SM tích hợp những “vũ khí” mới nhất. Bao gồm
                                                CPU AMD Ryzen 5 5600H, VGA NVIDIA GeForce GTX 1650 cho hiệu năng xử lý
                                                mạnh mẽ.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">Acer Aspire 7 A715 42G
                                                        R4ST</a></h4>
                                                    <div class="product-price">
                                                        <span>18.490.000đ</span>
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
                                                <span>18.490.000đ</span>
                                            </div>
                                            <p>Acer Aspire 7 2020 A715 42G R4ST tích hợp card đồ họa NVIDIA GTX1650 4GB
                                                GDDR6 ra mắt năm 2020, là laptop chơi game tốt nhất phân khúc. Không chỉ
                                                vậy, phiên bản này còn mang thiết kế mới gọn gàng và sexy hơn. Aspire 7
                                                2020 được trang bị hệ thống tản nhiệt mạnh mẽ bậc nhất trong phân khúc,
                                                thừa hưởng công nghệ từ các dòng máy cao cấp hơn của Acer, cùng cấu hình
                                                đỉnh cao, giúp cho người dùng có thể vừa chơi game vừa làm việc ở bất cứ
                                                lúc nào</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">ASUS TUF Gaming F15 FX506LH
                                                        HN002T</a></h4>
                                                    <div class="product-price">
                                                        <span>20.490.000đ</span>
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
                                                <span>20.490.000đ</span>
                                            </div>
                                            <p>Laptop cao cấp vượt trội với CPU Intel Core i5-10300H và GPU GeForce GTX™
                                                1650 mạnh mẽ, các tựa game hành động sẽ chạy nhanh, mượt mà và khai thác
                                                tối đa màn hình IPS tần số quét 144Hz. Mặc dù có khung máy di động và
                                                nhỏ hơn so với thế hệ tiền nhiệm, chiếc laptop này vẫn có dung lượng pin
                                                (48Wh/90Wh) cho thời lượng pin dài. Hệ thống tản nhiệt tự làm sạch hiệu
                                                quả kết hợp với độ bền đạt chuẩn quân đội của TUF giúp chiếc máy trở
                                                thành chiến binh bền bỉ đáng tin cậy cho các game thủ.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">Lenovo Legion 5 15ARH05
                                                        82B500GTVN</a></h4>
                                                    <div class="product-price">
                                                        <span>25.290.000đ</span>
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
                                                <span>25.290.000đ</span>
                                            </div>
                                            <p>Chúng ta có một màn hình lớn 15.6″ chuẩn màu sRGB 100% , tấm nền IPS chất
                                                lượng cao cùng khả năng chống chói và tần số quét nhanh lên đến 144Hz.
                                                Bứt phá mọi giới hạn gaming cũng như làm việc.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">Asus ROG Strix G15 G513IC HN002T</a></h4>
                                                    <div class="product-price">
                                                        <span>25.690.000đ</span>
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
                                                <span>25.690.000đ</span>
                                            </div>
                                            <p>Phong cách thể thao thể hiện qua ba màu sắc khác biệt giúp nâng tầm diện
                                                mạo và phong cách của bạn. Những phiên bản với màu đen nguyên bản
                                                Original Black, xám cực chất Eclipse Gray, và Electro Punk rực rỡ sẽ thể
                                                hiện phong cách của bạn. Chơi game tại bất kỳ đâu với khung máy có kích
                                                thước nhỏ hơn đến 7% và gọn nhẹ hơn những thế hệ tiền nhiệm. Những biểu
                                                tượng và đường cắt tinh tế tô điểm bên ngoài máy và thậm chí thêm phần
                                                thu hút ở phần đế máy, tạo điểm nhấn khác biệt từ mọi góc độ. Làm bừng
                                                sáng cho môi trường xung quanh bạn với hệ thống Aura Sync nổi bật từ
                                                logo kim loại của ROG, dọc bàn phím có đèn nền tới dải đèn chiếu sáng ở
                                                mặt đáy.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">Asus ROG Zephyrus G14 GA401QC HZ021T</a></h4>
                                                    <div class="product-price">
                                                        <span>35.990.000đ</span>
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
                                                <span>35.990.000đ</span>
                                            </div>
                                            <p>Asus ROG Zephyrus G14 GA401QC HZ021T hợp kim magie-nhôm với các chi tiết
                                                gia cố dạng tổ ong giữ cho khung máy vừa chắc vừa nhẹ.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">MSI GF63 Thin 9SCSR 1057VN</a></h4>
                                                    <div class="product-price">
                                                        <span>22.490.000đ</span>
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
                                                <span>22.490.000đ</span>
                                            </div>
                                            <p>Thiết kế đã đổi từ phong cách bản hầm hố sang phong cách thanh lịch, tối
                                                giản và di động hơn. Đây là chiếc laptop gaming có cân nặng nhẹ nhất
                                                trong phân khúc chỉ chưa đến 1,9kg (Nặng 1.86kg, mỏng 2,7mm). Với mặt
                                                trên vỏ kim loại xước và thiết kế bàn phím liền kề, măt dưới với khe
                                                thông gió hình chữ X ẩn vô cùng độc đáo. Mặt lưng được thiết kế theo
                                                phong cách tối giản với chỉ 1 logo rồng xương màu đỏ nằm ở giữa. Đến cả
                                                phần đấy máy các chi tiết được thiết kế cầu kì, đường nét góc cạnh, phay
                                                xước rất cá tính. </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">MSI Creator M16 A11UD 694VN</a></h4>
                                                    <div class="product-price">
                                                        <span>39.990.000đ</span>
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
                                                <span>39.990.000đ</span>
                                            </div>
                                            <p>Với bộ vi xử lý Intel core i7 thế hệ thứ 11 mới nhất , Creator M16 cung
                                                cấp tần số turbo lõi kép lên đến 4,6 GHz, mang đến cho bạn sức mạnh đa
                                                thế hệ để đáp ứng các tác vụ xử lý đa nhiệm và chuyên nghiệp của bạn.
                                                Creator M16 mang đến cho bạn nhiều thời gian hơn để theo đuổi nàng thơ
                                                lý tưởng từ bộ xử lý tốt nhất.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">Acer Nitro 5 Eagle AN515 57 720A</a></h4>
                                                    <div class="product-price">
                                                        <span>28.490.000đ</span>
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
                                                <span>28.490.000đ</span>
                                            </div>
                                            <p>Với sự kết hợp từ CPU Core i7 -11800H và GPU NVIDIA® GeForce RTX™ 3050Ti,
                                                laptop Gaming Acer Nitro 5 Eagle AN515 57 720A sẽ cho chúng ta hiệu năng
                                                tốt để xử lý các công việc đồ họa đơn giản trên các phần mềm chuyên
                                                dụng, tốc độ xử lý thông tin cũng tương đối nhanh và mượt. </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">Asus VivoBook Flip TM420IA EC227T</a></h4>
                                                    <div class="product-price">
                                                        <span>19.490.000đ</span>
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
                                                <span>19.490.000đ</span>
                                            </div>
                                            <p>Đây là một mẫu laptop có thể chuyển đổi, vừa là mẫu laptop thời trang vừa
                                                là một máy tính bảng đầy tiện ích. Cùng với đó còn sở hữu hiệu năng nó
                                                cho phép người dùng dễ dàng thực hiện các tác vụ hàng ngày cũng như thỏa
                                                sức sáng tạo </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">Gigabyte AORUS 15P KD 72S1223GH</a></h4>
                                                    <div class="product-price">
                                                        <span>45.990.000đ</span>
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
                                                <span>45.990.000đ</span>
                                            </div>
                                            <p>Laptop Gigabyte AORUS 15P KD 72S1223GH được thiết kế để chơi game được
                                                trang bị Intel Core i7-11800H 45W với 8 lõi và 16 luồng và GPU RTX 30
                                                series (lên đến 130W). Bên trong khung máy mỏng đẹp mắt, thiết kế tản
                                                nhiệt WINDFORCE Infinity độc quyền được tối ưu hóa bằng cách làm dày các
                                                ống dẫn giúp hiệu suất tổng thể của GPU tăng 30% so với thế hệ trước.
                                                Cùng với panel Full HD 240Hz mang đến trải nghiệm chơi game đắm chìm
                                                đỉnh cao, 100% công nghệ tiên tiến đều được sử dụng trên mọi bộ phận của
                                                máy.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/laptop3.html">ASUS ZenBook UX325EA KG363T</a>
                                                    </h4>
                                                    <div class="product-price">
                                                        <span>22.190.000đ</span>
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
                                                <span>22.190.000đ</span>
                                            </div>
                                            <p>Chiếc ZenBook 13 tuyệt đẹp đã trở nên gọn nhẹ hơn bao giờ hết. Sản phẩm
                                                mỏng hơn, nhẹ hơn và gọn gàng khó tin nhưng vẫn được trang bị HDMI,
                                                Thunderbolt™ 4 USB-C®, USB Type-A và đầu đọc thẻ MicroSD cho sức mạnh
                                                linh hoạt vượt trội. Được thiết kế để mang lại hiệu năng mạnh mẽ,
                                                ZenBook 13 là lựa chọn hoàn hảo cho phong cách sống năng động.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">LENOVO ThinkPad L13 Gen 2 20VH004AVA</a></h4>
                                                    <div class="product-price">
                                                        <span>27.290.000đ</span>
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
                                                <span>27.290.000đ</span>
                                            </div>
                                            <p>Mặc dù sở hữu thiết kế không quá nổi bật với màu đen quen thuộc, L13 lại
                                                cho một thiết kế khá mỏng so với những chiếc ThinkPad khác. 4 cạnh viền
                                                của máy được làm vuông vắn, chắc chắn. Tuy vậy kiểu thiết kế này có phần
                                                hơi kén phái nữ. Độ mỏng của máy vào khoảng 1.76 cm, rất vừa vặn khi cho
                                                vào một chiếc balo cỡ vừa. ThinkPad L13 Gen 2 vẫn sử dụng vật liệu chủ
                                                yếu là carbon kết hợp sợi thuỷ tinh, tạo sự chắc chắn, nhưng vẫn mang
                                                nét nhẹ nhàng. Mặt lưng vẫn được phủ lớp soft touch mịn, cho cảm giác
                                                mềm mại khi cầm nắm.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">Asus Vivobook Pro 15 OLED M3500QC L1105T</a></h4>
                                                    <div class="product-price">
                                                        <span>24.690.000đ</span>
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
                                                <span>24.690.000đ</span>
                                            </div>
                                            <p>Asus VivoBook Pro 15 sở hữu màn hình viền mỏng 15.6 inch với độ phân giải
                                                Full HD (1920 x 1080) cùng màn hình OLED mang đến những hình ảnh rõ nét
                                                có độ tương phản và ánh sáng cao, đồng thời có khả năng tạo màu đen sâu
                                                hơn với góc nhìn được rộng mở, cho bạn những trải nghiệm trọn vẹn nhưng
                                                vẫn giúp tiết kiệm điện năng tối đa.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">Macbook Air 2020 M1 7GPU 16GB 512GB Z127000DF –
                                                        Silver</a></h4>
                                                    <div class="product-price">
                                                        <span>36.990.000đ</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Macbook Air 2020 M1 7GPU 16GB 512GB Z127000DF – Silver</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>36.990.000đ</span>
                                            </div>
                                            <p>Macbook Air 13 2020 M1 7GPU 16GB 256GB Z127000DE là chiếc laptop đến từ
                                                hãng công nghệ hàng đầu Apple. Với thiết kế mỏng hơn, nhẹ hơn, Macbook
                                                Air 13 2020 đem đến cho người dùng văn phòng thêm một lựa chọn trong
                                                phân khúc laptop văn phòng mỏng nhẹ.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="#">Macbook Air 2020 M1 7GPU 16GB 512GB Z12A00050 –
                                                        Gold</a></h4>
                                                    <div class="product-price">
                                                        <span>36.990.000đ</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="#">Macbook Air 2020 M1 7GPU 16GB 512GB Z12A00050 – Gold</a>
                                            </h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>36.990.000đ</span>
                                            </div>
                                            <p>Trong cùng 1 năm MacBook Air 2020 mới được Apple nâng cấp ra mắt với sự
                                                xuất hiện của con Chip Apple M1 được phát triển với kiến trúc ARM mới,
                                                nhanh hơn 98% PC, pin 18 giờ. Đây là chiếc MacBook Air đầu tiên và cũng
                                                là chiếc máy Mac đầu tiên của Apple trong việc chuyển dịch sang hệ chip
                                                ARM. </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">Acer Swift 3 Evo SF314 511
                                                        59LV</a></h4>
                                                    <div class="product-price">
                                                        <span>20.990.000đ</span>
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
                                                <span>20.990.000đ</span>
                                            </div>
                                            <p> Laptop Acer Swift 3 Evo SF314 511 59LV là một sự lựa chọn hàng đầu cho
                                                người dùng phân khúc Laptop Phổ Thông – Học Tập – Văn Phòng, mang thiết
                                                kế gọn nhẹ, sang trọng cùng hiệu năng vượt trội từ vi xử lý Intel thế hệ
                                                11 tân tiến.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">Dell Inspiron 14 5406
                                                        70232602</a></h4>
                                                    <div class="product-price">
                                                        <span>21.590.000đ</span>
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
                                                <span>21.590.000đ</span>
                                            </div>
                                            <p>Laptop Dell Inspiron 14 5406 70232602 sở hữu vẻ ngoài sang trọng với lớp
                                                màu Silver quý phái, vô cùng nổi bật trong môi trường văn phòng và học
                                                tập. Cùng trọng lượng chỉ có 1.72 kg, Dell Inspiron 14 vô cùng thích hợp
                                                cho di chuyển, bạn có thể thoải mái đặt chiếc laptop gọn gàng trong balo
                                                và đi bất kì đâu. Trang bị thêm thiết kế bản lề thông minh, cho phép
                                                nâng bàn phím của laptop Dell Inspiron 14 5406 70232602 giúp đem lại cảm
                                                giác gõ phím thoải mái nhất, thuận tiện nhất.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">ASUS ExpertBook P2451FA
                                                        EK0262R</a></h4>
                                                    <div class="product-price">
                                                        <span>24.990.000đ</span>
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
                                                <span>24.990.000đ</span>
                                            </div>
                                            <p>ASUS ExpertBook P2451FA K0262R là sản phẩm hoàn hảo để mang lại hiệu toàn
                                                diện để giúp bạn vượt qua một ngày làm việc. Máy tính xách tay siêu nhẹ
                                                kết hợp cùng bản lề phẳng 180 độ để bạn có thể đặt laptop trên bất kỹ
                                                mặt phẳng nào, cực kỳ lý tưởng để chia sẻ nội dung trên màn hình với
                                                người khác.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">LG Gram 2020 14Z90N
                                                        V.AR52A5</a></h4>
                                                    <div class="product-price">
                                                        <span> 29.990.000đ</span>
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
                                                <span> 29.990.000đ</span>
                                            </div>
                                            <p>Dòng LG Gram của LG vốn nổi tiếng nhờ trọng lực cực nhẹ chỉ dưới 1kg ở
                                                thế hệ đầu tiên 14 inch đi kèm thời lượng pin tốt. Ở phiên bản 2020,
                                                laptop LG Gram 14Z90N-V.AR52A5 lại tiếp tục phát huy truyền thống này,
                                                đồng thời laptop LG cũng nâng cấp hiệu năng xử lý với con chip Intel
                                                Core thế hệ thứ 10.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">Acer Swift 3S SF314 42
                                                        R5Z6</a></h4>
                                                    <div class="product-price">
                                                        <span> 18.190.000đ</span>
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
                                                <span> 18.190.000đ</span>
                                            </div>
                                            <p>Laptop Acer Swift 3 SF314 42 R5Z6 là một trong những mẫu laptop mỏng nhẹ
                                                phù hợp dành cho giới văn phòng. Với thiết kế nhỏ, gọn với họa tiết tối
                                                giản nhưng không kém phần sang trọng chiếc Acer Swift 3 giúp tạo cho
                                                người dùng cảm giác được sự cao cấp từ sản phẩm. </p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">Asus ZenBook 14 UX425EA
                                                        BM069T</a></h4>
                                                    <div class="product-price">
                                                        <span> 22.990.000đ</span>
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
                                                <span> 22.990.000đ</span>
                                            </div>
                                            <p>Thiết kế hoàn toàn bằng kim loại, siêu nhẹ, mỏng và gọn gàng của Asus
                                                ZenBook 14 khiến nó trở thành người bạn đồng hành lý tưởng trong những
                                                chuyến công tác. Đó cũng là chiếc laptop 14-inch mỏng nhất thế giới với
                                                đầy đủ các cổng kết nối — bao gồm HDMI và USB Type-A — để bạn có thể tận
                                                hưởng tính năng kết nối linh hoạt dù ở bất kỳ đâu.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
                                                    <h4><a href="pixel/product-details.html">HP Envy 13 BA1027TU
                                                        2K0B1PA</a></h4>
                                                    <div class="product-price">
                                                        <span> 22.590.000đ</span>
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
                                                <span> 22.590.000đ</span>
                                            </div>
                                            <p>HP ENVY 13-ba1027TU 2K0B1PA sở hữu một thiết kế trẻ trung, năng động chắc
                                                chắn sẽ mang đến cho bạn sự tự tin nhất khi cầm trên tay. Đây là chiếc
                                                laptop kết hợp hoàn hảo của một chiếc laptop văn phòng với thời trang
                                                hiện đại.</p>
                                            <div class="shop-list-cart">
                                                <a href="pixel/cart.html"><i class="ti-shopping-cart"></i>Thêm vào giỏ
                                                    hàng</a>
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
