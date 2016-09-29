package com.gzpy.news.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.gzpy.news.entity.News;

public interface NewsService {
	
	/**
	 * 按关键字查找文章，分页
	 * @param currentPage
	 * @param PageSize
	 * @param newsTitle
	 * @param delStatus
	 * @return
	 */
	public Page<News> findNewsBySearch(int currentPage,int pageSize,String nTitle,String dStatus);
	
	/**
	 * 按Id查找文章
	 * @param newsId
	 * @return
	 */
	public News findNewsById(String newsId);
	
	/**
	 * 按文章类型查找
	 * @param typeId
	 * @return
	 */
	public List<News> findNewsByType(String typeId);
	
	/**
	 * 按删除状态查找文章
	 * @param delStatus
	 * @return
	 */
	public List<News> findNewsByStatus(String delStatus,List<String> typeIds);
}
