package com.quitq.ecom;


import static org.junit.jupiter.api.Assertions.*;
import com.quitq.ecom.entity.Seller;
import org.junit.jupiter.api.Test;

public class SellerEntityTest {

    @Test
    public void testSellerEntityFields() {
        Seller s = new Seller();
        s.setSellerId(11);
        s.setName("Seller One");
        s.setEmail("seller@example.com");
        s.setPassword("seller123");
        s.setContactNumber("8888888888");
        s.setAddress("Delhi");

        assertEquals(11, s.getSellerId());
        assertEquals("Seller One", s.getName());
        assertEquals("seller@example.com", s.getEmail());
        assertEquals("seller123", s.getPassword());
        assertEquals("8888888888", s.getContactNumber());
        assertEquals("Delhi", s.getAddress());
    }
}

