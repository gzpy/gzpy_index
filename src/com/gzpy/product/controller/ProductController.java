package com.gzpy.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.product.entity.Product;
import com.gzpy.product.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController{

	@Autowired
	private ProductService productService;

	@RequestMapping("/toProductCenter.do")
	public String toProductCenter(ModelMap map){
		
		List<Product> list_product = productService.findProductByStatus("%", "N");
		
		map.addAttribute("list_product", list_product);
		
		return "/product/product.jsp";
	}
	
	@RequestMapping("/toProductDetail.do")
	public String tpProductDetail(ModelMap map,String productId,String productName){
		
		Product productCurrent = null;
		
		if(productName != null){
			if("wgh".equals(productName)){
				productCurrent = productService.findProductByStatus("%网格化管理系统%", "N").get(0);
			} else if("zddw".equals(productName)){
				productCurrent = productService.findProductByStatus("%重点单位管理系统%", "N").get(0);
			} else if("96119".equals(productName)){
				productCurrent = productService.findProductByStatus("%96119投诉举报系统%", "N").get(0);
			} else {
				productCurrent = new Product();
			}
		} else {
			if(productId.length() == 36){
				productCurrent = productService.findProductById(productId);
			} else {
				productCurrent = new Product();
			}
		}
		
		List<Product> list_product = productService.findProductByStatus("%", "N");
		
		map.addAttribute("list_product", list_product);	
		map.addAttribute("productCurrent", productCurrent);
		
		return "/product/productDetail.jsp";
	}
}
