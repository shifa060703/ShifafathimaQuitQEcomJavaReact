package com.quitq.ecom;

import static org.junit.jupiter.api.Assertions.*;

import com.quitq.ecom.entity.Seller;
import com.quitq.ecom.repository.SellerRepository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class SellerRepositoryTest {

    @Autowired
    private SellerRepository sellerRepo;

    @Test
    public void testFindAllSellers() {
        assertFalse(sellerRepo.findAll().isEmpty());
    }

    @Test
    public void testSellerIdExists() {
        assertTrue(sellerRepo.existsById(1));
    }
}

