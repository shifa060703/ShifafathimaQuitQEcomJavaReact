package com.quitq.ecom;

public class LoginUser {
    private String email;
    private String password;

    public LoginUser() {
        System.out.println("LoginUser default constructor...");
    }

    public LoginUser(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
        System.out.println("setEmail() called");
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
        System.out.println("setPassword() called");
    }

    @Override
    public String toString() {
        return "LoginUser [email=" + email + ", password=" + password + "]";
    }
}
