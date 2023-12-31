package com.example.cursach10.services;

import com.example.cursach10.models.Cart;
import com.example.cursach10.models.Image;
import com.example.cursach10.models.User;
import com.example.cursach10.repositories.ImageRepository;
import com.example.cursach10.repositories.ProductRepository;
import com.example.cursach10.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.cursach10.models.Product;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    @Autowired
    private final ProductRepository productRepository;
    @Autowired
    private final UserRepository userRepository;
    @Autowired
    private final UserService userService;
    private final ImageRepository imageRepository;

    public List<Product> listProduct(String name) {
        if (name != null) return productRepository.findByName(name);
        return productRepository.findAll();
    }
    public List<Product> findAll(){
       return productRepository.findAll();
    }

    public void saveProduct(Principal principal, Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        product.setUser(userService.getCurrentUser());
        Image image1;
        Image image2;
        Image image3;

        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            product.addImageToProduct(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            product.addImageToProduct(image3);
        }
        log.info("Saving new Product.Name: {}; Author email: {}", product.getName(), product.getUser().getEmail());
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImages().get(0).getId());
        productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }


    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setSize(file.getSize());
        image.setOriginalFileName(image.getOriginalFileName());
        image.setContentType(file.getContentType());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteProduct(Long id){
        productRepository.deleteById(id);
    }
    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    @Transactional
    public void deleteProductWithImages(Long productId) {
        Product product = productRepository.findById(productId).orElse(null);
        if (product != null) {
            List<Image> images = product.getImages();
            imageRepository.deleteAll(images);
            productRepository.delete(product);

        }
    }

}