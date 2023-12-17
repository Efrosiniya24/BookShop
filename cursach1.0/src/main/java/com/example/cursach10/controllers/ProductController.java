package com.example.cursach10.controllers;

import com.example.cursach10.models.Product;
import com.example.cursach10.models.User;
import com.example.cursach10.models.enums.Role;
import com.example.cursach10.services.ProductService;
import com.example.cursach10.services.UserService;
import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

import static com.example.cursach10.models.enums.Role.ROLE_USER;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    private final UserService userService;
//    private final CartRepository cartRepository;

    @GetMapping("/")
    public String product(@RequestParam(name = "name", required = false) String name, Principal principal, Model model) {
        model.addAttribute("users", userService.list());
        model.addAttribute("products", productService.listProduct(name));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("roles", Role.values());
        if(productService.getUserByPrincipal(principal).isAdmin())
            return "admin_page";
        else
            return "products";

    }

    @RequestMapping(value = "/product/allProducts", method = RequestMethod.GET)
    public String productList(@RequestParam(name = "name", required = false) String name, Model model, Principal principal) {
        model.addAttribute("products", productService.listProduct(name));
        model.addAttribute("users", userService.list());
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "allProducts";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        return "product-info";
    }


//    @PostMapping("/product/{id}")
//    public String updateProductInfo(@PathVariable Long id, @ModelAttribute("product") Product updatedProduct, Model model) {
//        Product product = productService.getProductById(id);
//        model.addAttribute("product", product);
//        model.addAttribute("images", product.getImages());
//        return "product-info";
//    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3, Product product, Principal principal) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3);
        return "redirect:/";
    }


//    @PostMapping("/product/cart")
//    public String cart(@RequestParam("productId") Product productId, @RequestParam("userId") User userId) {
//        Cart cart = cartRepository.findCartByUser(userId);
//        if (cart == null)
//            cart = new Cart();
//        else {
//            for (Product p : cart.getProducts()) {
//                if (productId.getId().equals(p.getId()))
//                    return "redirect:/";
//            }
//        }
//        if (!cart.getProducts().contains(productId)) {
//            cart.addProduct(productId);
//            cartRepository.save(cart);
//        }
//        return "redirect:/";
//    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }
}