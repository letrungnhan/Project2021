/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.product.image;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.dao.web.ProductDao;
import com.example.webpagejsp.entity.ImageProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminCreateProductImageControl", value = "/createImagePage")
public class AdminProductImageControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String indexPageImage = request.getParameter("index");
        if (indexPageImage == null) {
            indexPageImage = "1";
        }
        int index = Integer.parseInt(indexPageImage);
        AdminDao adminDao = new AdminDao();
        ProductDao productDao = new ProductDao();
        List<ImageProduct> listPage = adminDao.pagingAdminProductImage(index);
        int count = productDao.getTotalCountProductImage();
        int endPageImage = count / 10;
        if (count % 10 != 0) {
            endPageImage++;
        }
        request.getSession().setAttribute("endPage", endPageImage);
        request.getSession().setAttribute("listPageImage", listPage);
        request.getSession().setAttribute("tag", indexPageImage);
        request.getRequestDispatcher("/admin/manager-product-image.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);

    }
}
