package com.example.webpagejsp.control;


import com.example.webpagejsp.context.DBContext;
import com.example.webpagejsp.dao.AdminDao;
import com.example.webpagejsp.entity.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;

@WebServlet(name = "AdminPageControl", value = "/adminPageControl")
public class AdminPageControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("user-name");
            String password = request.getParameter("user-password");

            System.out.println(username);
            System.out.println(username);

            AdminDao adminDao = new AdminDao(new DBContext().getConnection());
            Admin a = adminDao.loginAdmin(username, password);

            if (a != null && username.equals("admin") && password.equals("admin")) {
                response.sendRedirect("adminPage.jsp");
            } else {
                request.setAttribute("error", "Thông tin đăng nhập không hợp lệ.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } catch (Exception e) {

        }
    }
}
