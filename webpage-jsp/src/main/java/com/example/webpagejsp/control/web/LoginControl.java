/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.web;

import com.example.webpagejsp.dao.web.UserDao;
import com.example.webpagejsp.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "loginControl", value = "/login")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user-name");
        String password = request.getParameter("user-password");
        System.out.println(username);
        System.out.println(password);
        UserDao userDao = new UserDao();
        User account = userDao.checkLogin(username, password);
        try {
            if (account == null) {
                request.setAttribute("error", "Thông tin đăng nhập không hợp lệ.");
                request.getRequestDispatcher("/login.jsp").forward(request, response);

            } else if (account != null && username.equals("ADMIN") && password.equals("ADMIN") && account.getRoleId().equalsIgnoreCase("R001") && account.getRoleName().equalsIgnoreCase("admin")) {
                response.sendRedirect("adminHome");

            } else {
                HttpSession session = request.getSession();
                session.setAttribute("account", account);
                response.sendRedirect("home");
            }
        } catch (Exception e) {
            e.printStackTrace();


        }


    }
}

