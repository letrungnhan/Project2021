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

@WebServlet(name = "AdminCreateProductControl", value = "/createProduct")
public class AddProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String productName = request.getParameter("name");
        String productDesc = request.getParameter("description");
        String productCategory = request.getParameter("category");
        String productInventoryID = request.getParameter("inventory-id");
        double productPrice = Double.parseDouble(request.getParameter("price"));
        String productDiscount = request.getParameter("discount");

        AdminDao adminDao = new AdminDao();
        adminDao.createProduct(new AdminProduct(productName, productDesc, productCategory, productInventoryID, productPrice, productDiscount));
        response.sendRedirect("adminProduct");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
