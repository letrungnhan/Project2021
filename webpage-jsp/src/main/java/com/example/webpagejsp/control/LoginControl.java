package control;

import dao.LoginDao;
import entity.Account;

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
                response.sendRedirect("login-register.jsp");
            } else {

            }
        } catch (Exception e) {


        }
    }
}
