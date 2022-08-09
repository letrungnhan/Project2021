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

@WebServlet(name = "Product", value = "/product")

public class ProductControl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        ProductDao pDao = new ProductDao();
        List<Product> listProduct = pDao.pagingProduct(index);
        int count = pDao.getTotalCountProduct();
        int endPage = count / 10;
        if (count % 10 != 0) {
            endPage++;
        }
        request.getSession().setAttribute("endPage", endPage);
        request.getSession().setAttribute("listProduct", listProduct);
        request.getSession().setAttribute("tagPage", indexPage);
        request.getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}

