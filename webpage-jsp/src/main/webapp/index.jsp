<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html class="no-js" lang="zxx">
<jsp:include page="head.jsp"/>
<body>
<div class="wrapper">
    <!-- header start -->
    <jsp:include page="header.jsp"/>
    <div class="slider-area">
        <div class="slider-active owl-carousel">
            <div class="single-slider slider-1"
                 style="background-image: url(<%=request.getContextPath()%>/assets/img/slider/img_3.png)">
                <div class="container">
                    <div class="slider-content slider-animated-1">
                        <div class="slider-img text-center">
                            <img class="animated" src="<%=request.getContextPath()%>/assets/img/slider/alieware14.png"
                                 alt="slider images">
                        </div>
                        <div class="slider-text-img">
                            <h6 class="animated">HÃY ĐẶT MẶT HÀNG CỦA BẠN VỚI GIÁ RẺ</h6>
                        </div>
                        <h2 class="animated">LAPTOP</h2>
                    </div>
                </div>
            </div>
            <div class="single-slider slider-1"
                 style="background-image: url(<%=request.getContextPath()%>/assets/img/slider/img_3.png)">
                <div class="container">
                    <div class="slider-content slider-animated-1">
                        <div class="slider-img text-center">
                            <img class="animated"
                                 src="<%=request.getContextPath()%>/assets/img/slider/Asus-ROG-Strix-Hero-II.png"
                                 alt="slider images">
                        </div>
                        <div class="slider-text-img">
                            <h6 class="animated">HÃY ĐẶT MẶT HÀNG CỦA BẠN VỚI GIÁ RẺ</h6>
                        </div>
                        <h2 class="animated">LAPTOP</h2>
                    </div>
                </div>
            </div>
            <div class="single-slider slider-1"
                 style="background-image: url(<%=request.getContextPath()%>/assets/img/slider/img_3.png)">
                <div class="container">
                    <div class="slider-content slider-animated-1">
                        <div class="slider-img text-center">
                            <img class="animated"
                                 src="<%=request.getContextPath()%>/assets/img/slider/msi-gamin-gf65.png"
                                 alt="slider images">
                        </div>
                        <div class="slider-text-img">
                            <h6 class="animated">HÃY ĐẶT MẶT HÀNG CỦA BẠN VỚI GIÁ Rẻ</h6>

                        </div>
                        <h2 class="animated">LAPTOP</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="overview-area pt-135">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="overview-content">
                        <h1><span><img src="<%=request.getContextPath()%>/assets/img/logo/logo.png"
                                       style="height: 60px"></span> CỬA HÀNG LINH KIỆN HÀNG ĐẦU </h1>
                        <h2>CỬA HÀNG <span>LINH KIỆN BÁN CHẠY NHẤT</span></h2>
                        <p><span><img src="<%=request.getContextPath()%>/assets/img/logo/logo.png" style="height: 60px"></span>
                            cửa hàng bán các loại gear lớn nhất thế giới có
                            thể phục vụ bạn những mẫu
                            linh kiện, laptop, case máy tính mới nhất. Ngoài ra bạn còn thể đặt hàng online với chi phí
                            rẻ và hợp lý. </p>
                        <div class="question-area">
                            <h4>BẠN CÓ CÂU HỎI NÀO CHO CHÚNG TÔI? </h4>
                            <div class="question-contact">
                                <div class="question-icon">
                                    <i class="icofont icofont-phone"></i>
                                </div>
                                <div class="question-content-number">
                                    <h6> 9999 999 999</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="overview-img">
                        <img class="tilter" src="<%=request.getContextPath()%>/assets/img/banner/RTX3606.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--    banner done--%>
    <div class="banner-area pt-135 pb-120">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-4">
                    <div class="banner-wrapper mb-30">
                        <a href="<%=request.getContextPath()%>/category?categoryId=CG001">
                            <img src="<%=request.getContextPath()%>/assets/img/banner/laptop3cai1.png" alt="image"></a>
                        <div class="banner-content">
                            <h2>MUA LAPTOP MỚI</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="banner-wrapper mb-30">
                        <a href="<%=request.getContextPath()%>/category?categoryId=CG002">
                            <img src="<%=request.getContextPath()%>/assets/img/banner/XiaomiMiDesktopMonitor 27.jpg"
                                 alt="image"></a>
                        <div class="banner-content">
                            <h2>MUA MONITOR MỚI</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="banner-wrapper mb-30">
                        <a href="<%=request.getContextPath()%>/category?categoryId=CG003">
                            <img src="<%=request.getContextPath()%>/assets/img/banner/chuotvabanphim.jpg"
                                 alt="image"></a>
                        <div class="banner-content">
                            <h2>MUA BÀN PHÍM VÀ CHUỘT MỚI</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="latest-product-area pt-205 pb-145 bg-img"
         style="background-image: url(<%=request.getContextPath()%>/assets/img/banner/geomatry.jpg)">
        <div class="container-fluid">
            <div class="latest-product-slider owl-carousel">
                <div class="single-latest-product slider-animated-2">
                    <div class="row">
                        <div class="col-lg-7 col-md-12 col-12">
                            <div class="latest-product-img">
                                <img class="Sirv animated"
                                     data-src="https://tmajawat.sirv.com/quanlygear/banner-index/banner-mac-1.png"
                                     alt=""/>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="latest-product-content">
                                <h2 class="animated">ƯU ĐÃI MỚI NHẤT <br>Sự phổ biến của các loại phụ kiện</h2>
                                <p class="animated"><span>PIXEL</span>Nơi mua sắm tốt nhất cho sinh viên và học sinh,
                                    nhân viên văn phòng </p>
                                <div class="latest-price">
                                    <h3 class="animated">NGAY BÂY GIỜ CHỈ CÓ <span>GIÁ:25,000,000d</span></h3>
                                    <span class="animated">GIẢM GIÁ 35%</span>
                                </div>
                                <div class="latext-btn">
                                    <a class="animated" href="#">Chọn Phụ Kiện</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-latest-product slider-animated-2">
                    <div class="row">
                        <div class="col-lg-7 col-col-12 col-12">
                            <div class="latest-product-img">
                                <img class="animated" src="<%=request.getContextPath()%>/assets/img/banner/dsd.png"
                                     alt="image">
                            </div>
                        </div>
                        <div class="col-lg-5 col-col-12 col-12">
                            <div class="latest-product-content">
                                <h2 class="animated">ƯU ĐÃI MỚI NHẤT <br>Sự phổ biến của các loại phụ kiện</h2>
                                <p class="animated"><span>PIXEL</span>Nơi mua sắm tốt nhất cho sinh viên và học sinh,
                                    nhân viên văn phòng </p>
                                <div class="latest-price">
                                    <h3 style="color: black" class="animated">NGAY BÂY GIỜ CHỈ CÓ
                                        <span>GIÁ:19,000,000d</span></h3>
                                    <span class="animated">GIẢM GIÁ 35%</span>
                                </div>
                                <div class="latext-btn">
                                    <a class="animated" href="#">Chọn Phụ Kiện</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="blog-area pt-150 pb-110">
        <div class="container">
            <div class="section-title text-center mb-60">
                <h2>NHỮNG ƯU ĐÃI HẤP DẪN</h2>
                <p><span></span>Hãy đến cửa hàng hoặc đặt hàng online để nhận những ưu đãi hấp dẫn đến từ PIXEL</p>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="blog-hm-wrapper mb-40">
                        <div class="blog-img">
                            <a href="<%=request.getContextPath()%>/category?categoryId=CG003">
                                <img
                                    src="<%=request.getContextPath()%>/assets/img/blog/blog-hm-1.jpg"
                                    alt="image"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-hm-wrapper mb-40">
                        <div class="blog-img">
                            <a href="<%=request.getContextPath()%>/category?categoryId=CG002">
                                <img
                                    src="<%=request.getContextPath()%>/assets/img/blog/blog-hm-2.jpg" alt="image"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-hm-wrapper mb-40">
                        <div class="blog-img">
                            <a href="<%=request.getContextPath()%>/category?categoryId=CG001">
                                <img src="<%=request.getContextPath()%>/assets/img/blog/blog-hm-3.jpg"
                                                       alt="image"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-hm-wrapper mb-40">
                        <div class="blog-img">
                            <a href="<%=request.getContextPath()%>/category?categoryId=CG002">
                                <img
                                    src="<%=request.getContextPath()%>/assets/img/blog/blog-hm-1a.jpg" alt="image"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-hm-wrapper mb-40">
                        <div class="blog-img">
                            <a href="<%=request.getContextPath()%>/category?categoryId=CG006">
                                <img
                                    src="<%=request.getContextPath()%>/assets/img/blog/blog-hm-2b.jpg"
                                    alt="image"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-hm-wrapper mb-40">
                        <div class="blog-img">
                            <a href="<%=request.getContextPath()%>/category?categoryId=CG002">
                                <img
                                    src="<%=request.getContextPath()%>/assets/img/blog/blog-hm-3c.jpg" alt="image"></a>
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

