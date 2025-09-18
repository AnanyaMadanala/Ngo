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
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("register.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String username = request.getParameter("username");
        String lastname = request.getParameter("lastname");
        String password = request.getParameter("password");
        String contact = request.getParameter("contact");
        String status = request.getParameter("status"); 
        String ngo_id=request.getParameter("ngo_id");
        String ngo_name=request.getParameter("ngo_name");
        String email=request.getParameter("email");
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo","root","root");
            String sql = "INSERT INTO users (firstname, username, lastname, password, contact, status, ngo_id, ngo_name) VALUES (?,?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, firstname);
            ps.setString(2, username);
            ps.setString(3, lastname);
            ps.setString(4, password);
            ps.setString(5, contact);
            ps.setString(6, status);
            ps.setString(7, ngo_id);
            ps.setString(8, ngo_name);
            ps.setString(9, email);
            System.out.println(sql);
            
            int rowsAffected = 0;
            rowsAffected= ps.executeUpdate();
            if (rowsAffected > 0) {
                request.setAttribute("username", username);
                request.setAttribute("lastname", lastname);
                request.setAttribute("firstname", firstname);
                request.setAttribute("contact", contact);
                request.setAttribute("status", status);
                request.setAttribute("ngo_id", ngo_id);
                request.setAttribute("ngo_name", ngo_name);
                request.setAttribute("email", email);
                RequestDispatcher rd = request.getRequestDispatcher("userDetails.jsp");
                rd.forward(request, response);
            } else{
                response.sendRedirect("register.jsp");
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        response.sendRedirect("register.jsp");

    }
}