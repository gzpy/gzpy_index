package com.gzpy.news.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.gzpy.news.entity.News;

public interface NewsDao extends JpaSpecificationExecutor<News>,JpaRepository<News, String>{
	
	/**
	 * 按类型查找文章
	 * @param typeId
	 * @return
	 */
	public List<News> findNewsByType(String typeId);
	
	/**
	 * 按删除状态查找文章
	 * @return
	 */
	public List<News> findNewsByStatus(String delStatus,List<String> typeIds);
}
