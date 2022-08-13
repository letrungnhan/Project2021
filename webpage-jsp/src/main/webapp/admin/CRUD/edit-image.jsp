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
                    <form action="<%=request.getContextPath()%>/editImageProduct">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Category</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Product Name</label>
                                <input value="${sessionScope.productImageInfor.productName}" type="text" class="form-control"
                                       name="product-name" readonly>
                            </div>
                            <div class="form-group">
                                <label>image ID</label>
                                <input value="${sessionScope.productImageInfor.imageProductID}" type="text"
                                       class="form-control"
                                       name="imageID" required>
                            </div>
                            <div class="form-group">
                                <label>Product ID</label>
                                <input value="${sessionScope.productImageInfor.productID}" type="text"
                                       class="form-control"
                                       name="productID" required readonly>
                            </div>
                            <div class="form-group">
                                <label>URL Images</label>
                                <input value="${sessionScope.productImageInfor.urlImage}" type="text"
                                       class="form-control"
                                       name="imageURL" required>
                            </div>
                        </div>
                        <div class="modal-footer mr-10">
                            <a class="small" href="<%=request.getContextPath()%>/adminProduct">Back </a> &nbsp;
                            <input type="submit" class="btn btn-success" value="Edit"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

</div>