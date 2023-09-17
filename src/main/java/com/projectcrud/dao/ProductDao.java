package com.projectcrud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.projectcrud.model.Product;

@Repository
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void createProduct(Product p) {
		hibernateTemplate.save(p);
	}

	public List<Product> getAll() {
		List<Product> loadAll = hibernateTemplate.loadAll(Product.class);
		return loadAll;
	}

	public Product getProduct(int id) {
		return hibernateTemplate.get(Product.class, id);
	}

	@Transactional
	public void deleteProduct(int id) {
		Product product = hibernateTemplate.get(Product.class, id);
		hibernateTemplate.delete(product);
	}
	
	@Transactional
	public void update(Product p) {
		hibernateTemplate.update(p);;
	}
}
