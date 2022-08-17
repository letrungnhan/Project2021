/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.web;

import com.example.webpagejsp.dao.web.UserDao;
import com.example.webpagejsp.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterControl", value = "/register")
public class RegisterControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("user-name");
        String password = request.getParameter("user-password");
        String rePassword = request.getParameter("re-password");
        String email = request.getParameter("user-email");
        String address = request.getParameter("address");
        int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));

        if (!password.equals(rePassword)) {
            response.sendRedirect("/register.jsp");
        } else {
            UserDao userDao = new UserDao();
            User user = userDao.checkUserExist(username);
            if(user==null){
                userDao.register(username, password, email, address, phoneNumber);
                response.sendRedirect("login.jsp");
            }else{
                request.setAttribute("error", "Thông tin đăng ký không hợp lệ.");
                response.sendRedirect("/register.jsp");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
