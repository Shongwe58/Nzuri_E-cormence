package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.AddressFacadeLocal;
import za.ac.tut.entities.Address;
import za.ac.tut.entities.Item;

/**
 *
 * @author loveness
 */
public class CheckoutServlet extends HttpServlet {

    @EJB AddressFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String block = request.getParameter("block");
        String housenumber = request.getParameter("house");
        String room = request.getParameter("room").toUpperCase();
        
        Address customerAddress = new Address();
        customerAddress.setBlock(block);
        customerAddress.setHousenumber(housenumber);
        customerAddress.setRoom(room);
                
        List<Item> cart = (List<Item>)session.getAttribute("cart");
        
        String addressS = "Block: " + block + "-" + housenumber + "-" + room;
        
        Integer numItems = cart.size();
           
        Double totalCost = (Double)session.getAttribute("totalCost");
        Double delivery = 7.50 ;
        Double service = 4.00;
        Double total = totalCost + delivery + service;
        
        session.setAttribute("delivery", delivery);
        session.setAttribute("service", service);
        session.setAttribute("total", total);
        session.setAttribute("addressS", addressS);
        session.setAttribute("numItems", numItems);
        session.setAttribute("customerAddress", customerAddress);
                
        RequestDispatcher disp = request.getRequestDispatcher("checkout.jsp");
        disp.forward(request, response);
        
    }
}
