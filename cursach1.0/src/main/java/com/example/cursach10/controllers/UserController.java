package com.example.cursach10.controllers;

import com.example.cursach10.models.Cart;
import com.example.cursach10.models.Product;
import com.example.cursach10.models.User;
import com.example.cursach10.repositories.CartRepository;
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
    private final CartRepository cartRepository;

    //    @GetMapping("/login")
//    public String login() {
//        return "login";
//    }
    @GetMapping("/login")
    public String login(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "login";
    }

    @GetMapping("/registration")
    public String registration(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "login";
    }

    @PostMapping("/registration")
    public String CreateUSer(User user, Model model) {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с email: " +
                    user.getEmail() + " уже существует");
            return "login";
        }
        return "redirect:/login";
    }
//    @GetMapping("/user/{user}")
//    public String userInfo(@PathVariable("user") User user, Model model, Principal principal) {
////        model.addAttribute("users", userService.list());
////
////        Cart cart = cartRepository.findCartByUser(user);
////        if (cart != null) {
////            Set<Product> products = cart.getProducts();
////            model.addAttribute("products", products);
////        }
////
////        model.addAttribute("user", productService.getUserByPrincipal(principal));
//        return "shoppingCart";
//    }
//    @GetMapping("/user/{id}")
//    public String getCart(@PathVariable Long id, Model model, @PathVariable("id") User user) {
//        Cart cart = cartRepository.findCartByUser(user);
//        model.addAttribute("cart", cart);
//        model.addAttribute("products", cart.getProducts());
//        return "shoppingCart";
//    }  model.addAttribute("user", productService.getUserByPrincipal(principal));
//    @GetMapping("/user/{id}")
//    public String getCart(Model model, Principal principal,@PathVariable Long id) {
//        Cart cart = cartRepository.findCartByUser(productService.getUserByPrincipal(principal));
//        model.addAttribute("cart", cart);
//        model.addAttribute("products", cart.getProducts());
//        return "shoppingCart";
//
//}
    @GetMapping("/admin/{user}")
    public String adminInfo(@PathVariable("user") User user, Model model, Principal principal) {
        model.addAttribute("users", userService.list());
        model.addAttribute("user",productService.getUserByPrincipal(principal));
        model.addAttribute("products", user.getProducts());
        return "admin-info";
    }
}
