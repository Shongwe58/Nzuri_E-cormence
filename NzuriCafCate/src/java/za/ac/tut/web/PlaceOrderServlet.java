
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.CustomerOrderFacadeLocal;
import za.ac.tut.entities.Address;
import za.ac.tut.entities.CustomerOrder;
import za.ac.tut.entities.Item;


public class PlaceOrderServlet extends HttpServlet {

    
    @EJB CustomerOrderFacadeLocal cfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);

        double orderValue = (double)session.getAttribute("total");
        List<Item> cart = (List<Item>)session.getAttribute("cart");
        Address customerAddress = (Address)session.getAttribute("customerAddress");
        Date creationDate = new Date();
        
        CustomerOrder co = new CustomerOrder();
        co.setOrderValue(orderValue);
        co.setItems(cart);
        co.setCustomerAddress(customerAddress);
        co.setCreationDate(creationDate);
        
        cfl.create(co);
        
    }
}
