/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author loveness
 */
public class ManagerLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("password");
        String messege= null;
        
        if (username.equals("adminroot") && password.equals("#nzuri")) {
            request.getRequestDispatcher("admin_Page.html").forward(request, response);
        }else{
            messege= "Invalid login details";
          response.sendRedirect("managerlogin.jsp?msg=" + URLEncoder.encode(messege, "UTF-8"));
        }
    }

}
