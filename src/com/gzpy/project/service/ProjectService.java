package com.gzpy.project.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.gzpy.project.entity.Project;

public interface ProjectService {
	public List projectfindBydelstatus();
	public Project findProjectById(String projectId);
}
