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
            var option = confirm('Bạn có muốn  xóa user ' + id);
            if (option === true) {
                window.location.href = 'deleteUser?userID=' + id;
                window.alert("đã xóa user " + id);
            }else{

            }
        }
        function  showConfirmCheckbox(id){
            var option = confirm('Bạn có muốn  xóa user ' + id);
            if(option === true){
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
                                <h2>Manage<b>User</b></h2>
                            </div>
                            <div class="col-xs-6">
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i
                                        class="material-icons">&#xE147;</i> <span>Add New User</span></a>
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
                            <th>USID</th>
                            <th>USERNAME</th>
                            <th>PASSWORD</th>
                            <th>ROLE_ID</th>
                            <th>EMAIL</th>
                            <th>ADDRESS</th>
                            <th>PHONE_NUMBER</th>
                            <th>ROLE_NAME</th>
                            <th>ROLE_DESC</th>
                            <th>OPTION</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listPageUser}" var="object">
                            <tr>
                                <td>
								<span class="custom-checkbox">
									<input type="checkbox" id="checkbox1" name="userID" value="${object.id}">
									<label for="checkbox1"></label>
								</span>
                                </td>
                                <td>${object.id}</td>
                                <td>${object.username}</td>
                                <td>${object.password}</td>
                                <td>${object.roleId}</td>
                                <td>${object.email}</td>
                                <td>${object.address}</td>
                                <td>${object.phoneNumber}</td>
                                <td>${object.roleName}</td>
                                <td>${object.roleDescription}</td>
                                <td>
                                    <a href="<%=request.getContextPath()%>/loadInforUser?userID=${object.id}"
                                       class="edit" data-toggle="modal"><i
                                            class="material-icons"
                                            data-toggle="tooltip"
                                            title="Edit">&#xE254;</i></a>
                                    <a href="#" onclick="showConfirm('${object.id}')" class="delete" data-toggle="modal"><i
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
                                        href="<%=request.getContextPath()%>/manageUser?index=${i}"
                                        class="page-link">${i}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Add Product -->

        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="${pageContext.request.contextPath}/addUser">
                        <div class="modal-header">
                            <h4 class="modal-title">Add User System</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Username</label>
                                <input name="username" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input name="password" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <jsp:useBean id="roleList" class="com.example.webpagejsp.dao.web.UserDao"/>
                                <select name="role" class="form-control" aria-label="Default select example">
                                    <c:forEach items="${roleList.listRole}" var="object">
                                        <option value="${object.ID}">
                                                ${object.roleName}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input name="email" type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <fmt:setLocale value="vi_VN"/>

                                <label>ADDRESS</label>
                                <input name="address" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>PHONE_NUMBER</label>
                                <input name="phoneNumber" type="number" class="form-control" required>
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