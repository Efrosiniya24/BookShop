package com.example.cursach10.controllers;

import com.example.cursach10.models.Product;
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
import java.util.List;
import java.util.Set;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final ProductService productService;
    //    private final CartRepository cartRepository;
//    @GetMapping("/login")
//    public String login(Principal principal, Model model) {
//        model.addAttribute("user", userService.getUserByPrincipal(principal));
//        return "login";
//    }
//
//    @GetMapping("/registration")
//    public String registration(Principal principal, Model model) {
//        model.addAttribute("user", userService.getUserByPrincipal(principal));
//        return "registration";
//    }
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
//    @GetMapping("/admin/{user}")
//    public String adminInfo(@PathVariable("user") User user, Model model) {
//        model.addAttribute("users", userService.list());
//        model.addAttribute("user", userService.getCurrentUser());
//        model.addAttribute("products", user.getProducts());
//        return "admin-info";
//    }
    @GetMapping("/admin/{user}")
    public String adminInfo(@PathVariable("user") User user, Model model, Principal principal) {
        model.addAttribute("users", userService.list());
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("products", user.getProducts());
        return "admin-info";
    }
//    @GetMapping("/admin/{user}")
//    public String adminInfo(@PathVariable("user") User user, Model model) {
//        model.addAttribute("users", userService.list());
//        model.addAttribute("user", userService.getCurrentUser());
//        model.addAttribute("products", user.getProducts());
//        return "admin-info";
//    }

//    @GetMapping("/admin/{user}")
//    public String adminInfo(@PathVariable("user") Long userId, Model model) {
//        model.addAttribute("users", userService.list());
//        model.addAttribute("user", userService.getCurrentUser());
//        model.addAttribute("products", userService.getById(userId).getProducts());
//        return "admin-info";
//    }

//    public String adminInfo(@PathVariable("user") Long userId, Model model) {
//        User userFromDb = userService.getById(userId);
//        model.addAttribute("users", userService.list());
//        model.addAttribute("user", userService.getCurrentUser());
//        model.addAttribute("products", userFromDb.getProducts());
//        return "admin-info";
//    }

//    @GetMapping("/admin/{user}")
//    public String adminInfo(@PathVariable("user") Long userId, Model model) {
//        User currentUser = userService.getCurrentUser();
//
//        if (currentUser == null || !currentUser.isAdmin()) {
//            // Handle the case when the user is not authenticated or not an admin
//            return "redirect:/";
//        }
//
//        User userFromDb = userService.getById(userId);
//        model.addAttribute("users", userService.list());
//        model.addAttribute("user", currentUser);
//        model.addAttribute("products", userFromDb.getProducts());
//        return "admin-info";
//    }

    @GetMapping("/profile")
    public String profile(Model model, Principal principal) {
        model.addAttribute("users", userService.list());
        model.addAttribute("user", userService.getCurrentUser());
        model.addAttribute("products", userService.getCurrentUser().getProducts());
//        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "/profile";
    }
}

