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
//    private final CartProductRepository cartProductRepository;

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
        cart.setTotalPrice(price);
        cartRepository.save(cart);
    }
    public void deleteProductFromCart(Long product_id, Cart cart) {
        List<Product> products = cart.getProducts();
        products.removeIf(product -> product.getId().equals(product_id));
        cart.setProducts(products);
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


//    public void removeProduct(Product product, Cart cart) {
//        List<Product> products = cart.getProducts();
//        for (Product cartProducts : products) {
//            if (cartProducts.getName().equals(product.getName())) {
//                cartProductRepository.deleteById(product.getId());
//                recalculateTotalPrice(cart);
//                return;
//            }
//        }
//    }

    public List<Cart> getAll() {
        return cartRepository.findAll();
    }

}


//package com.example.cursach10.services;
//
//import com.example.cursach10.models.Cart;
//import com.example.cursach10.repositories.CartRepository;
//import lombok.Getter;
//import lombok.RequiredArgsConstructor;
//import lombok.Setter;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.stereotype.Service;
//
//import java.io.BufferedReader;
//import java.io.FileReader;
//import java.io.IOException;
//import java.util.List;
//
//import static java.lang.module.ModuleDescriptor.read;
//
////@Service
////@Slf4j
////@RequiredArgsConstructor
////public class CartService {
////
////    public final CartRepository cartRepository;
////
////    public boolean addToCart(Cart cart) {
////        if (cartRepository.findAllByNameProduct(cart.getNameproduct()) != null) {
////            return false;
////        }
////        int id = read();
////        cart.setUser_id(id);
////        cartRepository.save(cart);
////        return true;
////    }
////
////    public void deleteCart(Long id) {
////        cartRepository.deleteById(id);
////    }
////}
//@Service
//@Getter
//@Setter
//@Slf4j
//@RequiredArgsConstructor
//public class CartService {
//
//    public final CartRepository cartRepository;
//
//    public boolean addToCart(Cart cart) {
//        if (cartRepository.findAllByNameProduct(cart.getNameProduct()) != null) {
//            return false;
//        }
////        int ID = read();
////        cart.setUser_id(ID);
//        cartRepository.save(cart);
//        return true;
//    }
//
//    public void deleteCart(Long id) {
//        cartRepository.deleteById(id);
//    }
//
//    public List<Cart> getAll() {
//        return cartRepository.findAll();
////        int ID = read();
////        return cartRepository.findAllByUser_id(ID);
//
//
//    }
////
////    public int read() {
////        try {
////            BufferedReader reader = new BufferedReader(new FileReader("file.txt"));
////            String line;
////            while ((line = reader.readLine()) != null) {
////                System.out.println(line);
////                return Integer.valueOf(line);
////            }
////            reader.close();
////        } catch (IOException e) {
////            System.out.println("An error occurred while reading the file.");
////            e.printStackTrace();
////
////        }
////        return 0;
////    }
//}