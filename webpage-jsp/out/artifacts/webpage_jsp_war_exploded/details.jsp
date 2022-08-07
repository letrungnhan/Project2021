<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
<jsp:include page="head.jsp"/>
<body>
<div class="wrapper">
    <jsp:include page="header.jsp"/>
    <div class="breadcrumb-area pt-255 pb-170" style="background-image: url(pixel/assets/img/banner/geomatry.jpg)">
        <div class="container-fluid">
            <div class="breadcrumb-content text-center">
                <h2>product details </h2>
                <ul>
                    <li>
                        <a href="index.jsp">home</a>
                    </li>
                    <li>product details</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="product-details-area fluid-padding-3 ptb-130">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product-details-img-content">
                        <div class="product-details-tab mr-40">
                            <div class="product-details-large tab-content">
                                <div class="tab-pane active" id="pro-details1">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="${detail.image}">
                                            <%--main image details--%>
                                            <img src="${detail.image}" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane" id="pro-details2">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="pixel/assets/img/product-details/b1.jpg">
                                            <img src="${detail.image}" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane" id="pro-details3">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="pixel/assets/img/product-details/c1.jpg">
                                            <img src="pixel/assets/img/product-details/c2.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane" id="pro-details4">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="pixel/assets/img/product-details/tn1.jpg">
                                            <img src="pixel/assets/img/product-details/tn2.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane" id="pro-details5">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="pixel/assets/img/product-details/minipc1.jpg">
                                            <img src="pixel/assets/img/product-details/minipc2.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-details-small nav mt-12 product-dec-slider owl-carousel">
                                <a class="active" href="#pro-details1">
                                    <img src="${detail.image}" alt="">
                                </a>
                                <a href="#pro-details2">
                                    <img src="pixel/assets/img/product-details/b3.png" alt="">
                                </a>
                                <a href="#pro-details3">
                                    <img src="pixel/assets/img/product-details/c3.jpg" alt="">
                                </a>
                                <a href="#pro-details4">
                                    <img src="pixel/assets/img/product-details/tn3.jpg" alt="">
                                </a>
                                <a href="#pro-details5">
                                    <img src="pixel/assets/img/product-details/minipc3.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product-details-content">
                        <h2>${detail.name}</h2>
                        <div class="quick-view-rating">
                            <i class="fa fa-star reting-color"></i>
                            <i class="fa fa-star reting-color"></i>
                            <i class="fa fa-star reting-color"></i>
                            <i class="fa fa-star reting-color"></i>
                            <i class="fa fa-star reting-color"></i>
                            <span> ( 1 khách hàng bình luận )</span>
                        </div>
                        <div class="product-price">
                            <span>Giá: ${detail.price}</span>
                        </div>
                        <div class="product-overview">
                            <h5 class="pd-sub-title">Tổng quan về sản phẩm</h5>
                            <p>${detail.description}</p>
                        </div>
                        <div class="product-color">
                            <h5 class="pd-sub-title">Màu sản phẩm</h5>
                            <ul>
                                <li class="red">b</li>
                                <li class="pink">p</li>
                                <li class="blue">b</li>
                                <li class="sky2">b</li>
                                <li class="green">y</li>
                                <li class="purple2">g</li>
                            </ul>
                        </div>
                        <div class="quickview-plus-minus">
                            <div class="cart-plus-minus">
                                <input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
                            </div>
                            <div class="quickview-btn-cart">
                                <a class="btn-style cr-btn" href="#"><span>thêm vào giỏ hàng</span></a>
                            </div>
                            <div class="quickview-btn-wishlist">
                                <a class="btn-hover cr-btn" href="#"><span><i
                                        class="icofont icofont-heart-alt"></i></span></a>
                            </div>
                        </div>
                        <div class="product-categories">
                            <h5 class="pd-sub-title">Thể loại</h5>
                            <ul>
                                <jsp:useBean id="category" class="com.example.webpagejsp.dao.web.ProductDao"
                                             scope="request"/>
                                <c:forEach items="${category.productCategory}" var="category">
                                    <li>
                                        <a href="category?categoryId=${category.categoryID}">${category.categoryName} </a>
                                    </li>
                                </c:forEach>

                            </ul>
                        </div>
                        <div class="product-share">
                            <h5 class="pd-sub-title">Share</h5>
                            <ul>
                                <li>
                                    <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icofont icofont-social-pinterest"></i></a>
                                </li>
                                <li>
                                    <a href="#"> <i class="icofont icofont-social-instagram"></i></a>
                                </li>
                            </ul>
                        </div>
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
