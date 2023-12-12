package com.example.cursach10.services;

import com.example.cursach10.models.Cart;
import com.example.cursach10.repositories.CartRepository;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import static java.lang.module.ModuleDescriptor.read;

//@Service
//@Slf4j
//@RequiredArgsConstructor
//public class CartService {
//
//    public final CartRepository cartRepository;
//
//    public boolean addToCart(Cart cart) {
//        if (cartRepository.findAllByNameProduct(cart.getNameproduct()) != null) {
//            return false;
//        }
//        int id = read();
//        cart.setUser_id(id);
//        cartRepository.save(cart);
//        return true;
//    }
//
//    public void deleteCart(Long id) {
//        cartRepository.deleteById(id);
//    }
//}
@Service
@Getter
@Setter
@Slf4j
@RequiredArgsConstructor
public class CartService {

    public final CartRepository cartRepository;

    public boolean addToCart(Cart cart) {
        if (cartRepository.findAllByNameProduct(cart.getNameProduct()) != null) {
            return false;
        }
//        int ID = read();
//        cart.setUser_id(ID);
        cartRepository.save(cart);
        return true;
    }

    public void deleteCart(Long id) {
        cartRepository.deleteById(id);
    }

    public List<Cart> getAll() {
        return cartRepository.findAll();
//        int ID = read();
//        return cartRepository.findAllByUser_id(ID);


    }
//
//    public int read() {
//        try {
//            BufferedReader reader = new BufferedReader(new FileReader("file.txt"));
//            String line;
//            while ((line = reader.readLine()) != null) {
//                System.out.println(line);
//                return Integer.valueOf(line);
//            }
//            reader.close();
//        } catch (IOException e) {
//            System.out.println("An error occurred while reading the file.");
//            e.printStackTrace();
//
//        }
//        return 0;
//    }
}