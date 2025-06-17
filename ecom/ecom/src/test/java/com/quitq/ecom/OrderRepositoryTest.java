package com.quitq.ecom;

import static org.junit.jupiter.api.Assertions.*;

import com.quitq.ecom.entity.Order;
import com.quitq.ecom.repository.OrderRepository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class OrderRepositoryTest {

    @Autowired
    private OrderRepository orderRepo;

    @Test
    public void testFindOrderById() {
        Order order = orderRepo.findById(1).orElse(null);
        assertNotNull(order);
        assertTrue(order.getTotalAmount() > 0);
    }

    @Test
    public void testAllOrdersLoaded() {
        assertFalse(orderRepo.findAll().isEmpty());
    }
}

