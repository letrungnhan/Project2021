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
import java.util.List;

@WebServlet(name = "DicountControl", value = "/discount")
public class DiscountControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminDao adminDao = new AdminDao();
        List<Discount> discountList = adminDao.getListDiscount();

        request.getSession().setAttribute("listDiscount", discountList);
        request.getRequestDispatcher("/admin/manager-discount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
