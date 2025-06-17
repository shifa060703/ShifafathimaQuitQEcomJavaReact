package com.quitq.ecom.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.quitq.ecom.entity.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
}

