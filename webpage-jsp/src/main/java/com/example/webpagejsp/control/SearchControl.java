/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control;

import com.example.webpagejsp.dao.ProductDao;
import com.example.webpagejsp.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchControl", value = "/search")
public class SearchControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String textSearch = request.getParameter("text");
            request.setCharacterEncoding("UTF-8");
            ProductDao dao = new ProductDao();
            List<Product> listSearch = dao.searchByName(textSearch);

            request.getSession().setAttribute("listProduct",listSearch);
            request.getSession().setAttribute("textSearch",textSearch);
            request.getRequestDispatcher("/product.jsp").forward(request,response);
        }catch (ServletException e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
