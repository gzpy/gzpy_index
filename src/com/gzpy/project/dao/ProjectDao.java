package com.gzpy.project.dao;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.gzpy.project.entity.Project;


public interface ProjectDao extends  JpaSpecificationExecutor<Project>,JpaRepository<Project, String>{
	public List findByDelStatusNotOrderByIssueDateDesc(String delStatus);
}
