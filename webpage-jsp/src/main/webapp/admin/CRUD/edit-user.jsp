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
        <div id="edit-user">
            <div class="d-flex">
                <div class="modal-content">
                    <form action="<%=request.getContextPath()%>/editUser">
                        <div class="modal-header">
                            <h4 class="modal-title">Add User System</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>UserID</label>
                                <input name="userID" value="${sessionScope.userInfor.id}" type="text"
                                       class="form-control" required readonly>
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input name="username" value="${sessionScope.userInfor.username}" type="text"
                                       class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input name="password" value="${sessionScope.userInfor.password}" type="text"
                                       class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <select name="role" class="form-control" aria-label="Default select example">
                                    <jsp:useBean id="listRole" class="com.example.webpagejsp.dao.web.UserDao"/>
                                    <c:forEach items="${listRole.listRole}" var="object">
                                        <option value="${sessionScope.userInfor.roleId}" ${object.ID eq sessionScope.userInfor.roleId ? "selected" : "" }>
                                                ${object.roleName}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input value="${sessionScope.userInfor.email}" name="email" type="email"
                                       class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>ADDRESS</label>
                                <input value="${sessionScope.userInfor.address}" name="address" type="text"
                                       class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>PHONE_NUMBER</label>
                                <input value="${sessionScope.userInfor.phoneNumber}" name="phoneNumber"
                                       type="text" class="form-control" required>
                            </div>


                        </div>

                        <div class="modal-footer">
                            <a class="medium" href="<%=request.getContextPath()%>/manageUser">Back </a> &nbsp;&nbsp;
                            <input type="submit" class="btn btn-success" value="Edit">
                        </div>
                    </form>
                </div>
            </div>


        </div>


    </main>

</div>