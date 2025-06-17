package com.quitq.ecom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    @GetMapping("/")
    public String showHomePage() {
        return "home";
    }

    @GetMapping("/home")
    public String showHomePageAlt() {
        return "home";
    }

    @GetMapping("/products")
    public String showProductsPage() {
        return "products";
    }

    // Show login page (GET request)
    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    // Handle login form submission (POST request)
    @PostMapping("/login")
    public String processLogin(@RequestParam("email") String email,
                               @RequestParam("password") String password,
                               Model model) {

        System.out.println("Login Attempt: " + email + " / " + password);

        if (email.equals("user@gmail.com") && password.equals("password123")) {
            model.addAttribute("email", email);
            return "success";
        } else {
            model.addAttribute("msg", "Invalid email or password!");
            return "login";
        }
    }
}
