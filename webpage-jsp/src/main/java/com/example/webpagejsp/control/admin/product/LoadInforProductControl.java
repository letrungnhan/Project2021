/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.AdminProduct;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoadInforProduct", value = "/loadInforProduct")
public class LoadInforProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        AdminDao productDao = new AdminDao();
        AdminProduct editProduct = productDao.loadProductByID(pid);

        request.getSession().setAttribute("editProduct", editProduct);
        request.getRequestDispatcher("/admin/edit-product-page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
