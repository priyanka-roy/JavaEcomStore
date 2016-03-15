package com.estore.dao;


import java.util.List;

import com.estore.model.Product;

public interface ProductDao {

    void addProduct(Product product);

    void editProduct(Product product);

    Product getProductById(Long id);

    List<Product> getProductList();

    void deleteProduct(Product product);
}
