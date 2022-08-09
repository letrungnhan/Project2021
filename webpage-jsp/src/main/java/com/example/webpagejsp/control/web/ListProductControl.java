/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control;

import com.example.webpagejsp.dao.web.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ListProduct", value = "/listProduct")
public class ListProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao productDao = new ProductDao();
        int count = productDao.getTotalCountProduct();
        int endPage = count / 3;
        if (count % 3 != 0) {
            endPage++;
        }
        request.setAttribute("endPage", endPage);
        request.getRequestDispatcher("/admin/CRUD/product-create.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
