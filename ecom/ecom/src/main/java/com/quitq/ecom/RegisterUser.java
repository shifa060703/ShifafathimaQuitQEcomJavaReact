package com.quitq.ecom;

public class RegisterUser {
    private String name;
    private String email;
    private String password;

    public RegisterUser() {
        System.out.println("RegisterUser default constructor...");
    }

    public RegisterUser(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
        System.out.println("setName() called");
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
        return "RegisterUser [name=" + name + ", email=" + email + ", password=" + password + "]";
    }
}
