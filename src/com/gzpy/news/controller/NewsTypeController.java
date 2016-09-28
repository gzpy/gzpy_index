package com.gzpy.news.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.news.service.NewsService;
import com.gzpy.news.service.NewsTypeService;

@Controller
@RequestMapping("/newsType")
public class NewsTypeController {

	@Autowired
	private NewsTypeService newsTypeService;

	@Autowired
	private NewsService newsService;

}
