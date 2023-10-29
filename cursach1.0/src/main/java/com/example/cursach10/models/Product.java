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
    private Long id;
    private String name;
    private String author;
    private double price;
    private String description;
    private String PublicationHouse;
    private int yearOfPublication;
    private int pages;
    private String cover;
    private int weight;
    private String AgeRestriction;


}
