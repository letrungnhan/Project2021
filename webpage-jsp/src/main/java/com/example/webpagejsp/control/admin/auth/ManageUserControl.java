/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.auth;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.dao.web.ProductDao;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageUserControl", value = "/manageUserControl")
public class ManageUserControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        AdminDao adminDao = new AdminDao();
        ProductDao productDao = new ProductDao();
        List<User> listPage = adminDao.pagingManagerUser(index);
        int count = productDao.getTotalCountUser();
        int endPage = count / 10;
        if (count % 10 != 0) {
            endPage++;
        }
        request.getSession().setAttribute("endPage", endPage);
        request.getSession().setAttribute("listPageUser", listPage);
        request.getSession().setAttribute("tag", indexPage);
        request.getRequestDispatcher("/admin/manage-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
