package com.quitq.ecom;

import com.quitq.ecom.entity.Cart;
import com.quitq.ecom.entity.User;
import com.quitq.ecom.entity.Product;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class CartEntityTest {

    @Test
    public void testCartEntityFields() {
        Cart c = new Cart();
        c.setCartId(101);
        c.setQuantity(3);

        
        User user = new User();
        user.setUserId(1);
        c.setUser(user);

        Product product = new Product();
        product.setProductId(10);
        c.setProduct(product);

        // Assertions
        assertEquals(101, c.getCartId());
        assertEquals(3, c.getQuantity());
        assertEquals(1, c.getUser().getUserId());
        assertEquals(10, c.getProduct().getProductId());
    }
}
