package com.quitq.ecom;


import static org.junit.jupiter.api.Assertions.*;

import com.quitq.ecom.entity.User;
import com.quitq.ecom.repository.UserRepository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class UserRepositoryTest {

    @Autowired
    private UserRepository userRepo;

    // ✅ Test 1: Login using correct email & password
    @Test
    public void testFindByEmailAndPassword() {
        User user = userRepo.findByEmailAndPassword("alice@example.com", "pass123");
        assertNotNull(user); // should not return null
        assertEquals("Alice", user.getName()); // name should match
    }

    // ✅ Test 2: Check if a user with ID 1 exists
    @Test
    public void testUserIdExists() {
        boolean exists = userRepo.existsById(1);
        assertTrue(exists); // should return true
    }

    // ✅ Test 3: Login with invalid credentials should return null
    @Test
    public void testInvalidLogin() {
        User user = userRepo.findByEmailAndPassword("wrong@email.com", "wrongpass");
        assertNull(user); // should return null for invalid
    }
}
