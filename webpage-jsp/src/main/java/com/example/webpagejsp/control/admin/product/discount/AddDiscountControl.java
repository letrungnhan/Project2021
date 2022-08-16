/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product.discount;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.Discount;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddDiscountControl", value = "/addDiscount")
public class AddDiscountControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String discountID = request.getParameter("discountID");
        String discountName = request.getParameter("discountName");
        float discountPercent = Float.parseFloat(request.getParameter("discountPercent"));
        String discountStatus = request.getParameter("discountStatus");
        AdminDao adminDao = new AdminDao();
        try {
            adminDao.createDiscount(new Discount(discountID, discountName, discountPercent, discountStatus));
            response.sendRedirect("discount");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
