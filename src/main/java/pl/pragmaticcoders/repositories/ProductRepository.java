package pl.pragmaticcoders.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.pragmaticcoders.model.Product;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findByType(String type);

    Product findFirstById(Long id);

}
