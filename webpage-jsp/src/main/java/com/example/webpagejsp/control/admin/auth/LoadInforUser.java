/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.auth;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadInforUser", value = "/loadInforUser")
public class LoadInforUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userID = request.getParameter("userID");
        AdminDao userDao = new AdminDao();
        User userInfor = userDao.loadUserByID(userID);

        request.getSession().setAttribute("userInfor", userInfor);
        request.getRequestDispatcher("/admin/edit-user-page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
