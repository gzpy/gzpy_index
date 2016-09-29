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

@Controller
@RequestMapping("/news")
public class NewsController {

	@Autowired
	private NewsService newsService;

	@Autowired
	private NewsTypeService newsTypeService;

	@Autowired
	private ProductService productService;

	@RequestMapping("/toNewsCenter.do")
	public String toNewsCenter(ModelMap map) {

		List<Product> list_product = productService.findProductByStatus("%",
				"N");
		News news_gs = newsService.findNewsByType(
				newsTypeService.findNewsTypeByName("公司新闻").getTypeId()).get(0);
		News news_hy = newsService.findNewsByType(
				newsTypeService.findNewsTypeByName("行业动态").getTypeId()).get(0);

		map.addAttribute("list_product", list_product);
		map.addAttribute("news_gs", news_gs);
		map.addAttribute("news_hy", news_hy);

		return "news/news.jsp";
	}

	@RequestMapping("/toNews.do")
	public String toNews(ModelMap map, String type) {

		List<Product> list_product = productService.findProductByStatus("%",
				"N");
		List<News> list_news;
		String newsType = null;

		if ("gs".equals(type)) {
			list_news = newsService.findNewsByType(newsTypeService
					.findNewsTypeByName("公司新闻").getTypeId());
			newsType = "公司新闻";
		} else if ("hy".equals(type)) {
			list_news = newsService.findNewsByType(newsTypeService
					.findNewsTypeByName("行业动态").getTypeId());
			newsType = "行业动态";
		} else {
			list_news = new ArrayList<News>();
		}

		map.addAttribute("list_product", list_product);
		map.addAttribute("list_news", list_news);
		map.addAttribute("newsType", newsType);

		return "news/newsType.jsp";
	}

	@RequestMapping("/toNewsDetail.do")
	public String toNewsDetail(String newsId, ModelMap map) {

		News news;

		if (newsId != null && newsId.length() == 36) {
			news = newsService.findNewsById(newsId);
			if(news != null){
				news.setTypeName(newsTypeService.findNewsTypeById(news.getTypeId())
					.getTypeName());
			}
		} else {
			news = new News();
		}

		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		map.addAttribute("list_product", list_product);
		map.addAttribute("news", news);

		return "news/newsDetail.jsp";
	}
}
