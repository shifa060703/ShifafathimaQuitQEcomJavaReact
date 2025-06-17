package com.quitq.ecom;


import static org.junit.jupiter.api.Assertions.*;

import com.quitq.ecom.entity.OrderItem;
import com.quitq.ecom.repository.OrderItemRepository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class OrderItemRepositoryTest {

    @Autowired
    private OrderItemRepository orderItemRepo;

    @Test
    public void testOrderItemExists() {
        assertTrue(orderItemRepo.existsById(1));
    }

    @Test
    public void testFetchAllOrderItems() {
        assertFalse(orderItemRepo.findAll().isEmpty());
    }
}

