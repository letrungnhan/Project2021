/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product;

import com.example.webpagejsp.dao.admin.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteProductControl", value = "/deleteProduct")
public class DeleteProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            String productID = request.getParameter("pid");
            AdminDao adminDao = new AdminDao();
            adminDao.deleteProduct(productID);
            response.sendRedirect("adminProduct");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}