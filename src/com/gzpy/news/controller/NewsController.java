package com.gzpy.news.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.news.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController{

	@Autowired
	private NewsService newsService;

	
}
