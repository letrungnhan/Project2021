/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.auth;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminLoginControl", value = "/adminLoginControl")
public class AdminLoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        try {
            AdminDao adminDao = new AdminDao();
            Admin admin = adminDao.loginAdmin(username, password);
            if (admin != null && username.equals("ADMIN") && password.equals("ADMIN")) {
                response.sendRedirect("adminHome");
            } else {
                request.getRequestDispatcher("/admin/login2.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
