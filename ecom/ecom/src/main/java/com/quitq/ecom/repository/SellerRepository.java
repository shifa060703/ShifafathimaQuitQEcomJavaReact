package com.quitq.ecom.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.quitq.ecom.entity.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer> {
}

