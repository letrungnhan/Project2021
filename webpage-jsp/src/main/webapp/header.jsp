<%--
  Created by IntelliJ IDEA.
  User: Lê Trung Nhân
  Date: 6/27/2022
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<header>
    <div class="header-area transparent-bar ptb-55">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-4">
                    <div class="logo-small-device">
                        <a href="home"><img alt=""
                                            src="<%=request.getContextPath()%>/assets/img/logo/logo.png"></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-8">
                    <div class="header-contact-menu-wrapper pl-45">
                        <div class="header-contact">
                            <p>BẠN CÓ MUỐN LIÊN LẠC VỚI CHÚNG TÔI +9999 999 990</p>
                        </div>
                        <div class="menu-wrapper text-center">
                            <button class="menu-toggle">
                                <img class="s-open" alt=""
                                     src="<%=request.getContextPath()%>/assets/img/icon-img/menu.png">
                                <img class="s-close" alt=""
                                     src="<%=request.getContextPath()%>/assets/img/icon-img/menu-close.png">
                            </button>
                            <div class="main-menu">
                                <nav>
                                    <ul>
                                        <li><a href="index.jsp">Trang Chủ</a></li>

                                        <li><a href="#">Cửa Hàng</a>
                                            <ul>
                                                <li><a href="<%=request.getContextPath()%>/product">Cửa Hàng</a></li>
                                                <li><a href="details.jsp">Chi tiết sản phẩm</a></li>

                                            </ul>
                                        </li>
                                        <li><a href="#">pages</a>
                                            <ul>
                                                <li><a href="#">Giỏ hàng</a></li>
                                                <li><a href="#">Danh sách yêu thích</a></li>
                                                <li><a href="<%=request.getContextPath()%>/login.jsp">Đăng nhập</a></li>
                                            </ul>
                                        </li>
                                        <c:if test="${sessionScope.account != null}">
                                            <li><a href="logout">Log Out</a></li>
                                            <li><a href="#">Hello ${sessionScope.account.username}</a></li>
                                        </c:if>

                                        <c:if test="${sessionScope.account.roleId eq 'R001' && sessionScope.account != null}">
                                            <li><a href="<%=request.getContextPath()%>/admin/login2.jsp">Quản lý</a>
                                            </li>
                                        </c:if>

                                        <c:if test="${sessionScope.account == null}">
                                            <li><a href="login.jsp">Log In</a></li>
                                        </c:if>


                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="header-cart cart-small-device">
                        <button class="icon-cart">
                            <i class="ti-shopping-cart"></i>
                            <span class="count-style">02</span>
                            <span class="count-price-add">295.95đ</span>
                        </button>
                        <div class="shopping-cart-content">
                            <ul>
                                <li class="single-shopping-cart">
                                    <div class="shopping-cart-img">
                                        <a href="#"><img alt=""
                                                         src="<%=request.getContextPath()%>/assets/img/cart/img.png"></a>
                                    </div>
                                    <div class="shopping-cart-title">
                                        <h3><a href="#">Asus ROG Strix Hero II </a></h3>
                                        <span>Price: 27.500đ</span>
                                        <span>Qty: 01</span>
                                    </div>
                                    <div class="shopping-cart-delete">
                                        <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                    </div>
                                </li>
                                <li class="single-shopping-cart">
                                    <div class="shopping-cart-img">
                                        <a href="#"><img alt=""
                                                         src="<%=request.getContextPath()%>/assets/img/cart/alienware14.png"></a>
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
                                        <a href="#"><img alt=""
                                                         src="<%=request.getContextPath()%>/assets/img/cart/cart-3.jpg"></a>
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
                                <li><a href="home">TRANG CHỦ</a></li>
                                <li><a href="#">pages</a>
                                    <ul>
                                        <li><a href="pixel/cart.html">trang giỏ hàng</a></li>
                                        <li><a href="pixel/checkout.html">checkout</a></li>
                                        <li><a href="pixel/wishlist.html">danh sách mong muốn</a></li>
                                        <li><a href="login.jsp">đăng nhập</a></li>
                                    </ul>
                                </li>
                                    <ul>
                                        <li><a href="product">cửa hàng</a></li>
                                        <li><a href="pixel/checkout.html">checkout</a></li>
                                        <li><a href="pixel/wishlist.html">danh sách mong muốn</a></li>
                                        <li><a href="pixel/cart.html">giỏ hàng</a></li>
                                    </ul>
                                </li>
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
                                <a href="#"><img alt="" src="<%=request.getContextPath()%>/assets/img/cart/img.png"></a>
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
                                <a href="#"><img alt=""
                                                 src="<%=request.getContextPath()%>/assets/img/cart/alienware14.png"></a>
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
                                <a href="#"><img alt=""
                                                 src="<%=request.getContextPath()%>/assets/img/cart/msi-gamin-gf65.png"></a>
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
                        <a class="btn-style cr-btn" href="login.jsp">Thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
</body>
</html>
