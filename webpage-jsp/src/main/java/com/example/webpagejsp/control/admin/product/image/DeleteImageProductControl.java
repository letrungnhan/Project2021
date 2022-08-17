/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product.image;

import com.example.webpagejsp.dao.admin.AdminDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteImageProductControl", value = "/deleteImageProduct")
public class DeleteImageProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            String imageProductID = request.getParameter("imageID");
            AdminDao adminDao = new AdminDao();
            adminDao.deleteImageProduct(imageProductID);
            response.sendRedirect("createImagePage");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
