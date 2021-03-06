<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PIXEL</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/datepicker3.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span></button>
            <a class="navbar-brand" href="#"><span>PIXEL</span>Admin</a>
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                    <em class="fa fa-envelope"></em><span class="label label-danger">1</span>
                </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box"><a href="profile.html" class="pull-left">
                                <img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
                            </a>
                                <div class="message-body"><small class="pull-right">3 phút trước</small>
                                    <a href="#"><strong>NLU</strong> Bình luận về <strong>ảnh của bạn</strong>.</a>
                                    <br/><small class="text-muted">1:24 pm - 25/12/2021</small></div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box"><a href="profile.html" class="pull-left">
                                <img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
                            </a>
                                <div class="message-body"><small class="pull-right">1 giờ trước</small>
                                    <a href="#">Tin nhắn mới từ <strong>NLU</strong>.</a>
                                    <br/><small class="text-muted">12:27 pm - 25/12/2021</small></div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="all-button"><a href="#">
                                <em class="fa fa-inbox"></em> <strong>Tất cả tin nhắn</strong>
                            </a></div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                    <em class="fa fa-bell"></em><span class="label label-info">5</span>
                </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li><a href="#">
                            <div><em class="fa fa-envelope"></em> 1 tin nhắn mới
                                <span class="pull-right text-muted small">3 phút trước</span></div>
                        </a></li>
                        <li class="divider"></li>
                        <li><a href="#">
                            <div><em class="fa fa-heart"></em> 12 lượt thích mới
                                <span class="pull-right text-muted small">4 phút trước</span></div>
                        </a></li>
                        <li class="divider"></li>
                        <li><a href="#">
                            <div><em class="fa fa-user"></em> 5 lượt theo dỗi
                                <span class="pull-right text-muted small">4 phút trước</span></div>
                        </a></li>
                    </ul>
                </li>
            </ul>
            </ul>
        </div>
    </div><!-- /.container-fluid -->
</nav>
<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <div class="profile-sidebar">
        <div class="profile-userpic">
            <img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
        </div>
        <div class="profile-usertitle">
            <div class="profile-usertitle-name">Tên người dùng</div>
            <div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="divider"></div>
    <form role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
        </div>
    </form>
    <ul class="nav menu">
        <li><a href="adminPage.jsp"><em class="fa fa-dashboard">&nbsp;</em> Bảng điều khiển</a></li>
        <li><a href="widgets.html"><em class="fa fa-calendar">&nbsp;</em> Lịch</a></li>
        <li class="active"><a href="charts.html"><em class="fa fa-bar-chart">&nbsp;</em> Biểu đồ</a></li>
        <li><a href="elements.html"><em class="fa fa-toggle-off">&nbsp;</em> Yếu tố giao diện người dùng</a></li>
        <li><a href="panels.html"><em class="fa fa-clone">&nbsp;</em> Cảnh báo và thông tin</a></li>
        <li class="parent "><a data-toggle="collapse" href="#sub-item-1">
            <em class="fa fa-navicon">&nbsp;</em>Đa cấp <span data-toggle="collapse" href="#sub-item-1"
                                                              class="icon pull-right"><em
                class="fa fa-plus"></em></span>
        </a>
            <ul class="children collapse" id="sub-item-1">
                <li><a class="" href="#">
                    <span class="fa fa-arrow-right">&nbsp;</span> Mục phụ 1
                </a></li>
                <li><a class="" href="#">
                    <span class="fa fa-arrow-right">&nbsp;</span> Mục phụ 2
                </a></li>
                <li><a class="" href="#">
                    <span class="fa fa-arrow-right">&nbsp;</span> Mục phụ 3
                </a></li>
            </ul>
        </li>
        <li><a href="login.html"><em class="fa fa-power-off">&nbsp;</em> Thoát</a></li>
    </ul>
