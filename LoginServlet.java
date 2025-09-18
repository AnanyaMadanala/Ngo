/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class LoginServlet extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("login.jsp");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String contact= request.getParameter("contact");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "root");
            // Use a PreparedStatement to prevent SQL injection and insert data
            String sql = "INSERT INTO users (firstname, lastname,email, contact) VALUES (?, ?, ? ,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, firstname);
            ps.setString(2,lastname);
            ps.setString(3, email);
            ps.setString(4, contact);
            System.out.println(sql);
            
            int rowsAffected =0;
            rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                // If a new user is successfully registered, you can redirect them to a success page or login page
                request.setAttribute("firstname", firstname);
                request.setAttribute("lastname", lastname);
                request.setAttribute("email", email);
                request.setAttribute("contact",contact);
                
                RequestDispatcher rd = request.getRequestDispatcher("loginDetails.jsp");
                rd.forward(request, response);
            } else {
                // Handle cases where no rows were affected
                response.sendRedirect("login.jsp");
            }
            con.close();
            
        } catch (Exception e) {
            System.out.println(e);
        }
        response.sendRedirect("loginDetails.jsp");
    }
}