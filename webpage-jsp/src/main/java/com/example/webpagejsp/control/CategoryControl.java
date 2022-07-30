package com.example.webpagejsp.control;

import com.example.webpagejsp.dao.ProductDao;
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
        ProductDao productDao = new ProductDao();
        List<Product> listProduct = productDao.getProductByCategoryID(categoryId);

        request.getSession().setAttribute("listProduct", listProduct);
        request.getSession().setAttribute("tag", categoryId);


        request.getRequestDispatcher("/Product").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}