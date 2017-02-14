package com.pavan.mvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pavan.mvc.dao.ProductDao;
import com.pavan.mvc.model.Product;

@Transactional
@Repository
public class ProductDaoImpl implements ProductDao{
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Product getProductById(Long productId) {
		Session session = sessionFactory.getCurrentSession();
		Product product = (Product)session.get(Product.class, productId);
		session.flush();
		// TODO Auto-generated method stub
		return product;
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product");
		List<Product> products = query.list();
		session.flush();
		return products;
	}

	public void deleteProduct(Long productId) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(getProductById(productId));
		session.flush();
	}

	public void addProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		// TODO Auto-generated method stub
		
	}

}
