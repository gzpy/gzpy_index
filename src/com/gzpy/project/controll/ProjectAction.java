package com.gzpy.project.controll;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gzpy.project.entity.Project;
import com.gzpy.project.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectAction{
	@Resource
	ProjectService projectService;
	
	@RequestMapping("/goJJFA.do")
	public String goWGHJJ(String projectId,ModelMap map){
		Project project=projectService.findProjectById(projectId);
		map.addAttribute("project",project);
		List<Project> projectList=projectService.projectfindBydelstatus();
	    map.addAttribute("projectList",projectList);
		return "project/wanggehua_jiejue.jsp";
	}
	
	@RequestMapping("/goJJFAAll.do")
	public String goJJFAAll(ModelMap map){
		List<Project> projectList=projectService.projectfindBydelstatus();
		map.addAttribute("project",projectList);
		return "project/jiejue.jsp";
	}
}

