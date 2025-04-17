package com.airline.model;

public class User {
    private int id;
    private String fullname;
    private String email;
    private String phone;
    private String password;
    private String role; // ADDED: role field

    // No-argument constructor
    public User() {}

    // Parameterized constructor (without ID)
    public User(String fullname, String email, String phone, String password, String role) {
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.role = role;
    }

    // Full constructor including ID
    public User(int id, String fullname, String email, String phone, String password, String role) {
        this.id = id;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.role = role;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
