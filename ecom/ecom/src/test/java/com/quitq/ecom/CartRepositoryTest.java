package com.quitq.ecom;

import static org.junit.jupiter.api.Assertions.*;

import com.quitq.ecom.entity.Cart;
import com.quitq.ecom.repository.CartRepository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CartRepositoryTest {

    @Autowired
    private CartRepository cartRepo;


    @Test
    public void testCartIsNotEmpty() {
        assertFalse(cartRepo.findAll().isEmpty());
    }
}

