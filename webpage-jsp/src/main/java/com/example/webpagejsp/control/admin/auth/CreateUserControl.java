/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.auth;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateUserControl", value = "/addUser")
public class CreateUserControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String userName = request.getParameter("username");
        String userPassword = request.getParameter("password");
        String userRole = request.getParameter("role");
        String userEmail = request.getParameter("email");
        String userAddress = request.getParameter("address");
        int userPhone = Integer.parseInt(request.getParameter("phoneNumber"));

        AdminDao adminDao = new AdminDao();
        adminDao.createUser(new User(userName, userPassword, userRole, userEmail, userAddress, userPhone));
        response.sendRedirect("manageUser");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
