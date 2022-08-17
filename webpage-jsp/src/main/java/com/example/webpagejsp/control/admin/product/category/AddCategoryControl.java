/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product.category;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddCategoryControl", value = "/addCategory")
public class AddCategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String categoryName = request.getParameter("categoryName");
        String categoryID = request.getParameter("categoryID");

        AdminDao adminDao = new AdminDao();
        adminDao.createCategoryProduct(new Category(categoryID,categoryName));
        response.sendRedirect("adminProductCategory");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    this.doGet(request, response);
    }
}
