package com.example.cursach10.controllers;

import com.example.cursach10.models.User;
import com.example.cursach10.services.ProductService;
import com.example.cursach10.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;
@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final ProductService productService;
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String CreateUSer(User user, Model model) {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с email: " +
                    user.getEmail() + " уже существует");
            return "registration";
        }
        return "redirect:/login";
    }
    @GetMapping("/admin/{user}")
    public String adminInfo(@PathVariable("user") Long id, Model model, Principal principal) {
        model.addAttribute("users", userService.list());
        model.addAttribute("user", userService.getById(id));
        return "admin-info";
    }
    @GetMapping("/profile")
    public String profile(Model model) {
        model.addAttribute("users", userService.list());
        model.addAttribute("user", userService.getCurrentUser());
        model.addAttribute("products", userService.getCurrentUser().getProducts());
        return "/profile";
    }
}

