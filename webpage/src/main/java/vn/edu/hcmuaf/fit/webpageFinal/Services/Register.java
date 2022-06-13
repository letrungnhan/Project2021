package vn.edu.hcmuaf.fit.webpageFinal;

import vn.edu.hcmuaf.fit.webpageFinal.Services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "vn.edu.hcmuaf.fit.webpageFinal.Register", value = "/doRegister")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user-name");
        String password = request.getParameter("user-password");
        String email = request.getParameter("user-email");
        String registerForm = request.getParameter("register");

        if (UserServices.getUser().registerUser(username, password, email)) {
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("error", "Tài khoản đã tồn tại!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }
}
