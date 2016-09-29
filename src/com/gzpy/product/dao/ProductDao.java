package com.gzpy.product.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.gzpy.product.entity.Product;

public interface ProductDao extends JpaSpecificationExecutor<Product>,JpaRepository<Product, String> {
	
	public List<Product> findProductByStatus(String pTitle,String delStatus);
}
