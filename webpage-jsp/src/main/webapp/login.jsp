<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String error = (String) request.getAttribute("error");
%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PIXEL</title>
    <meta name="description" content="Live Preview Of Oswan eCommerce HTML5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="pixel/assets/img/pix.png">

    <!-- all css here -->
    <link rel="stylesheet" href="pixel/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="pixel/assets/css/animate.css">
    <link rel="stylesheet" href="pixel/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="pixel/assets/css/chosen.min.css">
    <link rel="stylesheet" href="pixel/assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="pixel/assets/css/themify-icons.css">
    <link rel="stylesheet" href="pixel/assets/css/icofont.css">
    <link rel="stylesheet" href="pixel/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="pixel/assets/css/bundle.css">
    <link rel="stylesheet" href="pixel/assets/css/style.css">
    <link rel="stylesheet" href="pixel/assets/css/responsive.css">
    <script src="pixel/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<div class="wrapper">
    <jsp:include page="header.jsp"/>
    <div class="breadcrumb-area pt-255 pb-170" style="background-image: url(pixel/assets/img/banner/geomatry.jpg)">
        <div class="container-fluid">
            <div class="breadcrumb-content text-center">
                <h2>login / register</h2>
                <ul>
                    <li>
                        <a href="index.jsp">home</a>
                    </li>
                    <li>login register</li>
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
                            <a class="active" data-toggle="tab" href="#lg1">
                                <h4> Đăng nhập </h4>
                            </a>
                            <a data-toggle="tab" href="#lg2">
                                <h4> Đăng ký </h4>
                            </a>
                        </div>
                        <div class="tab-content">
                            <div id="lg1" class="tab-pane active">
                                <div class="login-form-container">
                                    <div class="login-form">
                                        <form action="doLogin" method="post">
                                            <%if (error != null) { %>
                                            <div class="alert alert-danger" role="alert">
                                                <%=error%>
                                            </div>
                                            <%} %>
                                            <input
                                                    type="text"
                                                    name="user-name"
                                                    placeholder="Tên đăng nhập "
                                                <% if(request.getParameter("user-name")!=null){ %>
                                                    value="<%=request.getParameter("user-name")%>"
                                                <%}%>

                                            >
                                            <input
                                                    type="password"
                                                    name="user-password"
                                                    placeholder="Mật khẩu"
                                            >

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
                            <div id="lg2" class="tab-pane">
                                <div class="login-form-container">
                                    <div class="login-form">
                                        <form action="#" method="post">
                                            <input type="text" name="user-name-register" placeholder="Tên đăng nhập ">
                                            <input type="password" name="user-password-register" placeholder="Mật khẩu">
                                            <input name="user--register" placeholder="Email" type="email">
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
    </div>
    <jsp:include page="footer.jsp">
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
