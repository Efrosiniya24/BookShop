//package com.example.cursach10.models;
//
//import lombok.*;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//
//import javax.persistence.*;
//
//@Entity
//@Table(name = "cart_items")
//@Data
//@AllArgsConstructor
//@NoArgsConstructor
//@Getter
//@Setter
//public class CartProduct {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    @Column(name = "id")
//    private Long id;
//
//    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
//    @JoinColumn(name = "cart_id")
//    private Cart cart;
//
//    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
//    @JoinColumn(name = "product_id")
//    private Product product;
//
//    @Column(name = "quantity")
//    private int quantity;
//
//}