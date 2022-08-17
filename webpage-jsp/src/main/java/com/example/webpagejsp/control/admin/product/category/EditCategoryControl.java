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

@WebServlet(name = "EditCategory", value = "/EditCategory")
public class EditCategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryID = request.getParameter("categoryID");
        String categoryName = request.getParameter("categoryName");
        try {
            AdminDao adminDao = new AdminDao();
            adminDao.updateCategory(new Category(categoryID, categoryName), categoryID);
            response.sendRedirect("adminProductCategory");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
