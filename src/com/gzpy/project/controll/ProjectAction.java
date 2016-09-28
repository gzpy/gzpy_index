package com.gzpy.project.controll;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.project.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectAction{
	@Resource
	private ProjectService projectService;
	
}
