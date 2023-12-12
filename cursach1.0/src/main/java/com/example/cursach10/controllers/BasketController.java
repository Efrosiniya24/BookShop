package com.example.cursach10.controllers;

import com.example.cursach10.models.User;
import com.example.cursach10.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class BasketController {
    private final ProductService productService;

//    @GetMapping("/basket/{id}")
//    public String product(@PathVariable Long id, @RequestParam(name = "name", required = false)String name, Principal principal, Model model) {
//        model.addAttribute("products", productService.listProduct(name));
//        model.addAttribute("user",productService.getUserByPrincipal(principal));
//        return "basket";
//    }
//    @GetMapping("/basket/{user}")
//    public String userInfo(@PathVariable("user") User user, Model model) {
//        model.addAttribute("user", user);
//        model.addAttribute("products", user.getProducts());
//        return "basket";
//    }
}
