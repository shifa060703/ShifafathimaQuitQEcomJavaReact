package com.quitq.ecom.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.quitq.ecom.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
}
