package com.gzpy.remark.controll;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("/goRemark.do")
	public String goRemark(ModelMap map){
		List projectList = projectService.projectfindBydelstatus();
		map.addAttribute("projectList",projectList);
		return "remark/liuyan.jsp";
	}
	
	@RequestMapping("/saveRemark.do")
	public String SaveRemark(Remark remark,ModelMap map){
		List projectList = projectService.projectfindBydelstatus();
		map.addAttribute("projectList",projectList);
		remark.setRemarkId(GenerateGUID.getGuid());
		remark.setRemarkTime(new Date());
		remark.setDelStatus("N");
		remark.setStatus("N");
		remarkService.saveRemark(remark);
		return "remark/liuyan.jsp";
	}
}
