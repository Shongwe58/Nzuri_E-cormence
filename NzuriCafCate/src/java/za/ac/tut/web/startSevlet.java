/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;


import java.io.IOException;
import java.util.List;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ItemFacadeLocal;
import za.ac.tut.entities.Item;

/**
 *
 * @author shong
 */
public class startSevlet extends HttpServlet {
    
    @EJB ItemFacadeLocal ifl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        List<Item> items= ifl.findAll();
        session.setAttribute("items", items);
        request.getRequestDispatcher("start.jsp").forward(request, response);
    }

   
}
