package pl.pragmaticcoders.controllers;

import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import pl.pragmaticcoders.config.AppConfig;
import pl.pragmaticcoders.model.Cart;
import pl.pragmaticcoders.model.CartItem;
import pl.pragmaticcoders.model.Product;
import static org.junit.jupiter.api.Assertions.*;


@RunWith(SpringRunner.class)
@ContextConfiguration(classes = AppConfig.class)
class CartControllerTest {

    Cart cart = new Cart();
    CartItem cartItem = new CartItem();


    @Test
   void addtocart() {

        Product proc = new Product();

        cartItem.setQuantity(1);
        cartItem.setProduct(proc);
        proc.setImageUrl("url");
        proc.setDescription("desc");
        proc.setPrice(123);
        proc.setModel("Model");
        proc.setManufacturer("Intel");
        proc.setType("procesory");
        proc.setId(1);

        cart.addToCart(cartItem);

        Assert.assertEquals(cartItem.getProduct(), cartItem.getProduct());
    }

    @Test
     void delete() {

        Product ram = new Product();

        cartItem.setQuantity(1);
        ram.setImageUrl("url");
        ram.setDescription("desc");
        ram.setPrice(123);
        ram.setModel("Model");
        ram.setManufacturer("Trident");
        ram.setType("ram");
        ram.setId(1);

        cart.addToCart(cartItem);

        cart.getCartItems().remove(ram);

        Assert.assertNull(cartItem.getProduct());
    }

    @Test
    void cart() {

        cart.getCartItems().size();
        assertEquals(0,cart.getCartItems().size());
}

    }