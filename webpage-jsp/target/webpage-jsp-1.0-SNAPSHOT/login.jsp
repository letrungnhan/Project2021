<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h2>login </h2>
                <ul>
                    <li>
                        <a href="home">home</a>
                    </li>
                    <li>login </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="login-register-area ptb-130">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 ml-auto mr-auto">
                    <div class="login-register-wrapper shadow-lg">
                        <div class="login-register-tab-list nav">

                            <a class="active" href="#lg1">
                                <h4> Đăng nhập </h4>
                            </a>

                            <a href="register.jsp">
                                <h4> Đăng ký </h4>
                            </a>

                        </div>
                        <div class="tab-content">

                            <div class="login-form-container">
                                <div class="login-form">
                                    <form action="<%=request.getContextPath()%>/login" method="post">
                                        <%if (error != null) { %>
                                        <div class="alert alert-danger" role="alert">
                                            <%=error%>
                                        </div>
                                        <%
                                            }
                                        %>
                                        <input type="text"
                                               name="user-name"
                                               placeholder="Tên đăng nhập "

                                            <% if(request.getParameter("user-name")!=null){ %>
                                               value="<%=request.getParameter("user-name")%>"
                                            <%}%>

                                        >
                                        <input type="password"
                                               name="user-password"
                                               placeholder="Mật khẩu">

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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
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
