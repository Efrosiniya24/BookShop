package com.example.cursach10.repositories;

import com.example.cursach10.models.Cart;
import com.example.cursach10.models.Product;
import com.example.cursach10.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart,Long> {
}
