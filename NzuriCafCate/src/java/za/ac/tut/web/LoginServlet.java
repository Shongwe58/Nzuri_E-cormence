/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
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
import za.ac.tut.entities.Customer;
import za.ac.tut.entities.Item;

/**
 *
 * @author loveness
 */
public class LoginServlet extends HttpServlet {

    @EJB CustomerFacadeLocal cfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        String password = request.getParameter("password");
        String username = request.getParameter("username");
        
        System.out.println(password);
        System.out.println(username);
        
        Customer cust =  cfl.find(username);
        
        String customerPassword = cust.getPassword();
        String customerUsername = cust.getId();
        
        System.out.println(cust.getId());
        System.out.println(cust.getPassword());
        
        String path = "login.jsp";
        
        if(password.equals(customerPassword) && username.equals(customerUsername)){
            path = "addtocart.jsp";
            initialize(session);
        }
        
        RequestDispatcher disp = request.getRequestDispatcher(path);
        disp.forward(request, response);
        
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
