/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.web;

import com.example.webpagejsp.dao.web.ProductDao;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.entity.ImageProduct;
import com.example.webpagejsp.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailControl", value = "/details")
public class DetailControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        ProductDao productDao = new ProductDao();
        Product product = productDao.getProductByID(pid);
        List<ImageProduct> imageDetails = productDao.getImageProdcutByID(pid);
        request.getSession().setAttribute("detail", product);
        request.getSession().setAttribute("detailImage", imageDetails);
        request.getRequestDispatcher("details.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }
}
