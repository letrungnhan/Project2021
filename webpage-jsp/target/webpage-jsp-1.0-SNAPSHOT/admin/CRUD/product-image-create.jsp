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
                                <h2>Manage<b>Product</b>Images</h2>
                            </div>
                            <div class="col-xs-6">
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i
                                        class="material-icons">&#xE147;</i> <span>Add New Product Image</span></a>
                                <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i
                                        class="material-icons">&#xE15C;</i> <span>Delete</span></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>
								<span class="custom-checkbox">
									<input type="checkbox" id="selectAll">
									<label for="selectAll"></label>
								</span>
                            </th>
                            <th>PRODUCT_NAME</th>
                            <th>IMAGE_ID</th>
                            <th>PRODUCT_ID</th>
                            <th>URL_IMAGE</th>
                            <th>OPTIONS</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${listPageImage}" var="object">
                            <tr>
                                <td>
								<span class="custom-checkbox">
									<input type="checkbox" id="checkbox1" name="options[]" value="1">
									<label for="checkbox1"></label>
								</span>
                                </td>
                                <td>${object.productName}</td>
                                <td>${object.imageProductID}</td>
                                <td>${object.productID}</td>
                                <td>
                                    <img src="${object.urlImage}" style="width: 50px" height="50px">
                                </td>
                                <td>
                                    <a href="<%=request.getContextPath()%>/loadInforImageProduct?imageId=${object.imageProductID}" class="edit" data-toggle="modal"><i
                                            class="material-icons"
                                            data-toggle="tooltip"
                                            title="Edit">&#xE254;</i></a>
                                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i
                                            class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="clearfix">
                        <ul class="pagination">
                            <c:forEach begin="1" end="${endPage}" var="i">
                                <li class="page-item ${tag == i ? "active":""}"><a
                                        href="<%=request.getContextPath()%>/createImagePage?index=${i}"
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
                    <%--                    <form action="<%=request.getContextPath()%>/createProduct" method="post">--%>
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


        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">
                            <h4 class="modal-title">Delete Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

</div>