<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<jsp:useBean id="listProduct" class="com.example.webpagejsp.dao.web.ProductDao" scope="request"/>--%>

<!doctype html>
<html class="no-js" lang="zxx">
<jsp:include page="head.jsp"/>
<body>
<div class="wrapper">
    <!-- header start -->
    <jsp:include page="header.jsp"/>
    <div class="breadcrumb-area pt-230 pb-126"
         style="background-image: url(<%=request.getContextPath()%>/assets/img/banner/banner-4.png)">
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
                                <form action="search" method="get">
                                    <input value="${textSearch}" name="text" type="text"
                                           placeholder="Tìm kiếm sản phầm...">
                                    <button type="submit"><i class="ti-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="sidebar-widget pb-50">
                            <h3 class="sidebar-widget">Danh mục sản phẩm</h3>
                            <div class="widget-categories">
                                <ul>
                                    <jsp:useBean id="categoryID" class="com.example.webpagejsp.dao.web.ProductDao"
                                                 scope="request"/>
                                    <c:forEach items="${categoryID.productCategory}" var="object">
                                        <li class="list-group-item  ${tag == object.categoryID ? "active bg-warning text-white ":""}"
                                            style="border: none!important;outline: none!important;box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                                            <a href="category?categoryId=${object.categoryID}">
                                                <i class="fa fa-diamond"></i>
                                                    ${object.categoryName}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-widget">
                            <h3 class="sidebar-widget">Sản phẩm bán chạy nhất tháng</h3>
                            <div class="best-seller">
                                <jsp:useBean id="hotProduct" class="com.example.webpagejsp.dao.web.ProductDao">
                                    <c:forEach var="hotProduct" items="${hotProduct.listProductHot}">
                                        <div class="single-best-seller">
                                            <div class="best-seller-img">
                                                <a href="#"><img src="${hotProduct.image}" alt=""></a>
                                            </div>
                                            <div class="best-seller-text">
                                                <h3><a href="#">${hotProduct.name}</a></h3>
                                                <span class="text-danger font-weight-bold"
                                                      style="font-size: 20px">
                                                    <fmt:setLocale value="vi_VN"/>
                                                    <fmt:formatNumber value="${hotProduct.price}"/>
                                                </span>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </jsp:useBean>
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

                                <c:forEach items="${listProduct}" var="items">
                                    <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                        <div class="product-wrapper mb-35">

                                            <div class="product-img">
                                                <a href="details?pid=${items.id}">
                                                    <img src="${items.image}" alt="">
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
                                                        <h4>
                                                            <a href="details?pid=${items.id}">
                                                                    ${items.name}</a></h4>
                                                        <div class="product-price">

                                                            <span>
                                                                <fmt:setLocale value="vi_Vn"/>
                                                                <fmt:formatNumber value=" ${items.price}"/>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-list-details">
                                                <h2>
                                                    <a href="details?pid=${items.id}">
                                                            ${items.name}
                                                    </a>
                                                </h2>
                                                <div class="quick-view-rating">
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                    <i class="fa fa-star reting-color"></i>
                                                </div>
                                                <div class="product-price">
                                                    <span>${items.price}</span>
                                                </div>
                                                <p>${items.description}</p>
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

                    </div>
                    <div class="paginations text-center mt-20">
                        <ul>

                            <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                            <c:forEach begin="1" end="${endPage}" var="i">
                                <li class="${tagPage == i ? "active":""}"><a
                                        href="<%=request.getContextPath()%>/product?index=${i}">${i}</a></li>
                            </c:forEach>
                            <li class=""><a href="#"><i class="fa fa-angle-right"></i></a></li>

                        </ul>
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
