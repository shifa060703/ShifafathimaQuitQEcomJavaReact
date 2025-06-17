package com.quitq.ecom.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.quitq.ecom.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
}
