<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">
<jsp:include page="head.jsp"/>
<body>
<div class="wrapper">
    <jsp:include page="header.jsp"/>
    <div class="breadcrumb-area pt-255 pb-170"
         style="background-image: url(<%=request.getContextPath()%>/assets/img/banner/geomatry.jpg)">
        <div class="container-fluid">
            <div class="breadcrumb-content text-center">
                <h2>product details </h2>
                <ul>
                    <li>
                        <a href="home">home</a>
                    </li>
                    <li>Product Details</li>
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
                                    <div>
                                        <a href="<%=request.getContextPath()%>/assets/img/product-details/b1.jpg">
                                            <img src="${detail.image}" alt="">
                                        </a>
                                    </div>
                                </div>

                            </div>
                            <div class="product-details-small nav mt-12 product-dec-slider owl-carousel">




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
                            <fmt:setLocale value="vi_VN"/>
                            <span>Giá:       <fmt:formatNumber>  ${detail.price}</fmt:formatNumber>



                            </span>
                        </div>
                        <div class="product-overview">
                            <h5 class="pd-sub-title">Tổng quan về sản phẩm</h5>
                            <p>${detail.description}</p>
                        </div>
                        <div class="product-color">
                            <h5 class="pd-sub-title">Mã sản phẩm</h5>

                            ${sessionScope.detail.SKU}

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
<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-1.12.0.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/popper.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.counterup.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/waypoints.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/ajax-mail.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
</body>
</html>
