package com.gzpy.project.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import com.gzpy.project.dao.ProjectDao;
import com.gzpy.project.entity.Project;
import com.gzpy.project.service.ProjectService;
import com.gzpy.remark.entity.Remark;



@Service("projectService")
@Transactional
public class ProjectServiceImpl implements ProjectService {
    @Resource
	ProjectDao projectDao;

    //按日期降序查詢未刪除狀態的項目
	public List projectfindBydelstatus(){
		return projectDao.findByDelStatusNotOrderByIssueDateDesc("Y");
	}
	// 通过id查询项目
	public Project findProjectById(String projectId) {
		return projectDao.findOne(projectId);
	}
	
}
