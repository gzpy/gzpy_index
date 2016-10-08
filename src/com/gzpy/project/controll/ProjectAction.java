package com.gzpy.project.controll;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gzpy.product.entity.Product;
import com.gzpy.product.service.ProductService;
import com.gzpy.project.entity.Project;
import com.gzpy.project.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectAction{
	@Resource
	ProjectService projectService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/JJFA.do")
	public String goWGHJJ(@RequestParam("pd") String projectId,ModelMap map){
		Project project=projectService.findProjectById(projectId);
		map.addAttribute("project",project);
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);
		return "project/wanggehua_jiejue.jsp";
	}
	
	@RequestMapping("/JJFAAll.do")
	public String goJJFAAll(ModelMap map){
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);
		return "project/jiejue.jsp";
	}
}

