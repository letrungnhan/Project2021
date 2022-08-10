/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.auth;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AdminLoginControl", value = "/adminLoginControl")
public class AdminLoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        session.setAttribute("account", username);
        session.setAttribute("password", password);
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
            response.sendRedirect("/admin/401.jsp");
            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
