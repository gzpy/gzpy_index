package com.gzpy.remark.controll;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzpy.remark.service.RemarkService;

@Controller
@RequestMapping("/remark")
public class RemarkControll{
	@Resource
	RemarkService remarkService;
	
}
