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

@WebServlet(name = "loadInforCategoryControl", value = "/loadInforCategoryControl")
public class LoadInforCategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryID = request.getParameter("categoryID");
        AdminDao productDao = new AdminDao();
        Category loadProductCategory = productDao.loadProductCategory(categoryID);

        request.getSession().setAttribute("categoryInfor", loadProductCategory);
        request.getRequestDispatcher("/admin/edit-category-page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
