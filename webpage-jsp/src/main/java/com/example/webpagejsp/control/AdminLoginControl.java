package com.example.webpagejsp.control;

import com.example.webpagejsp.context.DBContext;
import com.example.webpagejsp.dao.AdminDao;
import com.example.webpagejsp.entity.Admin;
import com.example.webpagejsp.services.AdminServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;

@WebServlet(name = "AdminLoginControl", value = "/adminLoginControl")
public class AdminLoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        try {
            AdminDao adminDao = new AdminDao(new DBContext().getConnection());
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
