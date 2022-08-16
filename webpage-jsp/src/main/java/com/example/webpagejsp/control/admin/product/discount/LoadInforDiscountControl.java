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

@WebServlet(name = "LoadInforDiscountControl", value = "/loadInforDiscount")
public class LoadInforDiscountControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String discountID = request.getParameter("discountID");
        System.out.println(discountID);
        AdminDao productDao = new AdminDao();
        Discount loadInforDiscount = productDao.loadInforDiscount(discountID);

        request.getSession().setAttribute("discountInfor", loadInforDiscount);
        request.getRequestDispatcher("/admin/edit-discount-page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
