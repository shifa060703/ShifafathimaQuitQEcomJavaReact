package com.quitq.ecom;

import com.quitq.ecom.entity.Order;
import com.quitq.ecom.entity.User;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

public class OrderEntityTest {

    @Test
    public void testOrderEntityFields() {
        Order order = new Order();
        order.setOrderId(1001);
        order.setOrderDate(LocalDateTime.of(2024, 12, 31, 10, 30));
        order.setShippingAddress("Chennai");
        order.setTotalAmount(2999.99);

        User user = new User();
        user.setUserId(1);
        order.setUser(user);

        assertEquals(1001, order.getOrderId());
        assertEquals("Chennai", order.getShippingAddress());
        assertEquals(2999.99, order.getTotalAmount());
        assertEquals(1, order.getUser().getUserId());
        assertEquals(2024, order.getOrderDate().getYear());
    }
}
