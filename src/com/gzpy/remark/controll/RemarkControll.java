package com.gzpy.remark.controll;

import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gzpy.common.BaseController;
import com.gzpy.project.entity.Project;
import com.gzpy.remark.entity.Remark;
import com.gzpy.remark.service.RemarkService;

@Controller
public class RemarkControll extends BaseController{
	@Resource
	RemarkService remarkService;
	//添加留言
	@RequestMapping("/goRemarkAdd.do")
    public String goAddRemarkView(){
    	//return "remark/remarkManager.jsp";
		return null;
    }
	//留言管理
	/*
	@RequestMapping("/goRemarkManager1.do")
	public String remarkManager(String pageNum,String numPerPage,ModelMap map ){
		String currentPage;
		if("".equals(pageNum)||pageNum==null){
			currentPage="1";
		}else
			{
			 currentPage=pageNum;
			}
		if(numPerPage == null || "".equals(numPerPage)){
			numPerPage = "5";
		}
		int totalPage=remarkService.findRemark(Integer.parseInt(currentPage),Integer.parseInt(numPerPage)).getTotalPages();
		  long totalCount = remarkService.findRemark(
					Integer.parseInt(currentPage), Integer.parseInt(numPerPage)).getTotalElements();
		  List<Project> list=remarkService.findRemark(Integer.parseInt(currentPage), Integer.parseInt(numPerPage)).getContent();
		  map.addAttribute("remarklist",list);
		  map.addAttribute("totalPage",totalPage);
		  map.addAttribute("totalCount",totalCount);
		  map.addAttribute("numPerPage", numPerPage);
		  map.addAttribute("currentPage", currentPage);
		  return "remark/remarkManager.jsp";
	}*/
	//跳转编辑留言界面
	@RequestMapping("/goEditRemark.do")
    public String goEditRemarkView(String remarkId,ModelMap map){
		Remark remark=remarkService.findRemarkById(remarkId);
		map.addAttribute("remark",remark);
    	return "remark/editRemark.jsp";
    }
	
	@RequestMapping("/editRemark.do")
	public ModelAndView editProject(Remark remark,String remarktime,ModelMap map){
		Date remarkTime = Date.valueOf(remarktime); 
		remark.setRemarkTime(remarkTime);

		Remark r=remarkService.updateRemark(remark);
		if(r == null || "".equals(r)){
			return this.ajaxDoneError("修改失败,请重新修改！");
		} else {
			return this.ajaxDoneSuccess("修改成功", "dlg_page1", "closeCurrent");
		}
	}
	
	//delstatsu
	@RequestMapping("/goRemarkManager.do")
	public String remarkManager(String pageNum,String numPerPage,ModelMap map ){
		String currentPage;
		if("".equals(pageNum)||pageNum==null){
			currentPage="1";
		}else
			{
			 currentPage=pageNum;
			}
		if(numPerPage == null || "".equals(numPerPage)){
			numPerPage = "5";
		}
		int totalPage=remarkService.findRemarkByDelStatus(Integer.parseInt(currentPage),Integer.parseInt(numPerPage)).getTotalPages();
		  long totalCount = remarkService.findRemarkByDelStatus(
					Integer.parseInt(currentPage), Integer.parseInt(numPerPage)).getTotalElements();
		  List<Project> list=remarkService.findRemarkByDelStatus(Integer.parseInt(currentPage), Integer.parseInt(numPerPage)).getContent();
		  map.addAttribute("remarklist",list);
		  map.addAttribute("totalPage",totalPage);
		  map.addAttribute("totalCount",totalCount);
		  map.addAttribute("numPerPage", numPerPage);
		  map.addAttribute("currentPage", currentPage);
		  return "remark/remarkManager.jsp";
	}
}