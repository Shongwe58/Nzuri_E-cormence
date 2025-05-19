/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.ejb.bl.ItemFacadeLocal;
import za.ac.tut.entities.Item;

/**
 *
 * @author shong
 */
   @MultipartConfig
public class manegerServlet extends HttpServlet {

       @EJB ItemFacadeLocal ifl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        Double price = Double.parseDouble(request.getParameter("price"));
        
        Part p = request.getPart("img");       
        InputStream input = p.getInputStream();  
        byte[] blob_img = getBolb(input);
        
        Item item  = new Item();
        item.setImage(blob_img);
        item.setName(name);
        item.setDescription(description);
        item.setPrice(price);
        ifl.create(item);
        response.sendRedirect("product.jsp");
        
    }
     private byte[] getBolb(InputStream input) {
        
        byte[] blob_img = null;
        byte[] img = new byte[16777216];
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        
        int value;
        try {
            while ((value = input.read(img)) != -1) {
                
               baos.write(img,0, value);
            }
        } catch (IOException ex) {
            ex.getMessage();
        }
        
        return blob_img = baos.toByteArray();
    }

}
