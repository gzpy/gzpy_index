package com.gzpy.product.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.gzpy.product.entity.Product;

public interface ProductService {
	
	/**
	 * 根据关键字检索产品  ，分页
	 * @param currentPage
	 * @param pageSize
	 * @param productName
	 * @param delStatus
	 * @return
	 */
	public Page<Product> findProductBySearch(int currentPage,int pageSize,String pTitle,String dStatus);
	
	/**
	 * 根据关键字检索产品，不分页
	 */
	public List<Product> findProductByStatus(String pTilte,String delStatus);
	
	/**
	 * 按ID查找产品
	 * @param productId
	 * @return
	 */
	public Product findProductById(String productId);
	
}
