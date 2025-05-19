package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.CustomerFacadeLocal;
import za.ac.tut.entities.Customer;


public class SignUpServlet extends HttpServlet {

    @EJB CustomerFacadeLocal cfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String block = request.getParameter("block");
        String phone_number = request.getParameter("phone_number");
        String password = request.getParameter("password");
        String username = request.getParameter("username").toLowerCase();
        
        
        
        if (cfl.find(username ) == null) {
            Customer customer = new Customer();
            customer.setName(name);
            customer.setSurname(surname);
            customer.setBlock(block);
            customer.setPhone_number(phone_number);
            customer.setPassword(password);
            customer.setId(username);
             cfl.create(customer);
        
        RequestDispatcher disp = request.getRequestDispatcher("login.jsp");
        disp.forward(request, response);
        }else{
        
         response.sendRedirect("signup.jsp?msg=" + URLEncoder.encode(" Already have an account Sign In", "UTF-8"));
        
        }
        
       
        
    }
    
    
}
