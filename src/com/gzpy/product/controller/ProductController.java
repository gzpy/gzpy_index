package com.gzpy.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.product.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController{

	@Autowired
	private ProductService productService;

	
}
