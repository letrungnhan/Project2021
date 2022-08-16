<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/cssSub.css">
    <script>
        $(document).ready(function () {
            // Activate tooltip
            $('[data-toggle="tooltip"]').tooltip();

            // Select/Deselect checkboxes
            var checkbox = $('table tbody input[type="checkbox"]');

            $("#selectAll").click(function () {
                if (this.checked) {
                    checkbox.each(function () {
                        this.checked = true;

                    });
                } else {
                    checkbox.each(function () {
                        this.checked = false;
                    });
                }
            });
            checkbox.click(function () {
                if (!this.checked) {
                    $("#selectAll").prop("checked", false);
                }
            });
        });

        function showConfirm(id) {
            var option = confirm('Bạn có muốn xóa mã sản phẩm ' + id);
            if (option === true) {
                window.location.href = 'deleteProduct?pid=' + id;
                window.alert("Đã xóa sản phẩm " + id)
            }
        }
    </script>
</head>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-xs-6">
                                <h2>Manage<b>Product</b></h2>
                            </div>
                            <div class="col-xs-6">
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i
                                        class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
<%--                                <a href="#deleteEmployeeModal"--%>
<%--                                   class="btn btn-danger"--%>
<%--                                   data-toggle="modal">--%>
<%--                                    <i class="material-icons">&#xE15C;</i> <span>Delete</span></a>--%>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover" id="table-product">
                        <thead>
                        <tr>
                            <th>
								<span class="custom-checkbox">
									<input type="checkbox" id="selectAll">
									<label for="selectAll"></label>
								</span>
                            </th>
                            <th>P_ID</th>
                            <th>P_NAME</th>
                            <th>P_DESC</th>
                            <th>SKU</th>
                            <th>CATEGORY_ID</th>
                            <th>INVENTORY_ID</th>
                            <th>PRICE</th>
                            <th>DISCOUNT_ID</th>
                            <th>OPTIONS</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listPage}" var="object">
                            <tr>
                                <td>
								<span class="custom-checkbox">
                                    <fmt:setLocale value="vi_Vn"/>
                                            <input type="checkbox"
                                                   id="checkboxProduct"
                                                   name="checkboxProductID"
                                                   value="${object.productId}">
                                        <label for="checkboxProduct"></label>
								</span>
                                </td>
                                <td>
                                        ${object.productId}
                                </td>
                                <td>${object.productName}</td>
                                <td>
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading px-lg-2 py-lg-2">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#${object.productId}">Description ${object.productId}</a>
                                                </h4>
                                            </div>
                                            <div id="${object.productId}" class="panel-collapse collapse">
                                                <div class="panel-body"> ${object.productDesc}</div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td>${object.SKU}</td>
                                <td>${object.categoryID}</td>
                                <td>${object.inventoryID}</td>
                                <td><fmt:setLocale value="vi_Vn"/>
                                    <fmt:formatNumber value="${object.price}"/>
                                </td>
                                <td>${object.discountID}</td>
                                <td>
                                    <a href="<%=request.getContextPath()%>/loadInforProduct?pid=${object.productId}"
                                       class="edit" data-toggle="modal">
                                        <i class="material-icons"
                                           data-toggle="tooltip"
                                           title="Edit">&#xE254;</i></a>
                                    <a href="#"
                                       class="delete" onclick="showConfirm('${object.productId}')">
                                        <i class="material-icons"
                                           data-toggle="tooltip"
                                           title="Delete">&#xE872;</i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="clearfix">
                        <ul class="pagination">
                            <c:forEach begin="1" end="${endPage}" var="i">
                                <li class="page-item ${tag == i ? "active":""}"><a
                                        href="<%=request.getContextPath()%>/adminProduct?index=${i}"
                                        class="page-link">${i}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Add Product -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog d-flex">
                <div class="modal-content">
                    <form action="<%=request.getContextPath()%>/createProduct" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" type="text" class="form-control" required> </textarea>
                            </div>
                            <%--                            <div class="form-group">--%>
                            <%--                                <label>SKUD</label>--%>
                            <%--                                <input name="SKU" type="text" class="form-control" required/>--%>
                            <%--                            </div>--%>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-control" aria-label="Default select example">
                                    <jsp:useBean id="categoryID" class="com.example.webpagejsp.dao.web.ProductDao"
                                                 scope="request"/>
                                    <c:forEach items="${categoryID.productCategory}" var="object">
                                        <option value="${object.categoryID}">
                                                ${object.categoryName}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Inventory</label>
                                <select name="inventory-id" class="form-control" aria-label="Default select example">
                                    <jsp:useBean id="inventoryID" class="com.example.webpagejsp.dao.web.ProductDao"
                                                 scope="request"/>
                                    <c:forEach items="${inventoryID.inventoryList}" var="object">
                                        <option value="${object.inventoryID}">
                                                ${object.inventoryID}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group d-flex justify-content-between">
                                <div class="ml-5" style="width: 47%">
                                    <label>Price</label>
                                    <input name="price" type="number" class="form-control" required>
                                </div>
                                <div class="" style="width: 47%">
                                    <label>Discount</label>
                                    <select name="discount" class="form-control" aria-label="Default select example">
                                        <jsp:useBean id="discount" class="com.example.webpagejsp.dao.web.ProductDao"
                                                     scope="request"/>
                                        <c:forEach items="${discount.discountList}" var="object">
                                            <option value="${object.discountID}">
                                                    ${object.discountName}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->

        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="<%=request.getContextPath()%>/deleteProduct?pid=${sessionScope.checkboxId}"
                          method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Xóa sản phẩm </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;
                            </button>
                        </div>

                        <div class="modal-body">
                            <p>Bạn có chắc xóa sản phẩm ${sessionScope.checkboxID}
                            </p>
                            <p class="text-warning"><small>Sẽ không thể khôi phục lại</small></p>
                        </div>
                        <div class="modal-footer">

                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" name="btn_delete" class="btn btn-danger" value="Delete">


                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

</div>
<script>

</script>