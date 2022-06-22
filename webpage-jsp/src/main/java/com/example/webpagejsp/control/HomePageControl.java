package com.example.webpagejsp.control;

import com.example.webpagejsp.control.dao.ProductDao;
import com.example.webpagejsp.control.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomePageControl", value = "/HomePageControl")
public class HomePageControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //load data to index.jsp
        ProductDao pd = new ProductDao();
        List<Product> listP = pd.getAllProduct();
        request.setAttribute("listProduct", listP);
        request.getRequestDispatcher("pc-shop-page.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