</div><!--/.sidebar-->

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">
                <em class="fa fa-home"></em>
            </a></li>
            <li class="active">Bảng điều khiển</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Bảng điều khiển</h1>
        </div>
    </div><!--/.row-->

    <div class="panel panel-container">
        <div class="row">
            <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                <div class="panel panel-teal panel-widget border-right">
                    <div class="row no-padding"><em class="fa fa-xl fa-shopping-cart color-blue"></em>
                        <div class="large">150</div>
                        <div class="text-muted">Đơn hàng mới</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                <div class="panel panel-blue panel-widget border-right">
                    <div class="row no-padding"><em class="fa fa-xl fa-comments color-orange"></em>
                        <div class="large">52</div>
                        <div class="text-muted">Bình luận</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                <div class="panel panel-orange panel-widget border-right">
                    <div class="row no-padding"><em class="fa fa-xl fa-users color-teal"></em>
                        <div class="large">24</div>
                        <div class="text-muted">Người dùng mới</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                <div class="panel panel-red panel-widget ">
                    <div class="row no-padding"><em class="fa fa-xl fa-search color-red"></em>
                        <div class="large">100k</div>
                        <div class="text-muted">Số lượt xem trang</div>
                    </div>
                </div>
            </div>
        </div><!--/.row-->
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Tổng quan về lưu lượng truy cập trang web
                    <ul class="pull-right panel-settings panel-button-tab-right">
                        <li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
                            <em class="fa fa-cogs"></em>
                        </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li>
                                    <ul class="dropdown-settings">
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 1
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 2
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 3
                                        </a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <span class="pull-right clickable panel-toggle panel-button-tab-left"><em
                            class="fa fa-toggle-up"></em></span></div>
                <div class="panel-body">
                    <div class="canvas-wrapper">
                        <canvas class="main-chart" id="line-chart" height="350" width="600"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.row-->

    <div class="row">
        <div class="col-xs-6 col-md-3">
            <div class="panel panel-default">
                <div class="panel-body easypiechart-panel">
                    <h4>Đơn hàng mới</h4>
                    <div class="easypiechart" id="easypiechart-blue" data-percent="36"><span class="percent">36%</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-3">
            <div class="panel panel-default">
                <div class="panel-body easypiechart-panel">
                    <h4>Bình luận</h4>
                    <div class="easypiechart" id="easypiechart-orange" data-percent="50"><span
                            class="percent">50%</span></div>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-3">
            <div class="panel panel-default">
                <div class="panel-body easypiechart-panel">
                    <h4>Người dùng mới</h4>
                    <div class="easypiechart" id="easypiechart-teal" data-percent="67"><span class="percent">67%</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-3">
            <div class="panel panel-default">
                <div class="panel-body easypiechart-panel">
                    <h4>Khách hàng</h4>
                    <div class="easypiechart" id="easypiechart-red" data-percent="15"><span class="percent">15%</span>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.row-->

    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default chat">
                <div class="panel-heading">
                    Chat
                    <ul class="pull-right panel-settings panel-button-tab-right">
                        <li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
                            <em class="fa fa-cogs"></em>
                        </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li>
                                    <ul class="dropdown-settings">
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 1
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 2
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 3
                                        </a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <span class="pull-right clickable panel-toggle panel-button-tab-left"><em
                            class="fa fa-toggle-up"></em></span></div>
                <div class="panel-body">
                    <ul>
                        <li class="left clearfix"><span class="chat-img pull-left">
								<img src="https://windows79.com/wp-content/uploads/2021/02/Thay-the-hinh-dai-dien-tai-khoan-nguoi-dung-mac.png"
                                     alt="User Avatar" class="img-circle"/>
								</span>
                            <div class="chat-body clearfix">
                                <div class="header"><strong class="primary-font">Lê Trung Nhân</strong> <small
                                        class="text-muted">30 phút trước</small></div>
                                <p>Cửa hàng chăm sóc chu đáo</p>
                            </div>
                        </li>
                        <li class="right clearfix"><span class="chat-img pull-right">
								<img src="https://windows79.com/wp-content/uploads/2021/02/Thay-the-hinh-dai-dien-tai-khoan-nguoi-dung-mac.png"
                                     alt="User Avatar" class="img-circle"/>
								</span>
                            <div class="chat-body clearfix">
                                <div class="header"><strong class="pull-left primary-font">Nguyễn Ny</strong> <small
                                        class="text-muted">31 phút trước</small></div>
                                <p>Cửa hàng uy tính</p>
                            </div>
                        </li>
                        <li class="left clearfix"><span class="chat-img pull-left">
								<img src="https://windows79.com/wp-content/uploads/2021/02/Thay-the-hinh-dai-dien-tai-khoan-nguoi-dung-mac.png"
                                     alt="User Avatar" class="img-circle"/>
								</span>
                            <div class="chat-body clearfix">
                                <div class="header"><strong class="primary-font">Lương Khánh Nghĩa</strong> <small
                                        class="text-muted">32 phút trước</small></div>
                                <p>Nhân viên tư vấn chu đáo</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="panel-footer">
                    <div class="input-group">
                        <input id="btn-input" type="text" class="form-control input-md"
                               placeholder="Gõ tin nhắn của bạn ở đây..."/><span class="input-group-btn">
								<button class="btn btn-primary btn-md" id="btn-chat">Gửi</button>
						</span></div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    Những việc cần làm
                    <ul class="pull-right panel-settings panel-button-tab-right">
                        <li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
                            <em class="fa fa-cogs"></em>
                        </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li>
                                    <ul class="dropdown-settings">
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 1
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 2
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 3
                                        </a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <span class="pull-right clickable panel-toggle panel-button-tab-left"><em
                            class="fa fa-toggle-up"></em></span></div>
                <div class="panel-body">
                    <ul class="todo-list">
                        <li class="todo-list-item">
                            <div class="checkbox">
                                <input type="checkbox" id="checkbox-1"/>
                                <label for="checkbox-1">Đặt hàng</label>
                            </div>
                            <div class="pull-right action-buttons"><a href="#" class="trash">
                                <em class="fa fa-trash"></em>
                            </a></div>
                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">
                                <input type="checkbox" id="checkbox-2"/>
                                <label for="checkbox-2">Kiểm tra email</label>
                            </div>
                            <div class="pull-right action-buttons"><a href="#" class="trash">
                                <em class="fa fa-trash"></em>
                            </a></div>
                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">
                                <input type="checkbox" id="checkbox-3"/>
                                <label for="checkbox-3">Trả lời tin nhắn</label>
                            </div>
                            <div class="pull-right action-buttons"><a href="#" class="trash">
                                <em class="fa fa-trash"></em>
                            </a></div>
                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">
                                <input type="checkbox" id="checkbox-4"/>
                                <label for="checkbox-4">Tư vấn cho khách hàng</label>
                            </div>
                            <div class="pull-right action-buttons"><a href="#" class="trash">
                                <em class="fa fa-trash"></em>
                            </a></div>
                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">
                                <input type="checkbox" id="checkbox-5"/>
                                <label for="checkbox-5">Chăm sóc khách hàng</label>
                            </div>
                            <div class="pull-right action-buttons"><a href="#" class="trash">
                                <em class="fa fa-trash"></em>
                            </a></div>
                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">
                                <input type="checkbox" id="checkbox-6"/>
                                <label for="checkbox-6">Liên hệ với cửa tiệm</label>
                            </div>
                            <div class="pull-right action-buttons"><a href="#" class="trash">
                                <em class="fa fa-trash"></em>
                            </a></div>
                        </li>
                    </ul>
                </div>
                <div class="panel-footer">
                    <div class="input-group">
                        <input id="btn-input" type="text" class="form-control input-md"
                               placeholder="Thêm nhiệm vụ mới"/><span class="input-group-btn">
								<button class="btn btn-primary btn-md" id="btn-todo">Thêm</button>
						</span></div>
                </div>
            </div>
        </div><!--/.col-->


        <div class="col-md-6">
            <div class="panel panel-default ">
                <div class="panel-heading">
                    Mốc thời gian
                    <ul class="pull-right panel-settings panel-button-tab-right">
                        <li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
                            <em class="fa fa-cogs"></em>
                        </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li>
                                    <ul class="dropdown-settings">
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 1
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 2
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">
                                            <em class="fa fa-cog"></em> Cài đặt 3
                                        </a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <span class="pull-right clickable panel-toggle panel-button-tab-left"><em
                            class="fa fa-toggle-up"></em></span></div>
                <div class="panel-body timeline-container">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-badge"><em class="glyphicon glyphicon-pushpin"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Vì tương lai trở thành só 1 VN</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Có gắng phát triển trang web</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge primary"><em class="glyphicon glyphicon-link"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Vì tương lai trở thành só 1 VN</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Có gắng phát triển trang web</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge"><em class="glyphicon glyphicon-camera"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Vì tương lai trở thành só 1 VN</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Có gắng phát triển trang web</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge"><em class="glyphicon glyphicon-paperclip"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Vì tương lai trở thành só 1 VN</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Có gắng phát triển trang web</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!--/.col-->
        <div class="col-sm-12">
            <p class="back-link">PIXEL bởi <a href="https://www.medialoot.com">NLU</a></p>
        </div>
    </div><!--/.row-->
</div>    <!--/.main-->

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/chart.min.js"></script>
<script src="js/chart-data.js"></script>
<script src="js/easypiechart.js"></script>
<script src="js/easypiechart-data.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/custom.js"></script>
<script>
    window.onload = function () {
        var chart1 = document.getElementById("line-chart").getContext("2d");
        window.myLine = new Chart(chart1).Line(lineChartData, {
            responsive: true,
            scaleLineColor: "rgba(0,0,0,.2)",
            scaleGridLineColor: "rgba(0,0,0,.05)",
            scaleFontColor: "#c5c7cc"
        });
    };
</script>

</body>
</html>