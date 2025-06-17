package com.quitq.ecom;

import static org.junit.jupiter.api.Assertions.*;
import com.quitq.ecom.entity.Product;
import org.junit.jupiter.api.Test;

public class ProductEntityTest {

    @Test
    public void testProductEntityFields() {
        Product p = new Product();
        p.setProductId(5);
        p.setProductName("Test Product");
        p.setCategoryName("Fashion");
        p.setPrice(1299.99);
        p.setStockNumber(20);
        


        assertEquals("Test Product", p.getProductName());
        assertEquals("Fashion", p.getCategoryName());
        assertEquals(1299.99, p.getPrice());
        assertEquals(20, p.getStockNumber());
        
    }
}
