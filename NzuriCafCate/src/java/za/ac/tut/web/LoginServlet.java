/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.CustomerFacadeLocal;
import za.ac.tut.ejb.bl.ItemFacadeLocal;
import za.ac.tut.entities.Customer;
import za.ac.tut.entities.Item;

/**
 *
 * @author loveness
 */
public class LoginServlet extends HttpServlet {

    @EJB CustomerFacadeLocal cfl;
    @EJB ItemFacadeLocal ifl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        String password = request.getParameter("password");
        String username = request.getParameter("username").toLowerCase();
        
    
        
        if (cfl.find(username)!= null) {
                    Customer cust =  cfl.find(username);
        
                    String customerPassword = cust.getPassword();
                    String customerUsername = cust.getId();
                    if(password.equals(customerPassword) && username.equalsIgnoreCase(customerUsername)){
            
            initialize(session);
            List<Item> items= ifl.findAll();
        session.setAttribute("items", items);
                RequestDispatcher disp = request.getRequestDispatcher("addtocart.jsp");
        disp.forward(request, response);
        }else{
        response.sendRedirect("login.jsp?msg=" + URLEncoder.encode("Invalid login details", "UTF-8"));
        
        }
        
        }else{
           response.sendRedirect("login.jsp?msg=" + URLEncoder.encode("Invalid login details", "UTF-8"));
        }
    
        

        
        
    }
    
    private void initialize(HttpSession session) {
        int quantity = 0;
        double totalCost = 0;
        List<Item> cart = new ArrayList<>();
        
        session.setAttribute("quantity", quantity);
        session.setAttribute("totalCost", totalCost);
        session.setAttribute("cart", cart);
    }
}
