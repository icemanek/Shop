package pl.pragmaticcoders.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.pragmaticcoders.model.Cart;
import pl.pragmaticcoders.model.CartItem;
import pl.pragmaticcoders.model.Product;
import pl.pragmaticcoders.services.ProductService;

import java.util.List;

@Controller
public class ProductController {


    @Autowired
    private Cart cart;

    @Autowired
    private ProductService productService;

    @GetMapping("/mainboard")
    public String mainboard(Model model) {
        List<Product> products = productService.findByType("mainboard");

       try {
           model.addAttribute("products", products);
       }catch (NullPointerException e){
           e.printStackTrace();
           System.out.println("NullPointerException mainboard add");
           return "Error";


       } catch (IllegalArgumentException e){
           e.printStackTrace();
           System.out.println("IllegalArgumentException mainboard add");
           return "Error";
       }


        return "products";
    }

    @GetMapping("/procesory")
    public String procesory(Model model) {
        List<Product> products = productService.findByType("procesory");

      try {
          model.addAttribute("products", products);

      }catch (NullPointerException e){
          e.printStackTrace();
          System.out.println("NullPointerException procesory add");
          return "Error";


      } catch (IllegalArgumentException e){
          e.printStackTrace();
          System.out.println("IllegalArgumentException procesory add");
          return "Error";

      }


        return "products";
    }


    @GetMapping("/ram")
    public String ram(Model model) {

        List<Product> products = productService.findByType("ram");
      try{
          model.addAttribute("products", products);
      }catch (NullPointerException e){
          e.printStackTrace();
          System.out.println("NullPointerException ram add");
          return "Error";

      } catch (IllegalArgumentException e){
          e.printStackTrace();
          System.out.println("IllegalArgumentException ram add");
          return "Error";
      }


        return "products";
    }

    @GetMapping("/obudowy")
    public String obudowy(Model model) {

        List<Product> products = productService.findByType("obudowy");
       try{

           model.addAttribute("products", products);
       }catch (NullPointerException e){
           e.printStackTrace();
           System.out.println("NullPointerException obudowy add");
           return "Error";

       } catch (IllegalArgumentException e){
           e.printStackTrace();
           System.out.println("IllegalArgumentException obudowy add");
           return "Error";}


        return "products";
    }

    @GetMapping("/zasilacze")
    public String zasilacze(Model model) {

        List<Product> products = productService.findByType("zasilacze");
      try {
          model.addAttribute("products", products);
      }catch (NullPointerException e){
          e.printStackTrace();
          System.out.println("NullPointerException zasilacze add");
          return "Error";

      } catch (IllegalArgumentException e){
          e.printStackTrace();
          System.out.println("IllegalArgumentException zasilacze add");
          return "Error";
      }


        return "products";
    }

    @GetMapping("/p/{id}")
    public String productGet(@PathVariable Long id, Model model) {

        try {
            Product product = productService.findFirstById(id);
            model.addAttribute(product);

        } catch (NullPointerException e) {
            e.printStackTrace();
            System.out.println("NullPointerException product find GET");
            return "Error";
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            System.out.println("IllegalArgumentException product find GET");
            return "Error";
        }

        return "productSpecs";
    }

    @PostMapping("/p/{id}")
    public String productPost(@PathVariable Long id, Model model) {
      try {
          Product product = productService.findFirstById(id);

          model.addAttribute(product);
          CartItem cartItem = new CartItem();
          cart.addToCart(cartItem);

      }catch (NullPointerException e) {
          e.printStackTrace();
          System.out.println("NullPointerException product find POST");
          return "Error";

      } catch (IllegalArgumentException e) {
          e.printStackTrace();
          System.out.println("IllegalArgumentException product find POST");
          return "Error";
      }

        return "redirect:/cart";
    }


}
