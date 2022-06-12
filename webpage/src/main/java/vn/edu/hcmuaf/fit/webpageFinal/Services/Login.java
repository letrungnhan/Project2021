package vn.edu.hcmuaf.fit.webpageFinal;

import vn.edu.hcmuaf.fit.webpageFinal.dao.AccountDAO;
import vn.edu.hcmuaf.fit.webpageFinal.entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/doLogin")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("user-name");
            String password = request.getParameter("user-password");
            AccountDAO accountDAO = new AccountDAO();
            Account user = accountDAO.checkLogin(username, password);


            //check login
            if (user == null) {
                request.setAttribute("error", "Đăng nhập KHÔNG thành công.Bạn vui lòng thử lại hoặc đăng nhập bằng cách khác nhé!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (Exception e) {

        }
    }
}
