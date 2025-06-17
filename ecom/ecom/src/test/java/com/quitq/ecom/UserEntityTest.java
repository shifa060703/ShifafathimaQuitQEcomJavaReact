package com.quitq.ecom;

import static org.junit.jupiter.api.Assertions.*;
import com.quitq.ecom.entity.User;
import org.junit.jupiter.api.Test;

public class UserEntityTest {

    @Test
    public void testUserEntityFields() {
        User user = new User();
        user.setUserId(10);
        user.setName("Shifa");
        user.setGender("Female");
        user.setContactNumber("9999999999");
        user.setAddress("Chennai");
        user.setEmail("shifa@quitq.com");
        user.setPassword("abc123");

        assertEquals(10, user.getUserId());
        assertEquals("Shifa", user.getName());
        assertEquals("Female", user.getGender());
        assertEquals("9999999999", user.getContactNumber());
        assertEquals("Chennai", user.getAddress());
        assertEquals("shifa@quitq.com", user.getEmail());
        assertEquals("abc123", user.getPassword());
    }
}

