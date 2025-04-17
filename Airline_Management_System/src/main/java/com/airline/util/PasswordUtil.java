package com.airline.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Base64;

public class PasswordUtil {
    public static String hashPassword(String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(password.getBytes());
        byte[] hashedPassword = md.digest();
        return Base64.getEncoder().encodeToString(hashedPassword);
    }
    
    public static boolean verifyPassword(String inputPassword, String storedPassword) throws NoSuchAlgorithmException {
        String hashedInput = hashPassword(inputPassword);
        return hashedInput.equals(storedPassword);
    }
    
    public static String generateRandomPassword() {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder(8);
        
        for (int i = 0; i < 8; i++) {
            int randomIndex = random.nextInt(chars.length());
            sb.append(chars.charAt(randomIndex));
        }
        
        return sb.toString();
    }
}