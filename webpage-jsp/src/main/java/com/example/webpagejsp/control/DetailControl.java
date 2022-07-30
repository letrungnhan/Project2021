package com.example.webpagejsp.control;

import com.example.webpagejsp.dao.ProductDao;
import com.example.webpagejsp.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailControl", value = "/details")
public class DetailControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        ProductDao productDao = new ProductDao();
        Product product = productDao.getProductByID(pid);

        request.getSession().setAttribute("detail",product);
        request.getRequestDispatcher("details.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }
}
