package com.gzpy.common;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.advert.entity.Ad;
import com.gzpy.advert.service.AdService;
import com.gzpy.news.entity.News;
import com.gzpy.news.service.NewsService;
import com.gzpy.news.service.NewsTypeService;
import com.gzpy.product.entity.Product;
import com.gzpy.product.service.ProductService;
import com.gzpy.project.entity.Project;
import com.gzpy.project.service.ProjectService;

@Controller
public class IndexController {

	@Autowired
	private ProductService productService;

	@Autowired
	private NewsService newsService;

	@Autowired
	private NewsTypeService newsTypeService;
	
	@Autowired 
	private AdService adService;
	
	@Resource
	ProjectService projectService;

	@RequestMapping("/index.do")
	public String toIndex(ModelMap map) {
		List<Project> projectList=projectService.projectfindBydelstatus();
	    map.addAttribute("projectList",projectList);
	    
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<String> typeIds = new ArrayList<String>();

		if (newsTypeService.findNewsTypeByName("公司新闻") != null) {
			typeIds.add(newsTypeService.findNewsTypeByName("公司新闻").getTypeId());
		}
		if (newsTypeService.findNewsTypeByName("行业动态") != null) {
			typeIds.add(newsTypeService.findNewsTypeByName("行业动态").getTypeId());
		}
		
		List<News> list_newsAll = newsService.findNewsByStatus("N",
				typeIds);
		
		List<News> list_news = new ArrayList<News>();
		if(list_newsAll.size() > 5){
			for(int i = 0; i < 5; i++){
				list_news.add(list_newsAll.get(i));
			}
		} else {
			for(News news : list_newsAll){
				list_news.add(news);
			}
		}

		for (News news : list_news) {
			news.setTypeName(newsTypeService.findNewsTypeById(news.getTypeId())
					.getTypeName());
			if(news.getNewsTitle().length() > 9){
				news.setShortTitle(news.getNewsTitle().substring(0,9));			
			} else {
				news.setShortTitle(news.getNewsTitle());
			}
		}
		
		List<Ad> list_ad=adService.findAdShowIndex();
		
		map.addAttribute("list_ad", list_ad);
		map.addAttribute("list_product", list_product);
		map.addAttribute("list_news", list_news);

		return "index.jsp";
	}
}
