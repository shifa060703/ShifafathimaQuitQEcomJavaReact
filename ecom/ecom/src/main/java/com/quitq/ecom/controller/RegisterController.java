package com.quitq.ecom.controller;

import com.quitq.ecom.RegisterUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegisterController {

    @GetMapping("/register")
    public String showRegisterForm() {
        return "register";
    }

    @PostMapping("/register")
    public String handleRegister(RegisterUser user, Model model) {
        System.out.println("Registered User: " + user);
        model.addAttribute("name", user.getName());
        model.addAttribute("email", user.getEmail());
        return "register-success";
    }
}

