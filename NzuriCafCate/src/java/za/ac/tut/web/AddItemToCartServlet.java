package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ItemFacadeLocal;
import za.ac.tut.entities.Item;


public class AddItemToCartServlet extends HttpServlet {

    @EJB ItemFacadeLocal ifl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        Long item = Long.parseLong(request.getParameter("item"));
        
        Item i = ifl.find(item);
        
        List<Item> cart = (List<Item>)session.getAttribute("cart");
        cart.add(i);
        Double totalCost = (Double)session.getAttribute("totalCost");
        totalCost = totalCost + i.getPrice();
        session.setAttribute("totalCost", totalCost);
        session.setAttribute("cart", cart);
        
        System.out.println(totalCost);
        
        response.sendRedirect("addtocart.jsp");
       
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        RequestDispatcher disp = request.getRequestDispatcher("cart.jsp");
        disp.forward(request, response);
    }
}
