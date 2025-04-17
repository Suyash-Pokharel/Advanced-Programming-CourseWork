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
@WebServlet("/login")
public class LoginController extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            redirectBasedOnRole(user, req, resp);
            return;
        }

        // Check for "remember me" cookie
        String rememberedEmail = getRememberedEmail(req);
        if (rememberedEmail != null) {
            req.setAttribute("rememberedEmail", rememberedEmail);
        }

        setCommonAttributes(req);
        req.getRequestDispatcher("/WEB-INF/page/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            User user = authenticateUser(email, password);
            if (user != null) {
                handleSuccessfulLogin(req, resp, user);
                return;
            }
            handleFailedLogin(req, resp, "Invalid email or password.");
        } catch (NoSuchAlgorithmException e) {
            handleFailedLogin(req, resp, "System error. Please try again.");
        }
    }

    private String getRememberedEmail(HttpServletRequest req) {
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("rememberedEmail".equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

    private User authenticateUser(String email, String password)
            throws NoSuchAlgorithmException {
        String hashedPassword = PasswordUtil.hashPassword(password);
        return userService.login(email, hashedPassword);
    }

    private void handleSuccessfulLogin(HttpServletRequest req,
                                       HttpServletResponse resp,
                                       User user) throws IOException {
        HttpSession session = req.getSession();
        session.setAttribute("user", user);

        // "Remember Me" Cookie
        Cookie cookie = new Cookie("rememberedEmail",
                "on".equals(req.getParameter("remember")) ? user.getEmail() : "");
        cookie.setMaxAge("on".equals(req.getParameter("remember")) ? 2592000 : 0); // 30 days
        cookie.setPath(req.getContextPath());
        resp.addCookie(cookie);

        redirectBasedOnRole(user, req, resp);
    }

    private void redirectBasedOnRole(User user, HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String role = user.getRole();
        if ("ADMIN".equalsIgnoreCase(role)) {
            resp.sendRedirect(req.getContextPath() + "/adminDashboard");
        } else {
            resp.sendRedirect(req.getContextPath() + "/passengerDashboard");
        }
    }

    private void handleFailedLogin(HttpServletRequest req,
                                   HttpServletResponse resp,
                                   String errorMessage)
            throws ServletException, IOException {
        req.setAttribute("error", errorMessage);
        setCommonAttributes(req);
        req.getRequestDispatcher("/WEB-INF/page/login.jsp").forward(req, resp);
    }

    private void setCommonAttributes(HttpServletRequest req) {
        req.setAttribute("cssPath", req.getContextPath() + "/css/airline.css");
        req.setAttribute("bannerImagePath", req.getContextPath() + "/Image/kathmandu.jpg");
    }
}
