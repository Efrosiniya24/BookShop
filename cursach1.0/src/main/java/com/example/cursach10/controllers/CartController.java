//package com.example.cursach10.controllers;
//
//import com.example.cursach10.models.Cart;
//import com.example.cursach10.repositories.CartRepository;
//import com.example.cursach10.services.CartService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import java.security.Principal;
//import java.util.List;
//
////@Controller
////@RequiredArgsConstructor
////public class CartController {
////    private final CartRepository cartRepository;
////    @GetMapping("/user/{id}")
////    public String getCart(Model model, Principal principal, @PathVariable Long id) {
////        Cart cart = cartRepository.findCartByUser(cartService.getUserByPrincipal(principal));
////        model.addAttribute("cart", cart);
////        model.addAttribute("products", cart.getProducts());
////        return "shoppingCart";
////
////    }
//@Controller
//@RequiredArgsConstructor
//public class CartController {
//
//    private final CartService cartService;
//    @GetMapping("/cart")
//    public String get(Model model) {
//        List<Cart> carts = cartService.getAll();
//        model.addAttribute("cart", carts);
//        return "shoppingCart";
//    }
//    @GetMapping("/getAllCart")
//    public List<Cart> getAll(){
//        return cartService.getAll();
//    } //выводит всю инфу из бд в корзину
//
//    @PostMapping("/AddToCart")
//    public String addToCart(Cart carts) {
//        System.out.println(carts);
//        cartService.addToCart(carts);
//        return "redirect:/allProducts";
//    }
//    @PostMapping("/AddItemToCart")
//    public String AddItemToCart(Cart cart) {
//        System.out.println(cart);
//        cartService.addToCart(cart);
//        return "redirect:/someFlowers";
//    }
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
//
//}
