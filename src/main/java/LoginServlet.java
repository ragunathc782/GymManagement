import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("txtname");
        String pwd = request.getParameter("pwd");
        
        LoginBean lb = new LoginBean();
        lb.setEmail(email);
        lb.setPwd(pwd);
        
        boolean status = lb.validate();
        request.setAttribute("mybean", lb);
        
        if(status) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }}

