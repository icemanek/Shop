package pl.pragmaticcoders.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.pragmaticcoders.model.Cart;
import pl.pragmaticcoders.model.CartItem;
import pl.pragmaticcoders.model.Product;
import pl.pragmaticcoders.services.ProductService;

import javax.validation.Valid;
import java.util.List;

@Controller
public class CartController {

    @Autowired
    private Cart cart;
    @Autowired
    ProductService productService;


    @RequestMapping("/addToCart/{id}/{quantity}")
    public String addtocart(@PathVariable Long id, @PathVariable int quantity) {
        int n = quantity;

     try {
         Product product = productService.findFirstById(id);
         List<CartItem> products = cart.getCartItems();
         boolean inCart = false;

         for (int i = 0; i < products.size(); i++) {
             if (id == cart.getCartItems().get(i).getProduct().getId()) {
                 for (int j = 0; j < products.size(); j++) {
                     if (products.get(j).getProduct().getId() == id) {
                         products.get(j).setQuantity(products.get(j).getQuantity() + quantity);
                         inCart = true;
                         return "redirect:/cart";
                     }
                 }
                 if (!inCart) {
                     product = products.get(i).getProduct();
                     cart.addToCart(new CartItem(n, product));
                     return "redirect:/cart";
                 }
             }

         }
         cart.addToCart(new CartItem(n, product));

     }catch (NullPointerException e){
         e.printStackTrace();
         System.out.println("NullPointerException cart adding");
         return "Error";
     }

        return "redirect:/cart";
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable Long id, Model model) {
        int index = 0;
        try {

        for (int i = 0; i < cart.getCartItems().size(); i++) {
            if (id == cart.getCartItems().get(i).getProduct().getId()) {
                index = i;
            }
        }
            cart.getCartItems().remove(index);
            model.addAttribute("cart", cart);

        }catch (NullPointerException e){
            e.printStackTrace();
            System.out.println("NullPointerException cart delete");
            return "Error";
        }

        return "redirect:/cart";
    }



    @RequestMapping("/cart")
    public String cart(Model model) {
      try {
          model.addAttribute("cart", cart);

          int items = cart.getCartItems().size();
          int numOfProducts = 0;
          int total = 0;

          for (int i = 0; i < cart.getCartItems().size(); i++) {
              int q = cart.getCartItems().get(i).getQuantity();
              double tot = cart.getCartItems().get(i).getProduct().getPrice() * q;
              numOfProducts += q;
              total += tot;
          }
          model.addAttribute("items", items);
          model.addAttribute("numOfProducts", numOfProducts);
          model.addAttribute("total", total);

      } catch (NullPointerException e){
          e.printStackTrace();
          System.out.println("NullPointerException cart view");
          return "Error";

      } catch (IllegalArgumentException e){
          e.printStackTrace();
          System.out.println("IllegalArgumentException cart view");
          return "Error";
      }

        return "cart";
    }
}