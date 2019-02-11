package pl.pragmaticcoders.services;

import pl.pragmaticcoders.model.Product;

import java.util.List;

public interface ProductService {

    void save(Product product);

    void update(Product product);

    Product findFirstById(Long id);

    void delete(Long id);

    List<Product> findByType(String type);
}
