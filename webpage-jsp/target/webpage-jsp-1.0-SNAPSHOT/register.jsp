<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String error = (String) request.getAttribute("error");

%>

<!doctype html>
<html class="no-js" lang="zxx">
<jsp:include page="head.jsp"/>
<body>
<div class="wrapper">
    <jsp:include page="header.jsp"/>
    <div class="breadcrumb-area pt-255 pb-170" style="background-image: url(assets/img/banner/geomatry.jpg)">
        <div class="container-fluid">
            <div class="breadcrumb-content text-center">
                <h2> register</h2>
                <ul>
                    <li>
                        <a href="home">home</a>
                    </li>
                    <li> register</li>
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

                            <a  href="login.jsp">
                                <h4> Đăng nhập </h4>
                            </a>


                            <a class="active" href="register.jsp">
                                <h4> Đăng ký </h4>
                            </a>

                        </div>
                        <div class="tab-content">
                                <div class="login-form-container">
                                    <div class="login-form">
                                        <form action="register" method="post">
                                            <%if (error != null) { %>
                                            <div class="alert alert-danger" role="alert">
                                                <%=error%>
                                            </div>
                                            <%
                                                }
                                            %>
                                            <input type="text" name="user-name" placeholder="Tên đăng nhập ">
                                            <input type="password" name="user-password" placeholder="Mật khẩu">
                                            <input type="password" name="re-password" placeholder="Nhập lại mật khẩu">
                                            <input name="user-email" placeholder="Email" type="email">
                                            <fmt:setLocale value="vi_VN"/>
                                            <input name="address" placeholder="Địa chỉ" type="text">
                                            <input name="phoneNumber" placeholder="Số điện thoại" type="number">
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
