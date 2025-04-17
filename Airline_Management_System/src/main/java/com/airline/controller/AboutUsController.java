package com.airline.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/About")
public class AboutUsController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AboutUsController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Set attributes
        request.setAttribute("pageTitle", "About Us - Dawn Airlines");
        request.setAttribute("cssPath", request.getContextPath() + "/css/airline.css");
        request.setAttribute("basePath", request.getContextPath());
        
       
        // Forward to the correct JSP
        request.getRequestDispatcher("/WEB-INF/page/About.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}