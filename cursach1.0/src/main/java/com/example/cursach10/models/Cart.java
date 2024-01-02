package com.example.cursach10.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "carts")
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", totalPrice=" + totalPrice +
                ", products=" + products +
                ", user=" + user +
                '}';
    }

    @Column(name = "total_price")
    private double totalPrice;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "cart_books",
            joinColumns = @JoinColumn(name = "cart_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id")
    )
    private List<Product> products = new ArrayList<>();

@OneToOne(fetch = FetchType.LAZY)
@JoinColumn(name = "user_id")
private User user;
    @PrePersist
    private void init() {
    }
}