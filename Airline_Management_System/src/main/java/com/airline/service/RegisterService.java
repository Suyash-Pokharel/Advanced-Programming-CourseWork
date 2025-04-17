package com.airline.service;

import com.airline.config.DbConfig;
import com.airline.model.User;

import com.airline.util.PasswordUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterService {
    public boolean registerUser(User user) {
        String sql = "INSERT INTO User (fullName, email, phoneNumber, password, userType) VALUES (?, ?, ?, ?, ?)";
        
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            // Hash the password before storing
            String hashedPassword = PasswordUtil.hashPassword(user.getPassword());
            
            stmt.setString(1, user.getFullname());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPhone());
            stmt.setString(4, hashedPassword);
            stmt.setString(5, "customer"); // Default user type
            
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
            
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean isEmailExists(String email) {
        String sql = "SELECT email FROM User WHERE email = ?";
        
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            return rs.next();
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}