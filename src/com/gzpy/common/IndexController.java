package com.gzpy.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController{
	
	@RequestMapping("/toIndex")
	public String toIndex(){
		
		return "index.jsp";
	}
}