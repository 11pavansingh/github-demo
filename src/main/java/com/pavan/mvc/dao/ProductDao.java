package com.pavan.mvc.dao;

import java.util.List;

import com.pavan.mvc.model.Product;

public interface ProductDao {
	
	Product getProductById(Long productId);
	List<Product> getAllProducts();
	void deleteProduct(Long productId);
	void addProduct(Product product);

}
