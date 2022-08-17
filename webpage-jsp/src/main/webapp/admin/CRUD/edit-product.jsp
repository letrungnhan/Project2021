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
        <!-- Edit Modal HTML -->
        <div class="edit--product">
            <div class="d-flex">
                <div class="modal-content">
                    <form action="editProduct" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Product ID</label>
                                <input value="${sessionScope.editProduct.productId}" type="text" class="form-control"
                                       name="productID" readonly>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input value="${sessionScope.editProduct.productName}" type="text" class="form-control"
                                       name="name" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description"
                                          type="text"
                                          class="form-control"
                                          required> ${sessionScope.editProduct.productDesc}</textarea>
                            </div>
                            <div class="form-group">
                                <label>SKUD</label>
                                <input value="${sessionScope.editProduct.SKU}" name="SKU" type="text"
                                       class="form-control" readonly required/>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-control" aria-label="Default select example">
                                    <jsp:useBean id="category" class="com.example.webpagejsp.dao.admin.AdminDao"/>
                                    <c:forEach items="${category.listCategory}" var="object">
                                        <option value="${sessionScope.editProduct.categoryID}" ${object.categoryID eq sessionScope.editProduct.categoryID ? "selected" : "" }>
                                                ${object.categoryName}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Inventory</label>
                                <select name="inventory-id" class="form-control" aria-label="Default select example">
                                    <jsp:useBean id="inventory" class="com.example.webpagejsp.dao.web.ProductDao"/>
                                    <c:forEach items="${inventory.inventoryList}" var="object">
                                        <option value="${sessionScope.editProduct.inventoryID}" ${object.inventoryID eq sessionScope.editProduct.inventoryID ? "selected" : "" }>
                                                ${object.inventoryID}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group d-flex justify-content-between">
                                <div class="ml-5" style="width: 47%">
                                    <label>Price</label>
                                    <fmt:setLocale value="vi_VN"/>
                                    <input value="${sessionScope.editProduct.price}" name="price" type="text"
                                           class="form-control"
                                           required>
                                </div>
                                <div class="" style="width: 47%">
                                    <label>Discount</label>
                                    <select name="discount" class="form-control" aria-label="Default select example">
                                        <jsp:useBean id="discount" class="com.example.webpagejsp.dao.web.ProductDao"/>
                                        <c:forEach items="${discount.discountList}" var="object">
                                            <option value="${sessionScope.editProduct.discountID}" ${object.discountID eq sessionScope.editProduct.discountID ? "selected" : "" }>
                                                    ${object.discountName}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer mr-10">
                            <a class="small" href="<%=request.getContextPath()%>/adminProduct">Back </a>
                            <input type="submit" class="btn btn-success" value="Edit"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

</div>