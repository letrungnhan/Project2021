package com.example.webpagejsp.control;

import com.example.webpagejsp.dao.ProductDao;
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
        ProductDao pDao = new ProductDao();
        List<Product> listProduct = pDao.getListProduct();
        request.getSession().setAttribute("listProduct", listProduct);
        request.getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}

