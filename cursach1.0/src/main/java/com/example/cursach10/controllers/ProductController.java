package com.example.cursach10.controllers;

import com.example.cursach10.models.Product;
import com.example.cursach10.models.User;
import com.example.cursach10.models.enums.Role;
import com.example.cursach10.repositories.ProductRepository;
import com.example.cursach10.services.ProductService;
import com.example.cursach10.services.UserService;
import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.IOException;
import java.security.Principal;

import static com.example.cursach10.models.enums.Role.ROLE_USER;

@Controller
@RequiredArgsConstructor
public class ProductController {
    @Autowired
    private final ProductService productService;
    @Autowired
    private final UserService userService;
    @Autowired
    private final ProductRepository productRepository;

    @GetMapping("/")
    public String product(@RequestParam(name = "name", required = false) String name, Principal principal, Model model) {
        model.addAttribute("users", userService.list());
        model.addAttribute("products", productService.findAll());
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("roles", Role.values());

        User currentUser = userService.getCurrentUser();
        if (currentUser == null ) {
            return "products";
        }
        else if (currentUser.isAdmin()) {
            return "admin_page";
        }else
            return "products";
    }


    @RequestMapping(value = "/product/allProducts", method = RequestMethod.GET)
    public String productList(@RequestParam(name = "name", required = false) String name, Model model, Principal principal) {
        model.addAttribute("products", productService.listProduct(name));
        model.addAttribute("users", userService.list());
        model.addAttribute("user", userService.getCurrentUser());
        return "allProducts";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3, Product product, Principal principal) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3);
        return "redirect:/";
    }
    @PostMapping("/product/delete")
    public String deleteProduct(@RequestParam Long product_id) {
        productService.deleteProductWithImages(product_id);
        return "redirect:/product/allProducts";
    }
}