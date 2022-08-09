/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.web;

import com.example.webpagejsp.dao.web.ProductDao;
import com.example.webpagejsp.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "categoryControl", value = "/category")
public class CategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryId = request.getParameter("categoryId");
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        ProductDao productDao = new ProductDao();
        List<Product> listProduct = productDao.getProductByCategoryID(categoryId);
        int count = productDao.getTotalCountProduct();
        int endPage = count / 10;
        if (count % 10 != 0) {
            endPage++;
        }
        request.getSession().setAttribute("listProduct", listProduct);
        request.getSession().setAttribute("tag", categoryId);
        request.getSession().setAttribute("endPage", endPage);
        request.getSession().setAttribute("tagPage", indexPage);
        request.getRequestDispatcher("/product.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}