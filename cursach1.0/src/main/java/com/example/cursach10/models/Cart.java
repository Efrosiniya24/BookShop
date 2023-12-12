package com.example.cursach10.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "cart")
    public class Cart {
        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        @Column(name="id")
        private Long id;
        @Column(name="nameproduct")
        private String nameProduct;
        @Column(name="cost")
        private int cost;
        @Column(name="image")
        private String image;
        @Column(name="user_id")
        private int user_id;


//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;
//
//    @OneToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
//    @JoinColumn(name = "user_id")
//    private User user;
//
//    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH})
//    @JoinTable(
//            name = "cart_items",
//            joinColumns = @JoinColumn(name = "cart_id"),
//            inverseJoinColumns = @JoinColumn(name = "product_id")
//    )
//    private Set<Product> products = new HashSet<>();
//
//    private LocalDateTime createdAt;
//
//    @PrePersist
//    private void onCreate() {
//        createdAt = LocalDateTime.now();
//    }
//
//    //    public void addProduct(Product product) {
////        products.add(product);
//////        product.getCarts().add(this);
////    }
//    public void addProduct(Product product) {
//        for (Product p : this.products) {
//            if (p.getId().equals(product.getId())) {
//                return; // Product already exists in cart
//            }
//        }
//
//        this.products.add(product);
//    }
//
//    public void removeProduct(Product product) {
//        products.remove(product);
////        product.getCarts().remove(this);
//    }

}
