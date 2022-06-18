package com.example.webpagejsp.control;

import com.example.webpagejsp.control.dao.LoginDao;
import com.example.webpagejsp.control.entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginControl", value = "/doLogin")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("user-name");
            String password = request.getParameter("user-password");
            LoginDao loginDao = new LoginDao();
            Account a = loginDao.checkLogin(username, password);
            if (a == null) {
                request.setAttribute("error", "Thông tin đăng nhập không hợp lệ.");
                request.getRequestDispatcher("login.jsp").forward(request, response);

            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (Exception e) {


        }
    }
}
