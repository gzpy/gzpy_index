package com.gzpy.project.dao.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Qualifier;

import com.gzpy.project.entity.Project;

public class ProjectDaoImpl {
	
	@Resource
	private EntityManager em;
    
	
}

