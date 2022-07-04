package com.example.webpagejsp.control;

import com.example.webpagejsp.dao.ProductDao;
import com.example.webpagejsp.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryControl", value = "/CategoryControl")
public class CategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryId = request.getParameter("categoryId");
        System.out.println(categoryId);
        ProductDao productDao = new ProductDao();
        List<Product> listProduct = productDao.getListProduct();

        request.setAttribute("listProd", listProduct);
        request.getRequestDispatcher("Product").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}