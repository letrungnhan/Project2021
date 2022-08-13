/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product.image;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.ImageProduct;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddImageProdcutControl", value = "/addImageProduct")
public class AddImageProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String productID = request.getParameter("productID");
        String imageURL = request.getParameter("imageURL");

        AdminDao adminDao = new AdminDao();
        adminDao.createImageProduct(new ImageProduct(productID, imageURL));
        response.sendRedirect("createImagePage");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
