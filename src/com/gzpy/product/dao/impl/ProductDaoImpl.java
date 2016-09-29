package com.gzpy.product.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;

import com.gzpy.product.entity.Product;

public class ProductDaoImpl {
	
	@Autowired
	private EntityManager em;
	
	public List<Product> findProductByStatus(String pTitle,String delStatus){
		
		StringBuffer sb = new StringBuffer();
		sb.append("select p from Product p where ")
		.append("p.productTitle like :pTitle ")
		.append("and p.delStatus = :delStatus");
		
		Query query = em.createQuery(sb.toString());
		query.setParameter("pTitle", pTitle).setParameter("delStatus", delStatus);
		
		return query.getResultList();
	}
}
