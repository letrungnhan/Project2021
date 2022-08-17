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
                    <form action="<%=request.getContextPath()%>/editDicount">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Discount</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Discount ID</label>
                                <input value="${sessionScope.discountInfor.discountID}" type="text" class="form-control"
                                       name="discountID" readonly>
                            </div>
                            <div class="form-group">
                                <label>Discount Name</label>
                                <input value="${sessionScope.discountInfor.discountName}" type="text"
                                       class="form-control"
                                       name="discountName" required>
                            </div>
                            <div class="form-group">
                                <label>Discount Percent</label>
                                <input value="${sessionScope.discountInfor.discountPercent}" type="text"
                                       class="form-control"
                                       name="discountPercent" required>
                            </div>
                            <div class="form-group">
                                <label>Category Status</label>
                                <input value="${sessionScope.discountInfor.discountActive}" type="text"
                                       class="form-control"
                                       name="discountStatus" required>
                            </div>

                        </div>
                        <div class="modal-footer mr-10">
                            <a class="small" href="<%=request.getContextPath()%>/discount">Back </a>
                            <input type="submit" class="btn btn-success" value="Edit"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

</div>