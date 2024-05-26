import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        LocalDate joinDate = LocalDate.parse(request.getParameter("joinDate"));
        LocalDate endDate = LocalDate.parse(request.getParameter("endDate"));

        Connection con = null;
        PreparedStatement insertStmt = null;

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym_db?useSSL=false","root","2002" );

            // Insert query
            String insertQuery = "INSERT INTO members (name, email, phone, join_date, end_date) VALUES (?, ?, ?, ?, ?)";
            insertStmt = con.prepareStatement(insertQuery);
            insertStmt.setString(1, name);
            insertStmt.setString(2, email);
            insertStmt.setString(3, phone);
            insertStmt.setDate(4, java.sql.Date.valueOf(joinDate));
            insertStmt.setDate(5, java.sql.Date.valueOf(endDate));
            insertStmt.executeUpdate();

            // Redirect to confirmation page
            response.sendRedirect("confirmation.jsp");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Redirect to error page or handle error accordingly
            response.sendRedirect("error1.jsp");
        } finally {
            // Close resources
            try {
                if (insertStmt != null) {
                    insertStmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
