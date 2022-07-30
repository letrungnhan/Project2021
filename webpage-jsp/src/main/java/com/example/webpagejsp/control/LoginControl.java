package com.example.webpagejsp.control;

import com.example.webpagejsp.dao.LoginDao;
import com.example.webpagejsp.entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "loginControl", value = "/doLogin")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("user-name");
            String password = request.getParameter("user-password");

            System.out.println(username);
            System.out.println(username);

            LoginDao loginDao = new LoginDao();
            Account a = loginDao.checkLogin(username, password);

            if (a != null && !Objects.equals(a.getUsername(), "admin") && !Objects.equals(a.getPassword(), "admin")) {
                response.sendRedirect("index.jsp");
            } else {
                request.setAttribute("error", "Thông tin đăng nhập không hợp lệ.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } catch (Exception e) {

        }
    }
}
