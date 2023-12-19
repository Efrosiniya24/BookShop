package com.example.cursach10.controllers;

import com.example.cursach10.models.Cart;
//import com.example.cursach10.models.CartProduct;
import com.example.cursach10.models.Product;
import com.example.cursach10.repositories.CartRepository;
import com.example.cursach10.repositories.ImageRepository;
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
import java.util.List;

//@Controller
//@RequiredArgsConstructor
//public class CartController {
//    private final CartRepository cartRepository;
//    @GetMapping("/user/{id}")
//    public String getCart(Model model, Principal principal, @PathVariable Long id) {
//        Cart cart = cartRepository.findCartByUser(cartService.getUserByPrincipal(principal));
//        model.addAttribute("cart", cart);
//        model.addAttribute("products", cart.getProducts());
//        return "shoppingCart";
//
//    }
@Controller
@RequiredArgsConstructor
public class CartController {
@Autowired
    UserService userService;
@Autowired
    private final CartService cartService;
private final ImageRepository imageRepository;
    @GetMapping("/cart")
    public String get(Model model) {
        long numberItems = cartService.numberItem(userService.getCurrentUser().getCart());
        model.addAttribute("cart", userService.getCurrentUser().getCart());
        model.addAttribute("products", userService.getCurrentUser().getCart().getProducts());
        model.addAttribute("numberItems", numberItems);
        return "shoppingCart";
    }
//    @GetMapping("/getAllCart")
//    public List<Cart> getAll(){
//        return cartService.getAll();
//    }

//    @PostMapping("/AddToCart")
//    public String addToCart(Cart carts) {
//        System.out.println(carts);
//        cartService.addToCart(carts);
//        return "redirect:/allProducts";
//    }
    @PostMapping("/AddProductToCart")
    public String AddProductToCart(@RequestParam Long product_id) {
        cartService.addProductToCart(product_id,userService.getCurrentUser().getCart());
        return "redirect:/product/allProducts";
    }

    @PostMapping("/deleteProductFromCart")
    public String deleteProductFromCart(@RequestParam Long product_id) {
        cartService.deleteProductFromCart(product_id,userService.getCurrentUser().getCart());
        return "redirect:/product/allProducts";
    }
//    @PostMapping("/cartDelete")
//    public String deleteCartT(Cart id) {
//        System.out.println(id);
//        cartService.deleteCart(id.getId());
//        return "redirect:/cart";
//    }
//    @PostMapping("/cartDeleteOfProduct")
//    public String deleteCart(Cart id) {
//        System.out.println(id);
//        cartService.deleteCart(id.getId());
//        return "redirect:/";
//    }

}
