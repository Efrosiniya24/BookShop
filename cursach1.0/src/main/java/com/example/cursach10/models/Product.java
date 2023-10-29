package com.example.cursach10.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@Entity
@Table(name= "products")
@NoArgsConstructor
@Data
@AllArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
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


}
