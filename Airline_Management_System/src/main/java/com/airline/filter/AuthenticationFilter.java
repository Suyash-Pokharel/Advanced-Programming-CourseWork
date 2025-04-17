package com.airline.filter;

import com.airline.model.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebFilter(urlPatterns = {
        "/dashboard/*",
        "/profile/*",
        "/booking/*",
        "/admin/*"
        // Add other protected paths (not direct JSPs)
})
public class AuthenticationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String contextPath = req.getContextPath();

        try {
            HttpSession session = req.getSession(false);
            User user = (session != null) ? (User) session.getAttribute("user") : null;

            if (user == null) {
                // Not logged in - redirect to login with original URL
                String redirectUrl = contextPath + "/login?redirect=" + 
                                   HttpServletResponse.SC_UNAUTHORIZED + 
                                   "&originalUrl=" + 
                                   req.getRequestURI();
                resp.sendRedirect(redirectUrl);
                return;
            }
            
            // User is authenticated - continue request
            chain.doFilter(request, response);
            
        } catch (Exception e) {
            // Log error and redirect to error page
            e.printStackTrace();
            resp.sendRedirect(contextPath + "/error?code=500");
        }
    }

    @Override
    public void init(FilterConfig filterConfig) {
        // Initialization if needed
    }

    @Override
    public void destroy() {
        // Cleanup if needed
    }
}