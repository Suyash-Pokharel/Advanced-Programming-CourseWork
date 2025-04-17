package com.airline.controller;

import com.airline.model.User;
import com.airline.service.UserService;
import com.airline.util.PasswordUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@SuppressWarnings("serial")
@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        // Set CSS path before forwarding to JSP
        req.setAttribute("cssPath", req.getContextPath() + "/css/login.css");

        req.getRequestDispatcher("/WEB-INF/page/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Set CSS path for error cases
        req.setAttribute("cssPath", req.getContextPath() + "/css/login.css");

        
        String fullname = req.getParameter("fullname");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirm_password");

        if (!password.equals(confirmPassword)) {
            req.setAttribute("error", "Passwords do not match");
            doGet(req, resp);
            return;
        }

        try {
            String hashedPassword = PasswordUtil.hashPassword(password);
            User user = new User(fullname, email, phone, hashedPassword);

            if (userService.registerUser(user)) {
                // For success case, we'll use login.css if needed
                req.setAttribute("success", "Registration successful. Please login.");
                req.setAttribute("cssPath", req.getContextPath() + "/css/airline.css");
                req.getRequestDispatcher("/WEB-INF/page/login.jsp").forward(req, resp);
            } else {
                req.setAttribute("error", "Registration failed. Email may be taken.");
                doGet(req, resp);
            }
        } catch (NoSuchAlgorithmException e) {
            req.setAttribute("error", "System error. Please try again.");
            doGet(req, resp);
            e.printStackTrace();
        }
    }
}