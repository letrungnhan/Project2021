<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--
  ~ Copyright (c) 2022.
  ~
  --%>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Dashboard - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/admin/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<jsp:include page="nav-admin.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="teamplates/side-nav.jsp"/>
    <jsp:include page="/admin/CRUD/edit-category.jsp"/>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/admin/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/admin/assets/demo/chart-area-demo.js"></script>
<script src="<%=request.getContextPath()%>/admin/assets/demo/chart-bar-demo.js"></script>
<script src="<%=request.getContextPath()%>/admin/https://cdn.jsdelivr.net/npm/simple-datatables@latest"
        crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/admin/js/datatables-simple-demo.js"></script>
</body>
</html>
