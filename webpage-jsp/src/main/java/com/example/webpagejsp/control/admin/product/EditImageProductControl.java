/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.ImageProduct;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditImageProduct", value = "/editImageProduct")
public class EditImageProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String imageId = request.getParameter("imageID");
        String imageURl = request.getParameter("imageURL");
        String productID = request.getParameter("productID");

        try {
            AdminDao adminDao = new AdminDao();
            adminDao.updateProductImage(new ImageProduct(imageId, productID, imageURl), imageId);
            response.sendRedirect("createImagePage");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
