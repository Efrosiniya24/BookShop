package com.example.cursach10.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.bytebuddy.agent.builder.AgentBuilder;
import org.springframework.boot.autoconfigure.domain.EntityScan;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.*;

@Entity
@Table(name = "products")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "author")
    private String author;

    @Column(name = "price")
    private double price;

    @Column(name = "description", columnDefinition = "text")
    private String description;

    @Column(name = "PublicationHouse")
    private String PublicationHouse;

    @Column(name = "yearOfPublication")
    private int yearOfPublication;

    @Column(name = "pages")
    private int pages;

    @Column(name = "cover")
    private String cover;

    @Column(name = "weight")
    private int weight;

    @Column(name = "AgeRestriction")
    private String AgeRestriction;

    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY,
            mappedBy = "product")
    private List<Image> images = new ArrayList<>();
    @ManyToOne
    @JoinColumn(name = "user_id") // Название колонки, содержащей внешний ключ
    private User user; // Поле для связи с пользователем
    private Long previewImageId;
    private LocalDateTime dateOfCreated;

    @ManyToMany(mappedBy = "products", cascade = CascadeType.REMOVE)
    private List<Cart> carts = new ArrayList<>();
    @PrePersist
    public void init() {
        dateOfCreated = LocalDateTime.now();
    }
    public void addImageToProduct(Image image) {
        image.setProduct(this);
        images.add(image);
    }
}