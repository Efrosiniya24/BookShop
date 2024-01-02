package com.example.cursach10.services;

import com.example.cursach10.models.Cart;
//import com.example.cursach10.models.CartProduct;
import com.example.cursach10.models.Product;
//import com.example.cursach10.repositories.CartProductRepository;
import com.example.cursach10.repositories.CartRepository;
import com.example.cursach10.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CartService {
    @Autowired
    UserService userService;

    @Autowired
    ProductRepository productRepository;
    @Autowired
    private final CartRepository cartRepository;
    public void addProductToCart(Long product_id, Cart cart) {
        if (cart == null) {
            cart = new Cart();
        }

        Product product = productRepository.findById(product_id).get();
        List<Product> products = cart.getProducts();
        products.add(product);
        cart.setProducts(products);
        cart.setUser(userService.getCurrentUser());
        double price = recalculateTotalPrice(cart);
        System.out.println(price);
        cart.setTotalPrice(price);
        cartRepository.save(cart);
    }
    public void deleteProductFromCart(Long product_id, Cart cart) {
        List<Product> products = cart.getProducts();
        for(Product product: products){
            if(product.getId().equals(product_id)) {
                products.remove(product);
                break;
            }
        }
        cart.setProducts(products);
        cart.setUser(userService.getCurrentUser());
        double price = recalculateTotalPrice(cart);

        cart.setTotalPrice(price);
        cartRepository.save(cart);
    }
    public static double recalculateTotalPrice(Cart cart) {
        double totalPrice = 0;
        if (cart != null) {
            List<Product> products = cart.getProducts();
            for (Product product : products) {
                totalPrice += product.getPrice();
            }
            return totalPrice;
        }
        return 0;
    }

    public long numberItem(Cart cart) {
        if (cart != null) {
            List<Product> products = cart.getProducts();
            return products.size();
        }
        return 0;
    }

    public List<Cart> getAll() {
        return cartRepository.findAll();
    }


}
