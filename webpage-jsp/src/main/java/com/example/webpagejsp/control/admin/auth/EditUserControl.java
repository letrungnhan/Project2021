/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.control.admin.auth;

import com.example.webpagejsp.dao.admin.AdminDao;
import com.example.webpagejsp.entity.User;
import com.example.webpagejsp.services.AdminServices;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditUserControl", value = "/editUser")
public class EditUserControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String userID = request.getParameter("userID");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));
        try {
            AdminServices adminDao = new AdminDao();
            adminDao.updateUser(new User(username, password, role, email, address, phoneNumber), userID);
            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Update user thành công');");
            pw.println("</script>");
            RequestDispatcher rd = request.getRequestDispatcher("manageUser");
            rd.include(request, response);


        } catch (
                Exception e) {
            e.printStackTrace();
        }
    }
}
