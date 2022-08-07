/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.services.AdminServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminCreateProductControl", value = "/createProduct")
public class AdminCreateProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("name");
        String productDesc = request.getParameter("description");
//        String SKU = request.getParameter("SKU");
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
