package com.example.cursach10.repositories;

import com.example.cursach10.models.Product;
import com.example.cursach10.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByName(String name);
    List<Product> findByUser(User user);

    @Modifying
    @Transactional
    @Query("DELETE FROM Product p WHERE p.id = :productId")
    void deleteProductById(@Param("productId") Long productId);
}


