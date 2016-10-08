package com.gzpy.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.product.entity.Product;
import com.gzpy.product.service.ProductService;
import com.gzpy.project.entity.Project;
import com.gzpy.project.service.ProjectService;

@Controller
@RequestMapping("/product")
public class ProductController{

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProjectService projectService;

	@RequestMapping("/productCenter.do")
	public String toProductCenter(ModelMap map){
		
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);
		
		return "/product/product.jsp";
	}
	
	@RequestMapping("/productDetail.do")
	public String tpProductDetail(ModelMap map,String pid,String pn){
		
		Product productCurrent = null;
		
		if(pn != null){
			if("wgh".equals(pn)){
				productCurrent = productService.findProductByStatus("%网格化管理系统%", "N").get(0);
			} else if("zddw".equals(pn)){
				productCurrent = productService.findProductByStatus("%重点单位管理系统%", "N").get(0);
			} else if("96119".equals(pn)){
				productCurrent = productService.findProductByStatus("%96119投诉举报系统%", "N").get(0);
			} else {
				productCurrent = new Product();
			}
		} else {
			if(pid.length() == 36){
				productCurrent = productService.findProductById(pid);
			} else {
				productCurrent = new Product();
			}
		}
		
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);	
		map.addAttribute("productCurrent", productCurrent);
		
		return "/product/productDetail.jsp";
	}
}
