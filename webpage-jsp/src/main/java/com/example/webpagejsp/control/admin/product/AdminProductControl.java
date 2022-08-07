/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.dao.ProductDao;
import com.example.webpagejsp.entity.AdminProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminProductControl", value = "/adminProduct")
public class AdminProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        AdminDao adminDao = new AdminDao();
        ProductDao productDao = new ProductDao();
        List<AdminProduct> listPage = adminDao.pagingAdmin(index);
        int count = productDao.getTotalCount();
        int endPage = count / 10;
        if (count % 10 != 0) {
            endPage++;
        }
        request.getSession().setAttribute("endPage", endPage);
        request.getSession().setAttribute("listPage", listPage);
        request.getSession().setAttribute("tag", indexPage);
        request.getRequestDispatcher("/admin/manager-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
