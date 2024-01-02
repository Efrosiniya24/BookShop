package com.example.cursach10.controllers;

import com.example.cursach10.models.Cart;
//import com.example.cursach10.models.CartProduct;
import com.example.cursach10.models.Product;
import com.example.cursach10.models.User;
import com.example.cursach10.repositories.CartRepository;
import com.example.cursach10.repositories.ImageRepository;
import com.example.cursach10.repositories.UserRepository;
import com.example.cursach10.services.CartService;
import com.example.cursach10.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class CartController {
@Autowired
    UserService userService;
@Autowired
    private final CartService cartService;
private final ImageRepository imageRepository;
private final UserRepository userRepository;
    @GetMapping("/cart")
    public String get(Model model) {
        if (userService.getCurrentUser().getCart() == null) {
            Cart cart = new Cart();
            userService.getCurrentUser().setCart(cart);
            userRepository.save(userService.getCurrentUser());
            List<Product> products = new ArrayList<>();
            model.addAttribute("products", products);
            model.addAttribute("numberItems", 0);
            return "shoppingCart";
        }
        long numberItems = cartService.numberItem(userService.getCurrentUser().getCart());
        model.addAttribute("cart", userService.getCurrentUser().getCart());
        model.addAttribute("products", userService.getCurrentUser().getCart().getProducts());
        model.addAttribute("numberItems", numberItems);
        return "shoppingCart";
    }

    @PostMapping("/AddProductToCart")
    public String AddProductToCart(@RequestParam Long product_id) {
        cartService.addProductToCart(product_id,userService.getCurrentUser().getCart());
        return "redirect:/product/allProducts";
    }

    @PostMapping("/deleteProductFromCart")
    public String deleteProductFromCart(@RequestParam Long product_id) {
        cartService.deleteProductFromCart(product_id,userService.getCurrentUser().getCart());
        return "redirect:/cart";
    }

}
