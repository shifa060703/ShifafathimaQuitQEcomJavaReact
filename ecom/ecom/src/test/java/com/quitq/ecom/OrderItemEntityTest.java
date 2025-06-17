package com.quitq.ecom;

import com.quitq.ecom.entity.OrderItem;
import com.quitq.ecom.entity.Order;
import com.quitq.ecom.entity.Product;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class OrderItemEntityTest {

    @Test
    public void testOrderItemEntityFields() {
        OrderItem item = new OrderItem();
        item.setOrderItemId(501);
        item.setQuantity(2);
        item.setPrice(1499.50);

        Order order = new Order();
        order.setOrderId(1001);
        item.setOrder(order);

        Product product = new Product();
        product.setProductId(10);
        item.setProduct(product);

        assertEquals(501, item.getOrderItemId());
        assertEquals(2, item.getQuantity());
        assertEquals(1499.50, item.getPrice());
        assertEquals(1001, item.getOrder().getOrderId());
        assertEquals(10, item.getProduct().getProductId());
    }
}
