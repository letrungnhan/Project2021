/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product.image;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.ImageProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadInforImageProduct", value = "/loadInforImageProduct")
public class LoadInforImageProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String imageID = request.getParameter("imageId");
        AdminDao productDao = new AdminDao();
        ImageProduct productImageInfor = productDao.loadImageProductByID(imageID);
        request.getSession().setAttribute("productImageInfor", productImageInfor);
        request.getRequestDispatcher("/admin/edit-image-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
