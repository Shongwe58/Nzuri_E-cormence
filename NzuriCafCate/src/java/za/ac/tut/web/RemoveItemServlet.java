package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entities.Item;


public class RemoveItemServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        Long itemID = Long.parseLong(request.getParameter("item"));
        Double totalCost = (Double)session.getAttribute("totalCost");
        List<Item> cart = (List<Item>)session.getAttribute("cart");
        for(int i = 0; i < cart.size(); i++){
            if(cart.get(i).getId() == itemID){
                totalCost = totalCost - cart.get(i).getPrice();
                cart.remove(cart.get(i));
                break;
            }
        }
       
        session.setAttribute("totalCost", totalCost);
        session.setAttribute("cart", cart);
        
        response.sendRedirect("cart.jsp");
    }
}
