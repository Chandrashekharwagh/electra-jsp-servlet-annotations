package com.electra.web.service;


import com.electra.web.model.Product;
import com.electra.web.repository.ProductRepository;

import java.sql.SQLException;
import java.util.List;

public class ProductService {
    private static ProductRepository productRepository = new ProductRepository();

    public boolean insertProducts(Product product) throws SQLException {
        if (productRepository.insertProducts(product)) {
            System.out.println("Product inserted successfully!");
        } else {
            System.out.println("Failed to insert Product.");
            return false;
        }
        return true;
    }

    // Method to retrieve products of the database
    public static List<Product> retrieveProducts() {
        return productRepository.retrieveProducts();

    }
}
