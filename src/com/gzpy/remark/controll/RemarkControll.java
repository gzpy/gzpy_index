package com.gzpy.remark.controll;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gzpy.product.entity.Product;
import com.gzpy.product.service.ProductService;
import com.gzpy.project.entity.Project;
import com.gzpy.project.service.ProjectService;
import com.gzpy.remark.entity.Remark;
import com.gzpy.remark.service.RemarkService;
import com.gzpy.util.GenerateGUID;

@Controller
@RequestMapping("/remark")
public class RemarkControll{
	@Resource
	RemarkService remarkService;
	
	@Resource
	ProjectService projectService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/Remark.do")
	public String goRemark(ModelMap map){
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);
		return "remark/liuyan.jsp";
	}
	
	@RequestMapping("/saveRemark.do")
	@ResponseBody
	public String SaveRemark(Remark remark,ModelMap map){
		List<Product> list_product = productService.findProductByStatus("%",
				"N");

		List<Project> projectList=projectService.projectfindBydelstatus();
		
	    map.addAttribute("projectList",projectList);
		map.addAttribute("list_product", list_product);;
		
		remark.setRemarkId(GenerateGUID.getGuid());
		remark.setRemarkTime(new Date());
		remark.setDelStatus("N");
		remark.setStatus("N");
		remarkService.saveRemark(remark);
		return "success";
	}
}
