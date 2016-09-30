package com.gzpy.news.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.news.entity.News;
import com.gzpy.news.service.NewsService;
import com.gzpy.news.service.NewsTypeService;
import com.gzpy.product.entity.Product;
import com.gzpy.product.service.ProductService;
import com.gzpy.project.entity.Project;
import com.gzpy.project.service.ProjectService;

@Controller
@RequestMapping("/pinyun")
public class PyController {

	@Autowired
	private NewsService newsService;

	@Autowired
	private NewsTypeService newsTypeService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping("/toAboutPinyun.do")
	public String toAboutPinyun(ModelMap map) {

		List<News> list_news1 = newsService.findNewsByType(newsTypeService
				.findNewsTypeByName("关于品韵").getTypeId());
		List<News> list_news2 = newsService.findNewsByType(newsTypeService
				.findNewsTypeByName("公司资质").getTypeId());
		List<News> list_news3 = newsService.findNewsByType(newsTypeService
				.findNewsTypeByName("公司荣誉").getTypeId());
		
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);
		map.addAttribute("list_news1", list_news1);
		map.addAttribute("list_news2", list_news2);
		map.addAttribute("list_news3", list_news3);
		
		return "/pinyun/pinyun.jsp";
	}
	
	@RequestMapping("/toAbout.do")
	public String toAbout(String typeName,ModelMap map){
		
		List<News> list_news;
		if("gszz".equals(typeName)){
			list_news = newsService.findNewsByType(newsTypeService
					.findNewsTypeByName("公司资质").getTypeId());
		} else if("gsry".equals(typeName)){
			list_news = newsService.findNewsByType(newsTypeService
					.findNewsTypeByName("公司荣誉").getTypeId());
		} else {
			list_news = new ArrayList<News>();
		}
		
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);
		map.addAttribute("list_news", list_news);
		
		return "/pinyun/about.jsp";
	}
	
	@RequestMapping("/toConnection.do")
	public String toConnection(ModelMap map){
		
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);
		return "/pinyun/connection.jsp";
		
	}
	
}
