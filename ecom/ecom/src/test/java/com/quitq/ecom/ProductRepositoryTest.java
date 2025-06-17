package com.quitq.ecom;

import static org.junit.jupiter.api.Assertions.*;

import com.quitq.ecom.entity.Product;
import com.quitq.ecom.repository.ProductRepository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class ProductRepositoryTest {

    @Autowired
    private ProductRepository productRepo;

    @Test
    public void testGetAllProducts() {
        assertFalse(productRepo.findAll().isEmpty());
    }

    @Test
    public void testProductById() {
        Product p = productRepo.findById(1).orElse(null);
        assertNotNull(p);
        assertTrue(p.getPrice() > 0);
    }
}

