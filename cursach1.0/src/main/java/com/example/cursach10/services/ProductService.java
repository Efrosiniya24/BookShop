package com.example.cursach10.services;

import org.springframework.stereotype.Service;
import com.example.cursach10.models.Product;

import java.util.ArrayList;
import java.util.List;
@Service
public class ProductService {

    public List<Product> listProduct(){return products;}

    public void saveProduct(Product product){
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id){

        products.removeIf(product1 -> product1.getId().equals(id));
    }

    public Product getProductById(Long id){
        for(Product product1: products) {
            if (product1.getId().equals(id)) return product1;
        }
        return null;
    }
}